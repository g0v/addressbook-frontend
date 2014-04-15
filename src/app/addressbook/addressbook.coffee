angular.module("ngAddressbook.addressbook",
               ["ui.state"]).config(config = ($stateProvider) ->
  $stateProvider
  .state "addressbook",
    url: "/addressbook"
    views:
      addressBookSearchBox:
        controller: "addressbookCtrl"
        templateUrl: "addressbook/addressBookSearchBox.html"
      addressBookResultBox:
        controller: "addressbookCtrl"
        templateUrl: "addressbook/addressBookResultBox.html"
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
