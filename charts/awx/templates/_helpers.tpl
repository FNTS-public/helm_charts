{{- define "helm.fullname" -}}
{{- lower (default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-") -}}
{{- end -}}