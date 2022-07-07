proc arg_parse*(args: seq[string], args_count: int): int =
  const
    args_list: array[6, string] = [
      "-g", "--generate",
      "-h", "--help",
      "-v", "--version"
    ]

  if args_count > 0:
    # if flags is -g --generate
    if args[0] in args_list[0 .. 1]:
      return 1

    # if flags is -h --help
    elif args[0] in args_list[2 .. 3]:
      return 2

    # if flag is -v --version
    elif args[0] in args_list[4 .. 5]:
      return 3

    # in else cases
    else:
      return 0
  # if no flags
  else:
    return 0
