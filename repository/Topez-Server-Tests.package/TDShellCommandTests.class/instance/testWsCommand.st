as yet unclassified
testWsCommand
  "run without errors ... to keep me honest"

  | node |
  self
    evaluateCommandString: 'ws --help ';
    evaluateCommandString: 'pwd; ws';
    yourself.
  node := self createSenderNode.
  self
    evaluateCommandString: 'ws ' , node printString;
    yourself