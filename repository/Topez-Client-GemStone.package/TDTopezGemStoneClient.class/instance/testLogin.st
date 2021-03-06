builtins
testLogin
	[ 
	| testSession description gemstoneVersion |
	description := self sessionDescription.
	gemstoneVersion := description gemstoneVersion.
	((gemstoneVersion beginsWith: '2') or: [ gemstoneVersion beginsWith: '3.0' ])
		ifTrue: [ 
			| message |
			message := 'tODE is not supported on ' , gemstoneVersion printString
				, '. You should use GemStone version ''3.1.0'' or later.'.
			(self confirm: message , ' Continue anyway?')
				ifFalse: [ ^ message ] ].
	testSession := self loginUsing: TodeInstallSession.
	[ ^ self testLogin: testSession ]
		ensure: [ testSession logout ] ]
		on: Error
		do: [ :ex | 
			(ex description endsWith: 'External module not found')
				ifTrue: [ ^ self testLoginExternalModuleNotFound ].
			(MetacelloPlatform current string: ex description includesSubstring: 'Client version is')
				ifTrue: [ ^ self testLoginGciVersionMismatch: ex ].
			(MetacelloPlatform current string: ex description includesSubstring: 'Stone Repository monitor cannot be reached')
				ifTrue: [ ^ self testLoginStoneNotFound: ex ].
			(MetacelloPlatform current string: ex description includesSubstring: 'NetLDI service')
				ifTrue: [ ^ self testLoginNetLDIServiceNotFound: ex ].
			^ self testLoginGenericError: ex ]