'use strict'

angular.module('ngAddressbook.addressbook')
.factory 'Organizations', ($resource) ->
  url = 'http://pgrest.io/hychen/api.addressbook/v0/collections/organizations'
  model = $resource url,
    {},
    {
      fuzzySearch:
        method: 'GET'
        url: url
        isArray: true
        transformResponse: (data) ->
          JSON.parse(data).entries
    }
  model.prototype.$url = url

  return model
