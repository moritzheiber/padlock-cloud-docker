exec {
  command = "padlock-cloud --config /padlock/config.yml runserver --cors"
}

template {
  source      = "/padlock/config.yml.ctmpl"
  destination = "/padlock/config.yml"
  perms       = 0400
}

template {
  source      = "/padlock/whitelist.ctmpl"
  destination = "/padlock/whitelist"
  perms       = 0400
}
