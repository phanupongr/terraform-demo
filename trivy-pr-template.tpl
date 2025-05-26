{{- range .}}
{{- range .Misconfigurations }}
{{ .ID | html }} {{ .Title | html }}\n{{ .Description | html }}\n
{{ end }}
{{- range .Vulnerabilities}}
\n#### {{ .VulnerabilityID | html }} {{ .Title | html }}\n{{ .Description | html }}\n
{{ end }}
{{- end }}
