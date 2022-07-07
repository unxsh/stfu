import std/os
import args/argp
import funcs/perform


proc main() =
  let
    cmd_args: seq[string] = commandLineParams()
    args_count: int = paramCount()

  let
    arg: int = arg_parse(cmd_args, args_count)

  # if flag is -g --generate
  if arg == 1:
    arg_1()

  elif arg == 2:
    arg_2()

  elif arg == 3:
    arg_3()

  else:
    arg_0()

main()
