{{- define "helm.labels.standard" -}}
app.kubernetes.io/name: {{ include "helm.fullname" . | trunc 63 }}
cloud.fnts.com/target: {{ .Values.targetCloud | default "IBM" | trunc 63 }}
app: {{ include "helm.fullname" . | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "helm.labels.selector" -}}
app.kubernetes.io/name: {{ include "helm.fullname" . | trunc 63 | trimSuffix "-" }}
cloud.fnts.com/target: {{ .Values.targetCloud | default "IBM" | trunc 63 }}
{{- end -}}

{{- define "helm.labels.custom" -}}
{{- range $key, $value := .Values.deployment.labels }}
{{ $key }}: {{ $value | quote }}
{{- end -}}
{{- end -}}