
update:
	helm dependency update botium-box-premium

package:
	rm -f botium-box-premium-*
	helm package botium-box-premium
	helm repo index . --url https://github.com/codeforequity-at/botium-box-helm/raw/master/

publish:
	git add .
	git commit -a -m "publish"
	git push    
