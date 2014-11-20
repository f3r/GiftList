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

  $scope.addItemToWishList = (wishlistId, itemId) ->
    jsonObj = {"data": {"list_id": wishlistId, "item_id": itemId }}

    # Devise requires a CSRF token be included with all requests. The presence of this token
    # guarantees that the current page was meant to make this request.
    # See more: http://guides.rubyonrails.org/security.html#cross-site-request-forgery-csrf
    jsonObj[$('meta[name=csrf-param]').attr('content')] = $('meta[name=csrf-token]').attr('content')

    $http.post('api/wanted_items/submit.json', jsonObj)
      .success (data) ->
        console.log data
        $scope.loadWishList()
      .error (data) ->
        console.log data

  $scope.addNewWishList = ->
    jsonObj = {"list_name": $scope.newListName}
    jsonObj[$('meta[name=csrf-param]').attr('content')] = $('meta[name=csrf-token]').attr('content')

    $http.post('lists.json', jsonObj)
      .success (data) ->
        console.log data
        $scope.loadWishList()
      .error (data) ->
        console.log data

  $scope.loadItems()
  $scope.loadWishList()
])

