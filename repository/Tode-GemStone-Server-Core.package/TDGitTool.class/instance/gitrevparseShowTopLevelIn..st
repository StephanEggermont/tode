as yet unclassified
gitrevparseShowTopLevelIn: aDirectory
  | command dirPath |
  dirPath := aDirectory fullName.
  command := 'cd ' , dirPath , '; git rev-parse --show-toplevel'.
  ^ self performOnServer: command logging: true