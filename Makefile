
update:
	helm dependency update botium-box-premium-all
	helm dependency update botium-box-premium-all-advanced
	helm dependency update botium-box-premium-ingress
	helm dependency update botium-box-premium-storage
	helm dependency update botium-box-premium-backup
	helm dependency update botium-box-prisma
	helm dependency update botium-box-prisma-rds-test
	helm dependency update botium-box-prisma-nodb
	helm dependency update botium-box-ce
	helm dependency update botium-box-ce-storage
	helm dependency update botium-box-standalone
	helm dependency update botium-box-mini
	helm dependency update botium-efs-provisioner
	helm dependency update botium-coach-worker
	helm dependency update ingress-nginx
	helm dependency update redis-shared
	helm dependency update zap-shared
	helm dependency update botium-wildcard-ingress

package:
	rm -f botium-box-ce-*.tgz botium-box-premium-*.tgz botium-box-prisma-*.tgz botium-box-mini-*.tgz botium-box-standalone-*.tgz botium-coach-worker-*.tgz botium-efs-provisioner-*.tgz botium-wildcard-ingress-*.tgz ingress-nginx-*.tgz redis-shared-*.tgz zap-shared-*.tgz
	helm package botium-box-premium-all
	helm package botium-box-premium-all-advanced
	helm package botium-box-premium-ingress
	helm package botium-box-premium-storage
	helm package botium-box-premium-backup
	helm package botium-box-prisma
	helm package botium-box-prisma-rds-test
	helm package botium-box-ce
	helm package botium-box-ce-storage
	helm package botium-box-standalone
	helm package botium-box-mini
	helm package botium-box-prisma-nodb
	helm package botium-efs-provisioner
	helm package botium-coach-worker
	helm package ingress-nginx
	helm package redis-shared
	helm package zap-shared
	helm package botium-wildcard-ingress
	helm repo index . --url https://github.com/codeforequity-at/botium-box-helm/raw/master/

publish:
	git add .
	git commit -a -m "publish"
	git push
