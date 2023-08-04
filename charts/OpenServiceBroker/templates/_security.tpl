{{- define "helm.podSecurityContext " -}}
securityContext:
  runAsUser: 1000
  runAsGroup: 3000
  runAsNonRoot: true
{{- end -}}

{{- define "helm.containerSecurityContext " -}}
securityContext:
  runAsUser: 1000
  runAsGroup: 3000
  privileged: false
  runAsNonRoot: true
  readOnlyRootFilesystem: true
  allowPrivilegeEscalation: false
  {{/*
  */}}
{{- end -}}

