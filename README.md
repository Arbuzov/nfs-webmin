# nfs-webmin

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/nfs-webmin)](https://artifacthub.io/packages/search?repo=nfs-webmin)

NFS Server + Webmin (admin UI)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nfs.hostDataPath | string | `"/mnt/nfs-test"` |  |
| nfs.image | string | `"itsthenetwork/nfs-server-alpine:latest"` |  |
| nfs.sharedDirectory | string | `"/data"` |  |
| resources | object | `{}` |  |
| nodeSelector | object | `{}` | Node selector labels |
| webmin.image | string | `"sameersbn/webmin:latest"` |  |
| webmin.rootPassword | string | `"secret"` |  |

