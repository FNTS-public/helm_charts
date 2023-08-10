{{- define "helm.podSecurityContext " -}}
securityContext:
  runAsNonRoot: true
{{- end -}}

{{- define "helm.containerSecurityContext " -}}
securityContext:
  privileged: false
  runAsNonRoot: true
  readOnlyRootFilesystem: false
  allowPrivilegeEscalation: false
  {{/*
  */}}
{{- end -}}

