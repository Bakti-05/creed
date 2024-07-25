
{{/* Labels */}}

{{- define "myapp.labels" -}}
app: {{ default $.Release.Name $.Values.name }}
{{- end -}}