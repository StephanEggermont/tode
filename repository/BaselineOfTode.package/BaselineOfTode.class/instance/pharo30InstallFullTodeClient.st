initialization
pharo30InstallFullTodeClient
  | monoFontName windowProperties |
  Smalltalk at: #'TODE_CLIENT_INSTALLED' ifPresent: [ ^ self ].
  Smalltalk os environment
    at: 'GS_HOME'
    ifAbsent: [ 
      "Cannot initialize correctly if $GS_HOME is not defined correctly"
      ^ self ].
  self pharo30InstallTodeClient.
  ((Smalltalk at: #'World') perform: #'systemWindows')
    do: [ :w | 
      [ 
      (w model isKindOf: (Smalltalk at: #'ThreadSafeTranscript'))
        ifTrue: [ w model clear ]
        ifFalse: [ w delete ] ]
        valueSupplyingAnswer: false ].	"close all windows"
  (Smalltalk at: #'PolymorphSystemSettings')
    perform: #'desktopLogoFileName:'
    with:
      (((Smalltalk at: #'FileSystem') perform: #'workingDirectory')
        / 'GemTalkSystemsLogo.png') pathString.
  (Smalltalk at: #'TaskbarMorph') perform: #'showTaskbar:' with: false.
  (Smalltalk at: #'NECPreferences') perform: #'enabled:' with: false.
  Smalltalk at: #'TODE_CLIENT_INSTALLED' put: true.
  (Smalltalk at: #'TDShell') perform: #'resetWorldMenu'.
  (Smalltalk at: #'FreeTypeFontProvider') current perform: #'updateFromSystem'.
  monoFontName := 'Courier New'.	"Windows"
  (Smalltalk os perform: #'isUnix')
    ifTrue: [ monoFontName := 'DejaVu Sans Mono' ]
    ifFalse: [ 
      (Smalltalk os perform: #'isMacOSX')
        ifTrue: [ monoFontName := 'Monaco' ]
        ifFalse: [ 
          "Windows"
          monoFontName := 'Consolas' ] ].
  (Smalltalk at: #'StandardFonts')
    defaultFont:
      ((Smalltalk at: #'LogicalFont')
        perform: #'familyName:pointSize:'
        with: monoFontName
        with: 8).
  (Smalltalk at: #'StandardFonts')
    perform: #'setAllStandardFontsTo:'
    with: ((Smalltalk at: #'StandardFonts') perform: #'defaultFont').
  windowProperties := (Smalltalk at: #'TDAbstractWindowProperties')
    import: 'jigsaw-medium'.
  windowProperties installOn: (Smalltalk at: #'TDTopezGemStoneClient')