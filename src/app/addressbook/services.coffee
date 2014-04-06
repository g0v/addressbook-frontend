'use strict'

angular.module('ngAddressbook.addressbook')
.factory 'Organizations', ($resource) ->
  url = 'http://pgrest.io/hychen/api.addressbook/v0/collections/organizations'
  model = $resource url,
    {queryString: '@queryString'},
    {
      fuzzySearch:
        method: 'GET'
        url:
          '?q={"name":{"$matches":"test"}}'
    }
  console.log url
  model.prototype.$url = url
  return model
