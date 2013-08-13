window.App = require 'app'

#/////////////////////////////////
#// Helpers
#/////////////////////////////////

require 'helpers/handlebarsHelpers'
require 'helpers/radioButton'

#/////////////////////////////////
#// Controllers
#/////////////////////////////////

require 'controllers/columnItemController'
# require 'controllers/columnSorterController'
require 'controllers/contactController'
require 'controllers/contactsController'
require 'controllers/debtorController'
require 'controllers/debtorsController'
require 'controllers/personsController'
require 'controllers/personController'
require 'controllers/employmentController'
require 'controllers/employmentsController'
require 'controllers/historicalController'
require 'controllers/historicalsController'

#//////////////////////////////////
#// Models
#//////////////////////////////////

require 'models/contact'
require 'models/debtor'
require 'models/employment'
require 'models/historical'
require 'models/person'

#/////////////////////////////////
#// Routes
#/////////////////////////////////

require 'routes/indexRoute'
require 'routes/debtorsRoute'

#//////////////////////////////////
#// Templates
#//////////////////////////////////

require 'templates/_well'
require 'templates/about'
require 'templates/application'
require 'templates/contact/_edit'
require 'templates/contact'
require 'templates/contacts'
require 'templates/debtor/_edit'
require 'templates/debtor'
require 'templates/debtors'
require 'templates/index'
require 'templates/person/_edit'
require 'templates/person'
require 'templates/persons'
require 'templates/employment/_edit'
require 'templates/employment'
require 'templates/employments'
require 'templates/historical'
require 'templates/historicals'

#/////////////////////////////////
#// Views
#/////////////////////////////////



#/////////////////////////////////
#// Store
#/////////////////////////////////

# require 'store/fixtureAdapter'
require 'store/webapi/serializer'
require 'store/webapi/adapter'
require 'store/RESTfulAdapter'

#/////////////////////////////////
#// Router
#/////////////////////////////////

# App.Router.reopen(
#   location: 'history'
# )

App.Router.map ->
  @route          'index',      path: '/'
  @route          'debtors'
  @resource       'debtor',     path: '/debtor/:debtor_id', ->
    @resource     'contact',    path: '/contact/:contact_id',
    @resource     'person',     path: '/person/:person_id',
    @resource     'employment', path: '/employment/:employment_id'
    @resource     'historical', path: '/historical/:historical_id'



