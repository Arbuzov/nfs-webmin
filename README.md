# nfs-webmin

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/nfs-webmin)](https://artifacthub.io/packages/search?repo=nfs-webmin)

NFS Server + Webmin (admin UI)

This chart generates resource names and labels dynamically using the Helm release
name. Labels follow the `app.kubernetes.io/*` conventions similar to Bitnami
charts.

### Migration from 0.1.x

Version 0.2.0 separates image repository and tag values. If you previously
specified an image with a tag, split it into `image` and `tag` fields in your
values file:

```yaml
nfs:
  image: itsthenetwork/nfs-server-alpine
  tag: your-tag
webmin:
  image: sameersbn/webmin
  tag: your-tag
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nfs.enabled | bool | `true` | Enable NFS container |
| nfs.hostDataPath | string | `"/mnt/nfs-test"` |  |
| nfs.image | string | `"jgrojasx/webmin"` |  |
| nfs.tag | string | `"latest"` |  |
| nfs.sharedDirectory | string | `"/data"` |  |
| webmin.enabled | bool | `true` | Enable Webmin container |
| webmin.image | string | `"rook/nfs"` |  |
| webmin.tag | string | `"v1.7.3-4.gf94ea44"` |  |
| webmin.rootPassword | string | `"secret"` |  |
| resources | object | `{}` |  |
| nodeSelector | object | `{}` | Node selector labels |

