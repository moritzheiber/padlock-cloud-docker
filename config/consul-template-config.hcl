exec {
  command = "padlock-cloud --config /padlock/config.yml runserver --cors"
}

template {
  source      = "/padlock/config.yml.ctmpl"
  destination = "/padlock/config.yml"
  perms       = 0400
}
