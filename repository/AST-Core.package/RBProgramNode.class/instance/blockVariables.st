accessing
blockVariables
	^parent isNil ifTrue: [#()] ifFalse: [parent blockVariables]