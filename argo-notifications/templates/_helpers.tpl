{{- define "argocd-notifications.labels" -}}
{{- range $k, $v := .Values.labels }}
{{ $k }}: {{ $v | quote }}
{{- end }}
{{- end }}

{{- define "argocd-notifications.fullname" -}}
{{- printf "%s-%s" .Release.Name "argocd-notifications" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "argocd-notifications.name" -}}
{{ .Chart.Name }}
{{- end }}