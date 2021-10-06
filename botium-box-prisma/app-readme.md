# Botium Box Prisma

## dry-run

helm install --set ENABLE_S3_BACKUP=true,MYSQL_PASSWORD=asdf,FQDN=sepp -f values.yaml --dry-run --debug bbp .
