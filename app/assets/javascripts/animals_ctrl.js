(function(){
  angular.module("app").controller("animalsCtrl", function($scope, $http){
      $scope.setup = function(){
        $http.get('/api/v1/animals.json').then(function(response) {
          console.log(response.data);
          $scope.animals = response.data;
        });
      };

      $scope.toggleForm = function() {
        $scope.showForm = !$scope.showForm;
      };

      $scope.createNewAnimal = function(name, legCount, description, meatEater){
        var newAnimal = {
          name: name,
          leg_count: legCount,
          description: description,
          meat_eater: meatEater
        };
        $http.post('/api/v1/animals.json', newAnimal).then(function(response) {
          $scope.animals.push(response.data);
        });
        $scope.newAnimalName = null;
        $scope.newAnimalLegCount = null;
        $scope.newAnimalDescription = null;
        $scope.newAnimalMeatEater = null;
      };

      window.$scope = $scope;

  });
}());