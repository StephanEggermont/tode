menu messages
pasteRecent
	"Paste an item chosen from RecentClippings."

	| clipping |
	(clipping := Clipboard chooseRecentClipping) ifNil: [^ self].
	Clipboard clipboardText: clipping.
	self model textMorph pasteAtEnd.