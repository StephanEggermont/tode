accessing
menuCommandMap
  " slot 1 :: tODE command name
  slot 2 :: text to highlight in man page ... typically the command or subcommand"

  ^ Dictionary new
    at: 'Commit'
      put:
        {'commit'.
          'commit'};
    at: 'Abort'
      put:
        {'abort'.
          'abort'};
    at: 'Auto Abort'
      put:
        {''.
          ''};
    at: 'Auto Commit'
      put:
        {'limit'.
          'autoCommit'};
    at: 'Auto Migrate'
      put:
        {'limit'.
          'autoMigrate'};
    at: 'Class...'
      put:
        {'browse'.
          'browse class'.
          'class'};
    at: 'Hierarchy Browser...'
      put:
        {'browse'.
          '--hier'.
          'class'};
    at: 'Class References...'
      put:
        {'browse'.
          'browse references'.
          'references'};
    at: 'Method...'
      put:
        {'browse'.
          'browse method'.
          'method'};
    at: 'String...'
      put:
        {'browse'.
          'browse source'.
          'source'};
    at: 'Senders...'
      put:
        {'browse'.
          'browse sender'.
          'sender'};
    at: 'Case Sensitive String...'
      put:
        {'browse'.
          '--case|--exact'.
          'source'};
    at: 'System Browser'
      put:
        {'browse'.
          '--full'.
          'class'};
    at: 'Open Workspaces'
      put:
        {'ws'.
          ''.
          ''};
    at: 'File Browser'
      put:
        {''.
          ''};
    at: 'Process Browser'
      put:
        {'ps'.
          'ps list'.
          'list'};
    at: 'Inspect UndefinedSymbols'
      put:
        {'port'.
          'port undefinedSymbols'.
          ''};
    at: 'Inspect Sent But Not Implemented'
      put:
        {'port'.
          'port sentButNotImplemented'.
          ''};
    at: 'Test Runner'
      put:
        {'test'.
          'test'.
          ''};
    at: 'Monticello'
      put:
        {'mc'.
          'mc list'.
          ''};
    at: 'List backup files'
      put:
        {'bu'.
          'bu list'.
          'list'};
    at: 'Backup'
      put:
        {'bu'.
          'bu backup'.
          'backup'};
    at: 'Restore from Backup'
      put:
        {'bu'.
          'bu restore'.
          'restore'};
    at: 'Mark for Collection'
      put:
        {'gs'.
          'gs mfc'.
          'mfc'};
    at: 'Changed packages & methods'
      put:
        {'project'.
          'project summary'.
          'summary'};
    at: 'Gem Configuration Report'
      put:
        {'gs'.
          '--gem'.
          'configuration'};
    at: 'Stone Configuration Report'
      put:
        {'gs'.
          '--stone'.
          'configuration'};
    at: 'Empty Object Log'
      put:
        {'ol'.
          'ol clear'.
          'clear'};
    at: 'File Size Report'
      put:
        {'gs'.
          'fileSizeReport'.
          'fileSizeReport'};
    at: 'Object Log'
      put:
        {'ol'.
          'ol view'.
          'view'};
    at: 'User Session Report'
      put:
        {'gs'.
          'sessionDescription'.
          'sessionDescription'};
    at: 'Client Version Report'
      put:
        {'gs'.
          '--client'.
          'version'};
    at: 'Gem Version Report'
      put:
        {'gs'.
          '--gem'.
          'version'};
    at: 'Stone Version Report'
      put:
        {'gs'.
          '--stone'.
          'version'};
    at: 'Browser Preferences'
      put:
        {'limit'.
          'limit'.
          ''};
    at: 'Commit on Almost Out of Memory'
      put:
        {'gs'.
          'gs halt'.
          'halt'};
    at: 'Help'
      put:
        {'man'.
          '--all'.
          ''};
    at: 'Remove Continuations from Object Log'
      put:
        {'ol'.
          '--continuation'.
          'clear'};
    at: 'Clear Object Log'
      put:
        {'ol'.
          'ol clear'.
          'clear'};
    at: 'Debug Continuations'
      put:
        {'ol'.
          '--continuation'.
          'view'};
    at: 'Update GemTools Launcher'
      put:
        {''.
          ''};
    at: 'Update GLASS'
      put:
        {''.
          ''};
    yourself