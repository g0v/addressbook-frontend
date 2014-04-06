angular.module( 'ngAddressbook', [
  'templates-app',
  'templates-common',
  'templates-jade_app',
  'templates-jade_common',
  'ngAddressbook.nav',
  'ngAddressbook.home',
  'ngAddressbook.about',
  'ngAddressbook.addressbook',
  'ui.state',
  'ui.route'
])

.config( function myAppConfig ( $stateProvider, $urlRouterProvider ) {
  $urlRouterProvider.otherwise( '/addressbook' );
})

.run( function run () {
})

.controller( 'AppCtrl', function AppCtrl ( $scope, $location ) {
  $scope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
    if ( angular.isDefined( toState.data.pageTitle ) ) {
      $scope.pageTitle = toState.data.pageTitle + ' | ngAddressbook' ;
    }
  });
})

;

