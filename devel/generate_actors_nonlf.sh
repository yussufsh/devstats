#!/bin/bash
# Run inside 'devstats' image pod shell:
if ( [ -z "${PG_PASS}" ] || [ -z "${PG_HOS}T" ] )
then
  echo "$0: you need to set PG_HOST=... and PG_PASS=... to run this script"
  exit 1
fi
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA gha < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA prometheus < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA opentracing < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA fluentd < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA linkerd < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA grpc < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA coredns < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA containerd < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA rkt < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cni < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA envoy < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA jaeger < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA notary < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA tuf < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA rook < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA vitess < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA nats < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA opa < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA spiffe < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA spire < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cloudevents < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA telepresence < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA helm < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA harbor < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openmetrics < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA etcd < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA tikv < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cortex < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA buildpacks < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA falco < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA dragonfly < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA virtualkubelet < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubeedge < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA brigade < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA crio < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA networkservicemesh < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openebs < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA opentelemetry < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA thanos < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA flux < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA intoto < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA strimzi < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubevirt < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA longhorn < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA chubaofs < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA keda < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA smi < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA argo < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA volcano < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cnigenie < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA keptn < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kudo < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cloudcustodian < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA dex < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA litmuschaos < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA artifacthub < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kuma < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA parsec < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA bfe < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA crossplane < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA contour < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA operatorframework < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA chaosmesh < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA serverlessworkflow < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA k3s < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA backstage < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA tremor < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA metal3 < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA porter < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openyurt < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openservicemesh < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA keylime < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA schemahero < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cdk8s < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA certmanager < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openkruise < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA tinkerbell < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA pravega < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kyverno < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA gitopswg < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA piraeus < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA k8dash < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA athenz < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubeovn < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA curiefense < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA distribution < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA ingraind < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kuberhealthy < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA k8gb < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA trickster < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA emissaryingress < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA wasmedge < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA chaosblade < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA vineyard < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA antrea < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA fluid < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA submariner < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA pixie < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA meshery < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA servicemeshperformance < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubevela < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubevip < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubedl < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA krustlet < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA krator < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA oras < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA wasmcloud < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA akri < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA metallb < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA karmada < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA inclavarecontainers < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA superedge < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cilium < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA dapr < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openelb < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openclustermanagement < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA vscodek8stools < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA nocalhost < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubearmor < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA k8up < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubers < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA devfile < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA knative < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA fabedge < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA confidentialcontainers < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openfunction < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA teller < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA sealer < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA clusterpedia < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA opencost < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA aerakimesh < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA curve < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openfeature < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubewarden < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA devstream < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA hexapolicyorchestrator < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA konveyor < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA armada < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA externalsecretsoperator < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA serverlessdevs < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA containerssh < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openfga < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kured < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA carvel < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA lima < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA istio < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA merbridge < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA devspace < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA capsule < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA zot < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA paralus < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA carina < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA ko < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA opcr < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA werf < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubescape < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA inspektorgadget < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA clusternet < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA keycloak < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA sops < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA headlamp < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA slimtoolkit < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kepler < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA pipecd < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA eraser < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA xline < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA hwameistor < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kpt < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA microcks < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubeclipper < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA kubeflow < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cncf < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA allprj < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA spinnaker < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA tekton < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA jenkins < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA jenkinsx < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cdevents < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA ortelius < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA pyrsia < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA screwdrivercd < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA shipwright < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA allcdf < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA graphql < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA graphqljs < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA graphiql < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA expressgraphql < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA graphqlspec < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA sam < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA azf < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA riff < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA fn < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openwhisk < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA openfaas < ./util_sql/actors.sql
PGPASSWORD="${PG_PASS}" psql -h "${PG_HOST}" -U gha_admin -tA cii < ./util_sql/actors.sql
