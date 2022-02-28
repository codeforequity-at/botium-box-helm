template:
	helm template --debug botium-box-advanced botium-box-advanced --set ENABLE_BACKEND_PROCESSING=true

update:
	helm dependency update botium-box-advanced
	helm dependency update botium-box-prisma
	helm dependency update botium-box-prisma-nodb
	helm dependency update botium-box-standalone-v3
	helm dependency update botium-efs-provisioner
	helm dependency update botium-coach-worker
	helm dependency update ingress-nginx
	helm dependency update botium-box-redis
	helm dependency update botium-box-zap
	helm dependency update botium-wildcard-ingress
	helm dependency update botium-speech-processing

index:
	helm repo index . --url https://github.com/codeforequity-at/botium-box-helm/raw/master/

package_all:
	#rm -f botium-box-advanced-*.tgz botium-box-prisma-*.tgz botium-box-mini-*.tgz botium-box-standalone-*.tgz botium-coach-worker-*.tgz botium-efs-provisioner-*.tgz botium-wildcard-ingress-*.tgz ingress-nginx-*.tgz botium-box-redis-*.tgz botium-box-zap-*.tgz botium-speech-processing-*.tgz
	helm package botium-box-advanced
	helm package botium-box-prisma
	helm package botium-box-standalone-v3
	helm package botium-box-prisma-nodb
	helm package botium-efs-provisioner
	helm package botium-coach-worker
	helm package ingress-nginx
	helm package botium-box-redis
	helm package botium-box-zap
	helm package botium-wildcard-ingress
	helm package botium-speech-processing

package_all_dev:
	rm -f *-dev*.tgz
	#helm package --version 0.0.0-dev007 botium-box-advanced
	#helm package --version 0.0.0-dev004 botium-box-redis
	#helm package --version 0.0.0-dev002 botium-box-standalone-v3
	#helm package --version 0.0.0-dev002 botium-box-prisma
	helm package --version 0.0.0-dev002 botium-speech-processing

package: package_all index

package_dev: package_all_dev index

publish:
	git add .
	git commit -a -m "publish"
	git push
