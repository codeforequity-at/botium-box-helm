# generate kubernetes workloads for all environment like picotts
generate:
	rm -rf generated
	mkdir generated

	mkdir generated/picotts
	helm template --output-dir generated/picotts -f ./picotts.yaml botium-speech-processing ../
	mv generated/picotts/botium-speech-processing/templates/* generated/picotts/
	rm -rf generated/picotts/botium-speech-processing

	mkdir generated/default
	helm template --output-dir generated/default -f ./default.yaml botium-speech-processing ../
	mv generated/default/botium-speech-processing/templates/* generated/default/
	rm -rf generated/default/botium-speech-processing

	mkdir generated/google
	helm template --output-dir generated/google -f ./google.yaml botium-speech-processing ../
	mv generated/google/botium-speech-processing/templates/* generated/google/
	rm -rf generated/google/botium-speech-processing
