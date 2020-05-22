
update:
	helm dependency update botium-box-premium-all
	helm dependency update botium-box-premium-ingress
	helm dependency update botium-box-premium-storage
	helm dependency update botium-box-premium-backup
	helm dependency update botium-box-prisma
	helm dependency update botium-box-ce
	helm dependency update botium-box-ce-storage
	helm dependency update botium-box-standalone
	helm dependency update botium-efs-provisioner
	helm dependency update botium-ingress-nginx

package:
	rm -f botium-box-ce-*.tgz botium-box-premium-*.tgz botium-box-prisma-*.tgz botium-box-standalone-*.tgz
	helm package botium-box-premium-all
	helm package botium-box-premium-ingress
	helm package botium-box-premium-storage
	helm package botium-box-premium-backup
	helm package botium-box-prisma
	helm package botium-box-ce
	helm package botium-box-ce-storage
	helm package botium-box-standalone
	helm package botium-efs-provisioner
	helm package botium-ingress-nginx
	helm repo index . --url https://github.com/codeforequity-at/botium-box-helm/raw/master/

publish:
	git add .
	git commit -a -m "publish"
	git push
