##k8s
 * call `make` to generate kubernetes files from using the helm chart per value file
 * for each value file there will be a generated/xxx directory
 * the directory can be deployed for example with `kubectl apply -R -f generated/picotts`
 * and undeployed for example with `kubectl delete -R -f generated/picotts` 
