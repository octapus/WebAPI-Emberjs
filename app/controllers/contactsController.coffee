App.ContactsController = Em.ArrayController.extend
  columns: (-> [
    Em.Object.create(column: 'phone')
    Em.Object.create(column: 'extension')
    Em.Object.create(column: 'type')
    Em.Object.create(column: 'score')
    Em.Object.create(column: 'source')
    Em.Object.create(column: 'status')
  ]).property()

  sortedColumn: (->
    properties = @get('sortProperties')
    return 'undefined'  unless properties
    return properties.get 'firstObject'
  ).property('sortProperties.[]')

  toggleSort: (column) ->
    if @get('sortedColumn') is column
      @toggleProperty 'sortAscending'
    else
      @set('sortProperties', [column])
      @set('sortAscending', true)