angular.module 'gracaApp'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider

    .state 'graca',
      url: '/'
      templateUrl: 'app/main/main.html'

    .state 'graca.home',
      url: 'home/'
      templateUrl: 'app/home/home.html'

    .state 'graca.sobre',
      url: 'sobre/'
      templateUrl: 'app/sobre/sobre.html'

    .state 'graca.mamae',
      url: 'mamae-e-bebe/'
      templateUrl: 'app/mamae-bebe/mamae.html'

    .state 'graca.cadernos',
      url: 'cadernos/'
      templateUrl: 'app/cadernos/cadernos.html'

    .state 'graca.diversos',
      url: 'diversos/'
      templateUrl: 'app/diversos/diversos.html'

    .state 'graca.maletas',
      url: 'maletas/'
      templateUrl: 'app/maletas/maletas.html'

    .state 'graca.kits',
      url: 'kits/'
      templateUrl: 'app/kits/kits.html'


    $urlRouterProvider.otherwise '/'