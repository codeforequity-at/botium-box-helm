##k8s
 * call `make` to generate kubernetes files from using the helm chart per value file
 * for each value file there will be a generated/xxx directory with placeholders
 * replace placeholders in a dir
 * deploy it `kubectl apply -R -f generated/xxx`
 * undeploy it `kubectl delete -R -f generated/xxx` 
