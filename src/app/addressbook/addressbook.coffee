angular.module("ngAddressbook.addressbook",
               ["ui.state"]).config(config = ($stateProvider) ->
  $stateProvider
  .state "addressbook",
    url: "/addressbook"
    views:
      addressbook:
        controller: "addressbookCtrl"
        templateUrl: "addressbook/addressbook.html"
    data:
      pageTitle: "Addressbook"

  return
).controller "addressbookCtrl",
AddressbookController = ($scope, Organizations) ->

  $scope.$watch "queryString", (oldVal, newVal) ->
    return if oldVal is newVal

    q =
      name:
        $matches: newVal
    $scope.queryResult = Organizations.fuzzySearch
      q: JSON.stringify(q)
