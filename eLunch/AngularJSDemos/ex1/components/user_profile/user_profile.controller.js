(function () {
    'use strict';

    angular
        .module('app')
        .controller('UserController', UserController, ['angular-md5'])
        .directive('pwCheck', function () {
            return {
                require: 'ngModel',
                // link: function (scope, elm, attrs, ctrl) {
                //     ctrl.$parsers.unshift(function (viewValue, $scope) {
                //         var noMatch = viewValue != scope.form_changepassword.new_password.$viewValue
                //         ctrl.$setValidity('noMatch', !noMatch)
                //     })
                // }
                link: function (scope, elem, attrs, ctrl) {
                    var newPassword = '#' + attrs.pwCheck;
                    elem.add(newPassword).on('keyup', function () {
                      scope.$apply(function () {
                        var v = elem.val() === $(newPassword).val();
                        ctrl.$setValidity('noMatch', v);
                      });
                    });
                  }
            }
        });

    UserController.$inject = ['UserService', '$rootScope', 'FlashService', 'AuthenticationService', 'md5'];
    function UserController(UserService, $rootScope, FlashService, AuthenticationService, md5) {
        var vm = this;
        var user_id = null;
        vm.isPreferencesView = true;
        vm.user = null;
        vm.whatTaste = null;
        vm.isVegan = null;
        vm.updateUser = updateUser;
        vm.changePassword = changePassword;

        initController();

        function initController() {
            user_id = $rootScope.globals.currentUser.id;
            loadCurrentUser();
        }

        function loadCurrentUser() {
            UserService.GetById(user_id)
                .then(function (res) {
                    console.log(res.data);
                    vm.user = res.data;
                    vm.whatTaste = vm.user.what_taste;
                    vm.isVegan = vm.user.want_vegan_meal;
                });
        }

        function updateUser() {
            vm.dataLoading = true;
            var data = [];
            data['user_id'] = user_id;
            data['params'] = 'what_taste='+ vm.whatTaste + '&want_vegan_meal=' + vm.isVegan;
            UserService.Update(data)
                .then(function (res) {
                    console.log(res);
                    vm.dataLoading = false;
                    if (res.status == 'success')
                    {
                        FlashService.Success(res.message);
                    }
                    else
                    {
                        FlashService.Error(res.message);
                    }
                })
        }

        function changePassword() {
            vm.dataLoading = true;
            var data = [];
            var currentPasswordHash = md5.createHash(vm.currentPassword);
            var newPasswordHash = md5.createHash(vm.newPassword);
            var confirmNewPasswordHash = md5.createHash(vm.confirmNewPassword);
            data['params'] = 'user_id=' + user_id +
                             '&current_password=' + currentPasswordHash +
                             '&new_password=' + newPasswordHash +
                             '&confirm_new_password=' + confirmNewPasswordHash;
            UserService.changePasswordOfUserById(data)
            .then(function (res) {
                console.log(res);
                vm.dataLoading = false;
                if (res.status == 'success') {
                    var email = $rootScope.globals.currentUser.email;
                    AuthenticationService.SetCredentials(user_id, email, res.data.authentication_token);
                    FlashService.Success(res.message);
                }
                else
                {
                    FlashService.Error(res.message);
                }
            })
        }
    }

})();