angular.module("ngAddressbook.addressbook",
               ["ui.state"]).config(config = ($stateProvider) ->
  $stateProvider.state "addressbook",
    url: "/addressbook"
    views:
      main:
        controller: "addressbookCtrl"
        templateUrl: "addressbook/addressbook.html"

    data:
      pageTitle: "Addressbook"

  return
).controller "addressbookCtrl",
AddressbookController = ($scope, Organizations) ->
  $scope.queryString
  $scope.$watch "queryString", (oldVal, newVal) ->
    return if oldVal is newVal
    $scope.queryResult = Organizations.fuzzySearch
      queryString: $scope.queryString
    # $scope.addressbook = Organizations.query
