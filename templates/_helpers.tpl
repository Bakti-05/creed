
{{/* Labels */}}

{{- define "creed.labels" -}}
app: {{ default $.Release.Name $.Values.name }}
{{- end -}}