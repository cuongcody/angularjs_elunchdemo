(function () {
    'use strict';

    angular
        .module('app')
        .factory('UserService', UserService);

    UserService.$inject = ['$http'];
    function UserService($http) {
        var service = {};
        var base_url = 'http://localhost/';
        service.Login = Login;
        service.GetAll = GetAll;
        service.GetById = GetById;
        service.GetByUsername = GetByUsername;
        service.Create = Create;
        service.Update = Update;
        service.changePasswordOfUserById = changePasswordOfUserById;
        service.Delete = Delete;

        return service;

        function Login(user) {
            return $http({
                  method: 'POST',
                  url: base_url + 'login',
                  data : user,
                  headers: {'Content-Type' : 'application/x-www-form-urlencoded'}
            }).then( handleSuccess, handleError('Error login'));
            //return $http.post('http://localhost/login', {email:email, password:password}).then(handleSuccess, handleError('Error login'));
        }

        function GetAll() {
            return $http.get(base_url + 'users').then(handleSuccess, handleError('Error getting all users'));
        }

        function GetById(id) {
            return $http.get(base_url + 'user/' + id).then(handleSuccess, handleError('Error getting user by id'));
        }

        function changePasswordOfUserById(data) {
            return $http({
                  method: 'PUT',
                  url: base_url + 'change_password/',
                  data : data['params'],
                  headers: {'Content-Type' : 'application/x-www-form-urlencoded'}
            }).then( handleSuccess, handleError('Error updating password of user'));
        }

        function GetByUsername(username) {
            return $http.get('/api/users/' + username).then(handleSuccess, handleError('Error getting user by username'));
        }

        function Create(user) {
            return $http.post('/api/users', user).then(handleSuccess, handleError('Error creating user'));
        }

        function Update(user) {
            return $http({
                  method: 'PUT',
                  url: 'http://localhost/user/' + user['user_id'],
                  data : user['params'],
                  headers: {'Content-Type' : 'application/x-www-form-urlencoded'}
            }).then( handleSuccess, handleError('Error updating user'));
        }

        function Delete(id) {
            return $http.delete('/api/users/' + id).then(handleSuccess, handleError('Error deleting user'));
        }

        // private functions

        function handleSuccess(res) {
            console.log("response: " + res);
            return res.data;
        }

        function handleError(error) {
            return function () {
                return { success: false, message: error };
            };
        }
    }

})();
