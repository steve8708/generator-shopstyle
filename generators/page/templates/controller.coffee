angular.module('app')
.controller '<%= className %>Ctrl', ($scope, core, $injector) ->

  core.controller $scope,
    init: ->
