# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App = angular.module('myApp', [])

App.controller("GiftItemController", ["$scope", "$http", ($scope, $http) ->

  $scope.loadItems = ->
    $http.get("/items.json")
      .success (data) ->
        # console.log data
        $scope.items = data
      .error (data) ->
        console.log "data.error"

  $scope.loadWishList = ->
    $http.get("/lists.json")
      .success (data) ->
        console.log data
        $scope.wish_lists = data
      .error (data) ->
        console.log "Wish list error"


  $scope.loadItems()
  $scope.loadWishList()
])

