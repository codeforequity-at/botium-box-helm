# generate kubernetes workloads for all environment like picotts
generate:
	rm -rf generated
	mkdir generated

	mkdir generated/picotts
	helm template --output-dir generated/picotts -f ./picotts.yaml botium-speech-processing ../

	mkdir generated/default
	helm template --output-dir generated/default -f ./default.yaml botium-speech-processing ../

	mkdir generated/google
	helm template --output-dir generated/google -f ./google.yaml botium-speech-processing ../


# deploy: kubectl apply -R -f generated/picotts
# undeploy: kubectl delete -R -f generated/picotts
