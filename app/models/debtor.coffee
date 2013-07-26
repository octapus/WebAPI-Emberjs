App.Debtor = DS.Model.extend
  type:        				DS.attr 'boolean'
  title:       				DS.attr 'string'
  lastname:        	  DS.attr 'string'
  firstname:     			DS.attr 'string'
  middlename:         DS.attr 'string'
  suffix:  						DS.attr 'string'
  dob:								DS.attr 'date'
  ssn:								DS.attr 'string'
  martialStatus:			DS.attr 'string'
  email:							DS.attr 'string'
  emailValidity:			DS.attr 'boolean'
  optIn:							DS.attr 'boolean'
  ein:								DS.attr 'string'
  commericalContact:	DS.attr 'string'

  country:            DS.attr 'string'
  address1:           DS.attr 'string'
  address2:           DS.attr 'string'
  address3:           DS.attr 'string'
  city:               DS.attr 'string'
  state:              DS.attr 'string'
  zip:                DS.attr 'string'
  county:             DS.attr 'string'
  
  dlIssuer:						DS.attr	'string'
  dlNumber:						DS.attr	'string'
  passport:						DS.attr	'string'
  pin:								DS.attr	'string'

  contact: 						DS.hasMany    'App.Contact'
  relatedPerson:      DS.hasMany    'App.RelatedPerson'
  employment:         DS.hasMany    'App.Employment'