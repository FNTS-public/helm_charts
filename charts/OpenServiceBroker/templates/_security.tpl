{{- define "helm.podSecurityContext " -}}
securityContext:
  runAsUser: "1000"
  runAsGroup: "3000"
  fsGroup: "3000"
  fsGroupChangePolicy: "OnRootMismatch"
  runAsNonRoot: true
{{- end -}}

{{- define "helm.containerSecurityContext " -}}
securityContext:
  runAsUser: 1000
  runAsGroup: 3000
  privileged: false
  runAsNonRoot: true
  readOnlyRootFilesystem: false
  allowPrivilegeEscalation: false
  {{/*
  */}}
{{- end -}}

