angular.module 'gracaApp'
  .run ($log, $rootScope) ->
    'ngInject'
    $log.debug 'runBlock end'

    $rootScope.$on '$stateChangeError', (event, toState, toParams) ->
      console.log '$stateChangeError', event, toState, toParams
      return
    $rootScope.$on '$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
      console.log '$stateChangeStart', event, toState, toParams
      return
    $rootScope.$on '$stateChangeSuccess', (event, toState, toParams, fromState, fromParams) ->
      $rootScope.$broadcast 'closeWebSocketConnection',
        toState: toState
        fromState: fromState
      console.log '$stateChangeSuccess', event, toState, toParams
      return
