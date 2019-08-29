<?php
require '../includes/dbh.inc.php';
?>

<html>  
    <head>  
        <title>Inline Table Add, Edit, Delete using in PHP Mysql</title>  
        <link rel="stylesheet" href="angular/css/bootstrap.min.css" />  
        <script src="angular/js/angular.min.js"></script>  
    </head>  
    <body>  
        <div class="container">  
            <br />
            <h3 align="center">Inline Table Add, Edit, Delete using in PHP Mysql</h3><br />
            <div class="table-responsive" ng-app="liveApp" ng-controller="liveController" ng-init="fetchData()">
                <div class="alert alert-success alert-dismissible" ng-show="success" >
                    <a href="#" class="close" data-dismiss="alert" ng-click="closeMsg()" aria-label="close">&times;</a>
                    {{successMessage}}
                </div>
                <form name="testform" ng-submit="insertData()">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Machine Name</th>
                                <th>Machine No</th>
                                <th>Driver Name</th>
                                <th>Licence No</th>
                                <th>Mobile No</th>
                                <th>Supplier</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="date" ng-model="addData.date" class="form-control" placeholder="Enter Date" ng-required="true" /></td>
                                
                                <td><input type="text" ng-model="addData.machine_name" ng-change="addData.machine_name = (addData.machine_name | uppercase)" class="form-control" placeholder="Enter Name" ng-required="true" /></td>
                                
                                <td><input type="text" ng-model="addData.machine_no" ng-change="addData.machine_no = (addData.machine_no | uppercase)" class="form-control" placeholder="Enter No" ng-required="true" /></td>
                               
                                <td><input type="text" ng-model="addData.driver_name" ng-change="addData.driver_name = (addData.driver_name | uppercase)" class="form-control" placeholder="Enter Name" ng-required="true" /></td>
                                
                                <td><input type="text" ng-model="addData.lic_no" ng-change="addData.lic_no = (addData.lic_no | uppercase)"  class="form-control" placeholder="Enter No" ng-required="true" /></td>
                                
                                <td><input type="text" ng-model="addData.mobile_no" class="form-control" placeholder="Enter No" ng-required="true" /></td>
                                
                                 
                                <td><select ng-model="addData.supp_id" ng-change="addData.supp_id = (addData.supp_id | uppercase)" class="form-control" placeholder="Enter Supplier" ng-required="true">
                                        <option value="0">Select Supplier</option>
                                        <?php
                                        $query = "SELECT * FROM tbl_supplier";

                                        $result = mysqli_query($conn, $query);
                                        if (mysqli_num_rows($result) != 0) {
                                            while ($row = mysqli_fetch_row($result)) {
                                                ?>
                                                <option value="<?php echo $row[0] ?>"><?php echo $row[1] ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                                
                                <td><button type="submit" class="btn btn-success btn-sm" ng-disabled="testform.$invalid">Add</button></td>
                            </tr>
                            <tr ng-repeat="data in namesData" ng-include="getTemplate(data)">
                            </tr>

                        </tbody>
                    </table>
                </form>
                <script type="text/ng-template" id="display">
                    <td>{{data.date}}</td>
                    <td>{{data.machine_name}}</td>
                    <td>{{data.machine_no}}</td>
                    <td>{{data.driver_name}}</td>
                    <td>{{data.lic_no}}</td>
                    <td>{{data.mobile_no}}</td>
                    <td>{{data.supp_name}}</td>
                    <td>
                    <button type="button" class="btn  btn-sm" ng-click="showEdit(data)">Edit</button>
                    <button type="button" class="btn  btn-sm" ng-click="deleteData(data.machine_id)">Delete</button>
                    </td>
                </script>
                <script type="text/ng-template" id="edit">
                    <td><input type="date" ng-model="formData.date" class="form-control"  /></td>
                        
                    <td><input type="text" ng-model="formData.machine_name" ng-change="addData.machine_name = (addData.machine_name | uppercase)"  class="form-control" /></td>
                    
                    <td><input type="text" ng-model="formData.machine_no" class="form-control" /></td>
                        
                    <td><input type="text" ng-model="formData.driver_name" class="form-control" /></td>
                            
                    <td><input type="text" ng-model="formData.lic_no" class="form-control" /></td>
                                
                    <td><input type="text" ng-model="formData.mobile_no" class="form-control" /></td>
                        
                    <td><select ng-model="formData.supp_id" class="form-control" placeholder="Enter Supplier" ng-required=                            "true">
                    <option value="0">Select Supplier</option>
                    <?php
                    $query = "SELECT * FROM tbl_supplier";

                    $result = mysqli_query($conn, $query);
                    if (mysqli_num_rows($result) != 0) {
                        while ($row = mysqli_fetch_row($result)) {
                            ?>
                            <option value="<?php echo $row[0] ?>"><?php echo $row[1] ?></option>
                            <?php
                        }
                    }
                    ?>
                    </select></td>
                    
                    <td>
                    <input type="hidden" ng-model="formData.data.machine_id" />
                    <button type="button" class="btn btn-info btn-sm" ng-click="editData()">Save</button>
                    <button type="button" class="btn btn-default btn-sm" ng-click="reset()">Cancel</button>
                    </td>
                </script>         
            </div>  
        </div>
    </body>  
</html>  
<script>
    var app = angular.module('liveApp', []);

    app.controller('liveController', function ($scope, $http) {

        $scope.formData = {};
        $scope.addData = {};
        $scope.success = false;

        $scope.getTemplate = function (data) {
            if (data.machine_id === $scope.formData.machine_id)
            {
                return 'edit';
            } else
            {
                return 'display';
            }
        };

        $scope.fetchData = function () {
            $http.get('select-machine.php').success(function (data) {

                $scope.namesData = data;
            });
        };

        $scope.insertData = function () {
            $http({
                method: "POST",
                url: "insert-machine.php",
                data: $scope.addData,
            }).success(function (data) {
                $scope.success = true;
                $scope.successMessage = data.message;
                $scope.fetchData();
                $scope.addData = {};
            });
        };

        $scope.showEdit = function (data) {
            $scope.formData = angular.copy(data);
        };

        $scope.editData = function () {
            $http({
                method: "POST",
                url: "edit-machine.php",
                data: $scope.formData,
            }).success(function (data) {
                $scope.success = true;
                $scope.successMessage = data.message;
                $scope.fetchData();
                $scope.formData = {};
            });
        };

        $scope.reset = function () {
            $scope.formData = {};
        };

        $scope.closeMsg = function () {
            $scope.success = false;
        };

        $scope.deleteData = function (id) {
            if (confirm("Are you sure you want to remove it?"))
            {
                $http({
                    method: "POST",
                    url: "delete-machine.php",
                    data: {'id': id}
                }).success(function (data) {
                    $scope.success = true;
                    $scope.successMessage = data.message;
                    $scope.fetchData();
                });
            }
        };

    });

</script>