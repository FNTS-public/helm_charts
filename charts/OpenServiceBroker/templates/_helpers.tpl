{{- define "helm.fullname" -}}
{{- lower (default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-") -}}
{{- end -}}
{{- define "helm.resources" -}}
resources:
  requests:
    cpu: 50m
    memory: {{ dig "resources" "requests" "memory" "64Mi" (default .Values.deployment .Values.statefulset) }}
  limits:
    cpu: {{ dig "resources" "limits" "cpu" "1000m" (default .Values.deployment .Values.statefulset) }}
    memory: {{ dig "resources" "limits" "memory" "256Mi" (default .Values.deployment .Values.statefulset) }}
{{- end -}}

{{- define "helm.password" -}}
{{- randAlphaNum 24 | nospace -}}
{{- end -}}