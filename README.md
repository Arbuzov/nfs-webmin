# nfs-webmin

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

NFS Server + Webmin (admin UI)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nfs.hostDataPath | string | `"/mnt/nfs-test"` |  |
| nfs.image | string | `"itsthenetwork/nfs-server-alpine:latest"` |  |
| nfs.sharedDirectory | string | `"/data"` |  |
| resources | object | `{}` |  |
| webmin.image | string | `"sameersbn/webmin:latest"` |  |
| webmin.rootPassword | string | `"secret"` |  |

