const
  incorrect_flags*: string = "\n[flags is incorrect]\n try \"stfu --help\"\n\n"
  helpmsg*: string = "\n STFU - system file unit tracker\n\n  -g --generate | generate new daemon\n  -h --help     | print this message\n  -v -version   | print program version\n\n"
  version*: string = "stfu - 0.1.0\n"
  int_error*: string = "\n[incorrect int]\n\n"
  service_name*: string = "\n Service name:\n"
  service_description*: string = "\n Service description:\n"
  service_user*: string = "\n Service user:\n"
  service_dir*: string = "\n Service working dir\n"
  service_exec*: string = "\n Service exec:\n"
  service_restart*: string = "\n Service must restart?\n1) yes\n2) no\n"
  service_file*: string = """[Unit]
Description={service_description_input}

[Service]
User={service_user_input}
WorkingDirectory={service_dir_input}
ExecStart={service_exec_input}

[Install]
WantedBy=multi-user.target"""
  service_file_restart*: string = """[Unit]
Description={service_description_input}

[Service]
User={service_user_input}
WorkingDirectory={service_dir_input}
ExecStart={service_exec_input}
Restart=always

[Install]
WantedBy=multi-user.target"""
