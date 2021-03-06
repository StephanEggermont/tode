private-formatting
formatMethodCommentFor: aMethodNode
	originalSource isNil ifTrue: [^self].
	(FormatCommentWithStatements
		ifTrue: [aMethodNode methodComments]
		ifFalse: [aMethodNode comments])
		do:
			[:each | 
			codeStream
				nextPutAll:
					(originalSource
						copyFrom: each first
						to: each last).
			self newLines: NewLinesAfterMethodComment]