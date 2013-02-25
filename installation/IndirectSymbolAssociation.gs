doit
SymbolAssociation subclass: 'IndirectSymbolAssociation'
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''
	category: 'Topez-Server-Core'
	options: #()

%

! ------------------- Class comment for IndirectSymbolAssociation
doit
IndirectSymbolAssociation comment: 
''
%

! Remove existing behavior from IndirectSymbolAssociation
doit
IndirectSymbolAssociation removeAllMethods.
IndirectSymbolAssociation class removeAllMethods.
%
! ------------------- Class methods for IndirectSymbolAssociation
! ------------------- Instance methods for IndirectSymbolAssociation
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
= anObject
  "Returns true if (a) the receiver and anObject are both kinds of Association, 

  self == anObject
    ifTrue: [ ^ true ].
  (anObject isKindOf: Association)
    ifFalse: [ ^ false ].
  ^ key = anObject key and: [ self _value = anObject value ]
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
identityDictionary
  | ug |
  ^ (ug := System myUserProfile symbolList objectNamed: #'UserGlobals')
    at: #'USERGLOBALS_SYMBOLASSOCIATION_DICTONARY'
    ifAbsent: [ 
      ug
        at: #'USERGLOBALS_SYMBOLASSOCIATION_DICTONARY'
        put: IdentityKeyValueDictionary new ]
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
key: aKey value: aValue
  "Sets the object aKey as the key of the receiver, and the object aValue as the

  key := aKey.
  self _value: aValue
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
printOn: aStream
  "Puts a displayable representation of the receiver on the given

  key == self
    ifTrue: [ aStream nextPutAll: 'anAssociation' ]
    ifFalse: [ key printOn: aStream ].
  aStream nextPutAll: '->'.
  self _value == self
    ifTrue: [ aStream nextPutAll: 'anAssociation' ]
    ifFalse: [ self _value printOn: aStream ]
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
value
  ^ self _value
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
value: anObject
  self _value: anObject
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
_value
  ^ self identityDictionary at: self
%
category: 'as yet unclassified'
set compile_env: 0
method: IndirectSymbolAssociation
_value: anObject
  self identityDictionary at: self put: anObject
%
doit
IndirectSymbolAssociation category: 'Topez-Server-Core'
%