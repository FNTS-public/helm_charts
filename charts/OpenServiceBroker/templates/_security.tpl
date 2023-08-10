{{- define "helm.podSecurityContext " -}}
securityContext:
  runAsUser: 1000
  runAsGroup: 3000
  runAsNonRoot: true
{{- end -}}

{{- define "helm.containerSecurityContext " -}}
securityContext:
  privileged: false
  runAsNonRoot: false
  readOnlyRootFilesystem: false
  allowPrivilegeEscalation: false
  {{/*
  */}}
{{- end -}}

