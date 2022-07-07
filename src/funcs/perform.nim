import ../assets/assets
import std/rdstdin
import std/strutils
import std/strformat

proc arg_1*() =
  stdout.write(service_name)
  let
    service_name_input: string = readLineFromStdin("-> ")

  stdout.write(service_description)
  let
    service_description_input: string = readLineFromStdin("-> ")

  stdout.write(service_user)
  let
    service_user_input: string = readLineFromStdin("-> ")

  stdout.write(service_dir)
  let
    service_dir_input: string = readLineFromStdin("-> ")

  stdout.write(service_exec)
  let
    service_exec_input: string = readLineFromStdin("-> ")

  stdout.write(service_restart)
  let
    service_restart_input: string = readLineFromStdin("-> ")
    service_restart_input_int: int = parseInt(service_restart_input)

  if service_restart_input_int == 1:
    let
      f = open(fmt"{service_name_input}.service", fmWrite)
    f.write(service_file_restart.fmt)
    f.close()

  elif service_restart_input_int == 2:
    let
      f = open(fmt"{service_name_input}.service", fmWrite)
    f.write(service_file.fmt)
    f.close()

  else:
    stderr.write(int_error)

proc arg_2*() =
  stdout.write(helpmsg)

proc arg_3*() =
  stdout.write(version)

proc arg_0*() =
  stdout.write(incorrect_flags)
