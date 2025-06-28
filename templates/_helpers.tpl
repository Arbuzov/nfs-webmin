{{/*
Common helm helper templates
*/}}
{{- define "nfs-webmin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- /*
"nfs-webmin.fullname" helper
Accepts an optional suffix argument.
Usage: {{ include "nfs-webmin.fullname" (dict "context" . "suffix" "-nfs") }}
*/ -}}
{{- define "nfs-webmin.fullname" -}}
{{- $ctx := .context | default . -}}
{{- $suffix := .suffix | default "" -}}
{{- if $ctx.Values.fullnameOverride -}}
{{- printf "%s%s" $ctx.Values.fullnameOverride $suffix | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default $ctx.Chart.Name $ctx.Values.nameOverride -}}
{{- printf "%s-%s%s" $ctx.Release.Name $name $suffix | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "nfs-webmin.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" -}}
{{- end -}}

{{- define "nfs-webmin.labels" -}}
helm.sh/chart: {{ include "nfs-webmin.chart" . }}
{{ include "nfs-webmin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "nfs-webmin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nfs-webmin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
