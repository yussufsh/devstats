#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: requires project name parameter"
  exit 1
fi
declare -A icontypes
icontypes=( 
  ["kubernetes"]="color"
  ["prometheus"]="color"
  ["opentracing"]="color"
  ["fluentd"]="color"
  ["linkerd"]="color"
  ["grpc"]="white"
  ["coredns"]="color"
  ["containerd"]="white"
  ["rkt"]="color"
  ["cni"]="color"
  ["envoy"]="color"
  ["jaeger"]="reverse-color"
  ["notary"]="white"
  ["tuf"]="white"
  ["rook"]="color"
  ["vitess"]="color"
  ["nats"]="color"
  ["opa"]="color"
  ["spiffe"]="color"
  ["spire"]="color"
  ["cncf"]="color"
  ["cloudevents"]="color"
  ["telepresence"]="color"
  ["helm"]="white"
  ["openmetrics"]="color"
  ["harbor"]="color"
  ["etcd"]="color"
  ["tikv"]="color"
  ["cortex"]="color"
  ["buildpacks"]="color"
  ["falco"]="color"
  ["dragonfly"]="color"
  ["virtualkubelet"]="color"
  ["kubeedge"]="color"
  ["brigade"]="color"
  ["sam"]="color"
  ["azf"]="color"
  ["riff"]="color"
  ["fn"]="color"
  ["openwhisk"]="color"
  ["openfaas"]="color"
  ["cii"]="color"
  ["prestodb"]="color"
  ["godotengine"]="color"
  ["spinnaker"]="color"
  ["crio"]="color"
  ["networkservicemesh"]="color"
  ["openebs"]="color"
  ["opentelemetry"]="color"
  ["thanos"]="color"
  ["flux"]="color"
  ["intoto"]="color"
  ["strimzi"]="color"
  ["kubevirt"]="color"
  ["longhorn"]="color"
  ["chubaofs"]="color"
  ["keda"]="color"
  ["smi"]="color"
  ["argo"]="color"
  ["volcano"]="color"
  ["cnigenie"]="color"
  ["keptn"]="color"
  ["kudo"]="color"
  ["cloudcustodian"]="color"
  ["dex"]="color"
  ["litmuschaos"]="color"
  ["artifacthub"]="color"
  ["kuma"]="white"
  ["parsec"]="color"
  ["bfe"]="color"
  ["crossplane"]="color"
  ["contour"]="color"
  ["operatorframework"]="color"
  ["chaosmesh"]="color"
  ["serverlessworkflow"]="color"
  ["k3s"]="color"
  ["backstage"]="color"
  ["tremor"]="color"
  ["metal3"]="color"
  ["porter"]="color"
  ["openyurt"]="color"
  ["openservicemesh"]="color"
  ["keylime"]="color"
  ["schemahero"]="color"
  ["cdk8s"]="color"
  ["certmanager"]="color"
  ["openkruise"]="color"
  ["tinkerbell"]="color-light"
  ["pravega"]="color"
  ["kyverno"]="color"
  ["gitopswg"]="color"
  ["piraeus"]="color"
  ["k8dash"]="color"
  ["athenz"]="color"
  ["kubeovn"]="color"
  ["curiefense"]="color"
  ["distribution"]="color"
  ["ingraind"]="color"
  ["kuberhealthy"]="color"
  ["k8gb"]="color"
  ["trickster"]="color"
  ["emissaryingress"]="color"
  ["wasmedge"]="color"
  ["chaosblade"]="color"
  ["vineyard"]="color"
  ["antrea"]="color"
  ["fluid"]="color"
  ["submariner"]="color"
  ["pixie"]="color"
  ["meshery"]="color"
  ["servicemeshperformance"]="color"
  ["kubevela"]="white"
  ["kubevip"]="color"
  ["kubedl"]="color"
  ["krustlet"]="color"
  ["krator"]="color"
  ["oras"]="color"
  ["wasmcloud"]="color"
  ["akri"]="light"
  ["metallb"]="color"
  ["karmada"]="color"
  ["inclavarecontainers"]="color"
  ["superedge"]="color"
  ["cilium"]="color"
  ["dapr"]="color"
  ["openelb"]="color"
  ["openclustermanagement"]="color"
  ["vscodek8stools"]="color"
  ["nocalhost"]="color"
  ["kubearmor"]="color"
  ["k8up"]="color"
  ["kubers"]="white"
  ["devfile"]="color"
  ["knative"]="color"
  ["fabedge"]="color"
  ["confidentialcontainers"]="color"
  ["openfunction"]="color"
  ["teller"]="color"
  ["sealer"]="color"
  ["clusterpedia"]="color"
  ["opencost"]="color"
  ["aerakimesh"]="light"
  ["curve"]="color"
  ["openfeature"]="white"
  ["kubewarden"]="color"
  ["devstream"]="color"
  ["hexapolicyorchestrator"]="color"
  ["konveyor"]="color"
  ["armada"]="color"
  ["externalsecretsoperator"]="color"
  ["serverlessdevs"]="color"
  ["containerssh"]="color"
  ["openfga"]="color"
  ["kured"]="color"
  ["carvel"]="color"
  ["lima"]="color"
  ["istio"]="color"
  ["merbridge"]="color"
  ["devspace"]="color"
  ["capsule"]="color"
  ["zot"]="color"
  ["paralus"]="color"
  ["carina"]="color"
  ["ko"]="color"
  ["opcr"]="color"
  ["werf"]="color"
  ["kubescape"]="color"
  ["inspektorgadget"]="color"
  ["clusternet"]="color"
  ["keycloak"]="color"
  ["tekton"]="color"
  ["jenkins"]="color"
  ["jenkinsx"]="color"
  ["cdevents"]="color"
  ["ortelius"]="color"
  ["pyrsia"]="color"
  ["screwdrivercd"]="color"
  ["shipwright"]="color"
  ["linux"]="color"
  ["all"]="color"
  ["devstats"]="color"
  ["cdf"]="color"
  ["contrib"]="color"
  ["allcdf"]="color"
)
icontype=${icontypes[$1]}
if [ -z "$icontype" ]
then
  echo "$0: project $1 is not defined"
  exit 1
fi
echo $icontype
