instance creation
commandName: commandName fromString: manPageString
  "see http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for tips on documenting command syntax"

  ^ (self fromString: manPageString)
    commandName: commandName;
    yourself