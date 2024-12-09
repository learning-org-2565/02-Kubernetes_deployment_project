{{/*
Generate the full name of the resource based on the release name
*/}}
{{- define "myapp.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate a shorter name for the app
*/}}
{{- define "myapp.name" -}}
{{- .Chart.Name -}}
{{- end -}}
