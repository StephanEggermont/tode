Instance Migration
migrateFrom: anotherObject instVarMap: otherivi
  "https://github.com/dalehenrich/tode/issues/125"

  (anotherObject respondsTo: #'topezClientForwarder')
    ifTrue: [ 
      | tcf |
      tcf := anotherObject topezClientForwarder.
      anotherObject topezClientForwarder: nil.
      super migrateFrom: anotherObject instVarMap: otherivi.
      anotherObject topezClientForwarder: tcf.
      self topezClientForwarder: tcf ]