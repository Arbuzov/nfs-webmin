{{/*
Common helm helper templates
*/}}
{{- define "nfs-webmin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nfs-webmin.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
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
