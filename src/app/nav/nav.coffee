angular.module("ngAddressbook.nav",
               ["ui.state"]).config(config = ($stateProvider) ->
  $stateProvider.state "nav",
    url: "/nav"
    views:
      main:
        controller: "navCtrl"
        templateUrl: "nav/nav.html"

    data:
      pageTitle: "nav"

  return
).controller "navCtrl", navController = ($scope) ->
