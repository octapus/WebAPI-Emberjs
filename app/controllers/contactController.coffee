App.ContactController = Em.ObjectController.extend
  doneEditing: ->
    @get('store').commit()
    @transitionToRoute 'debtor'