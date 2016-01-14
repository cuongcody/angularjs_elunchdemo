(function () {
    'use strict';

    angular
        .module('app')
        .factory('AuthenticationService', AuthenticationService, ['angular-md5']);

    AuthenticationService.$inject = ['$http', 'md5', '$cookieStore', '$rootScope', '$timeout', 'UserService'];
    function AuthenticationService($http, md5, $cookieStore, $rootScope, $timeout, UserService) {
        var service = {};

        service.Login = Login;
        service.SetCredentials = SetCredentials;
        service.ClearCredentials = ClearCredentials;

        return service;

        function Login(email, password, callback) {

            /* Dummy authentication for testing, uses $timeout to simulate api call
             ----------------------------------------------*/
            $timeout(function () {
                var response;
                var authentication_token;
                var id;
                var avatar_content_file;
                var user = 'email=' + email + '&password=' + md5.createHash(password);
                console.log(user);
                UserService.Login(user)
                    .then(function (res) {
                        console.log(res);
                        if (res !== null && res.status =='success') {
                            response = { success: true };
                            authentication_token = res.data.authentication_token;
                            id = res.data.id;
                            avatar_content_file = res.data.avatar_content_file;
                            SetCredentials(id, email, authentication_token, avatar_content_file);
                        } else {
                            response = { success: false, message: res.message };
                        }
                        callback(response);
                    });
            }, 1000);

            /* Use this for real authentication
             ----------------------------------------------*/
            //$http.post('/api/authenticate', { username: username, password: password })
            //    .success(function (response) {
            //        callback(response);
            //    });

        }

        function SetCredentials(id, email, authentication_token, avatar_content_file) {
            ClearCredentials();
            $rootScope.globals = {
                currentUser: {
                    id: id,
                    email: email,
                    authentication_token: authentication_token,
                    avatar_content_file : avatar_content_file
                }
            };

            $http.defaults.headers.common['Authorization'] = 'Bearer ' + authentication_token; // jshint ignore:line
            //console.log('au' + $http.defaults.headers.common['Authorization']);
            $cookieStore.put('globals', $rootScope.globals);
        }

        function ClearCredentials() {
            $rootScope.globals = {};
            $cookieStore.remove('globals');
            $http.defaults.headers.common.Authorization = 'Bearer';
        }
    }

})();