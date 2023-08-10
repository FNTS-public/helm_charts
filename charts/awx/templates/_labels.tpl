{{- define "helm.labels.standard" -}}
app.kubernetes.io/name: {{ include "helm.fullname" . | trunc 63 }}
app: {{ include "helm.fullname" . | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "helm.labels.selector" -}}
app.kubernetes.io/name: {{ include "helm.fullname" . | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "helm.labels.custom" -}}
{{- range $key, $value := .Values.deployment.labels }}
{{ $key }}: {{ $value | quote }}
{{- end -}}
{{- end -}}