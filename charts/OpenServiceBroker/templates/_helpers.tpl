{{- define "helm.fullname" -}}
{{- lower (default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-") -}}
{{- end -}}
{{- define "helm.resources" -}}
resources:
  requests:
    cpu: 1000m
    memory: {{ dig "resources" "requests" "memory" "512Mi" (default .Values.deployment .Values.statefulset) }}
  limits:
    cpu: {{ dig "resources" "limits" "cpu" "2000m" (default .Values.deployment .Values.statefulset) }}
    memory: {{ dig "resources" "limits" "memory" "5Gi" (default .Values.deployment .Values.statefulset) }}
{{- end -}}

{{- define "helm.password" -}}
{{- randAlphaNum 24 | nospace -}}
{{- end -}}