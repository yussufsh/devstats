with issues as (
  select distinct i.id as issue_id,
    pr.id as pr_id,
    pr.event_id as event_id,
    i.dup_repo_name,
    i.dup_repo_id
  from
    gha_issues_pull_requests ipr,
    gha_pull_requests pr,
    gha_issues i
  where
    i.is_pull_request = true
    and i.id = ipr.issue_id
    and ipr.pull_request_id = pr.id
    and i.number = pr.number
    and i.dup_repo_id = pr.dup_repo_id
    and i.dup_repo_name = pr.dup_repo_name
    and i.created_at >= '{{from}}'
    and i.created_at < '{{to}}'
    and (pr.merged_at is null or pr.merged_at >= '{{to}}')
    and (pr.closed_at is null or pr.closed_at >= '{{to}}')
    and (i.closed_at is null or i.closed_at >= '{{to}}')
), issues_labels as (
  select 'All' as repo,
    round(count(distinct i.pr_id) / {{n}}, 2) as all_prs,
    round(count(distinct i.pr_id) filter (where il.dup_label_name = 'needs-ok-to-test') / {{n}}, 2) as needs_ok_to_test,
    round(count(distinct i.pr_id) filter (where il.dup_label_name = 'release-note-label-needed') / {{n}}, 2) as release_note_label_needed,
    round(count(distinct i.pr_id) filter (where il.dup_label_name = 'lgtm') / {{n}}, 2) as lgtm,
    round(count(distinct i.pr_id) filter (where il.dup_label_name = 'approved') / {{n}}, 2) as approved,
    round(count(distinct i.pr_id) filter (where il.dup_label_name like 'do-not-merge%') / {{n}}, 2) as do_not_merge
  from
    issues i
  left join
    gha_issues_labels il
  on
    il.issue_id = i.issue_id
    and il.dup_created_at >= '{{from}}'
    and il.dup_created_at < '{{to}}'
    and (
      il.dup_label_name in (
        'needs-ok-to-test', 'release-note-label-needed', 'lgtm', 'approved'
      )
      or il.dup_label_name like 'do-not-merge%'
    )
  union select sub.repo,
    round(count(distinct sub.pr_id) / {{n}}, 2) as all_prs,
    round(count(distinct sub.pr_id) filter (where sub.dup_label_name = 'needs-ok-to-test') / {{n}}, 2) as needs_ok_to_test,
    round(count(distinct sub.pr_id) filter (where sub.dup_label_name = 'release-note-label-needed') / {{n}}, 2) as release_note_label_needed,
    round(count(distinct sub.pr_id) filter (where sub.dup_label_name = 'lgtm') / {{n}}, 2) as lgtm,
    round(count(distinct sub.pr_id) filter (where sub.dup_label_name = 'approved') / {{n}}, 2) as approved,
    round(count(distinct sub.pr_id) filter (where sub.dup_label_name like 'do-not-merge%') / {{n}}, 2) as do_not_merge
  from (
    select i.dup_repo_name as repo,
      i.pr_id,
      il.dup_label_name
    from
      issues i
    left join
      gha_issues_labels il
    on
      il.issue_id = i.issue_id
      and il.dup_created_at >= '{{from}}'
      and il.dup_created_at < '{{to}}'
      and (
        il.dup_label_name in (
          'needs-ok-to-test', 'release-note-label-needed', 'lgtm', 'approved'
        )
        or il.dup_label_name like 'do-not-merge%'
      )
      and i.dup_repo_name in (select repo_name from trepos)
    ) sub
  group by
    sub.repo
)
select
  'preprblck;' || repo ||';all,needs_ok_to_test,release_note_label_needed,no_lgtm,no_approve,do_not_merge' as name,
  all_prs,
  needs_ok_to_test,
  release_note_label_needed,
  all_prs - lgtm as no_lgtm,
  all_prs - approved as no_approve,
  do_not_merge
from
  issues_labels
order by
  all_prs desc,
  name asc
;
