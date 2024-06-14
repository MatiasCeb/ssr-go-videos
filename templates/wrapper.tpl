{{ define "wrapper" }}
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/styles.css">
  <title>Cursos</title>
</head>

<body>
{{ if eq .InternalTemplate "grid" }}
    {{ template "grid" . }}
{{ else if eq .InternalTemplate "narrator" }}
{{ template "narrator" . }}
{{ else if eq .InternalTemplate "course" }}
    {{ template "course" . }}
{{ else if eq .InternalTemplate "story" }}
    {{ template "story" . }}
{{ else }}
    <h2>Página no encontrada</h2>
{{ end }}
</body>

</html>
{{ end }}