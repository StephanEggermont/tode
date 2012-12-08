as yet unclassified
allGlobalNames
    AllGlobalNames
        ifNil: [ 
            | block list |
            block := TZGsBlockSend new
                topez: self topez;
                blockSource:
                        '[| globalNames |
globalNames := IdentitySet new.
System myUserProfile symbolList do: [:symbolDict |
	globalNames addAll: symbolDict keys].
globalNames asArray]';
                transform: #'ston' -> 1.
            self
                critical: [ 
                    list := block value.
                    AllGlobalNames := list collect: [ :each | each asTopezNative ] ] ].
    ^ AllGlobalNames