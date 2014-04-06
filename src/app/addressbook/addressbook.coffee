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
).controller "addressbookCtrl", AddressbookController = ($scope) ->
