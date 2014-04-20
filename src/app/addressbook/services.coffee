'use strict'

angular.module('ngAddressbook.addressbook')
.factory 'Organizations', ($resource) ->
  # url = 'http://pgrest.io/hychen/api.addressbook/v0/collections/organizations'
  url = 'http://0.0.0.0:8888/v0/collections/organizations'
  model = $resource url,
    {},
    {
      fuzzySearch:
        method: 'GET'
        url: url
        isArray: true
        responseType: 'json'
        transformResponse: (data) ->
          data.entries
    }
  model.prototype.$url = url

  return model
