accessing
addParenthesis: anInterval 
	parentheses isNil ifTrue: [parentheses := OrderedCollection new: 1].
	parentheses add: anInterval