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
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Difference</th>
                                <th>Diesel</th>
                                <th>Amount</th>
                                <th>Remarks</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="date" ng-model="addData.date" class="form-control" placeholder="Enter Date" ng-required="true" /></td>
                                
                                <td><select ng-model="addData.machine_id" ng-change="addData.machine_id = (addData.machine_id | uppercase)" class="form-control" placeholder="Enter Supplier" ng-required="true">
                                        <option value="0">Select Machine</option>
                                        <?php
                                        $query = "SELECT * FROM tbl_machine_register";

                                        $result = mysqli_query($conn, $query);
                                        if (mysqli_num_rows($result) != 0) {
                                            while ($row = mysqli_fetch_row($result)) {
                                                ?>
                                                <option value="<?php echo $row[0] ?>"><?php echo $row[2] ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </td>
                                
                                <td><input type="time" ng-model="addData.start_time" class="form-control"  ng-required="true" /></td>
                                <td><input type="time" ng-model="addData.end_time" class="form-control" /></td>
                                <td><input type="hidden" /></td>
                                <td><input type="text" ng-model="addData.diesel" class="form-control" /></td>
                                <td><input type="text" ng-model="addData.amount" class="form-control" /></td>
                                <td><textarea ng-model="addData.remarks"></textarea></td>
                                
                                
                                <td><button type="submit" class="btn btn-success btn-sm">Add</button></td>
                            </tr>
                            <tr ng-repeat="data in namesData" ng-include="getTemplate(data)">
                            </tr>

                        </tbody>
                    </table>
                </form>
                <script type="text/ng-template" id="display">
                    <td>{{data.date}}</td>
                    <td>{{data.machine_name}}</td>
                    <td>{{data.start_time}}</td>
                    <td>{{data.end_time}}</td>
                    <td>{{data.diffrence}}</td>
                    <td>{{data.diesel}}</td>
                    <td>{{data.amount}}</td>
                    <td>{{data.remarks}}</td>
                    <td>
                    <button type="button" class="btn  btn-sm" ng-click="showEdit(data)">Edit</button>
                    <button type="button" class="btn  btn-sm" ng-click="deleteData(data.id)">Delete</button>
                    </td>
                </script>
                
                <script type="text/ng-template" id="edit">
                    <td><input type="date" ng-model="formData.date" class="form-control"  /></td>
                        
                    <td><select ng-model="formData.machine_id" class="form-control" placeholder="Enter Machine" ng-required=                            "true">
                    <option value="0">Select Machine</option>
                    <?php
                    $query = "SELECT * FROM tbl_machine_register";

                    $result = mysqli_query($conn, $query);
                    if (mysqli_num_rows($result) != 0) {
                        while ($row = mysqli_fetch_row($result)) {
                            ?>
                            <option value="<?php echo $row[0] ?>"><?php echo $row[2] ?></option>
                            <?php
                        }
                    }
                    ?>
                    </select></td>
                    
                    <td><input type="time" ng-model="formData.start_time" class="form-control"  ng-required="true" min="06:00:00" max="12:00:00"/></td>
                    <td><input type="time" ng-model="formData.end_time" class="form-control" min="06:00:00" max="12:00:00"/></td>
                    <td><input  ng-model="formData.diffrence" class="form-control" ng-disabled="testform.$invalid"/></td>
                    <td><input type="text" ng-model="formData.diesel" class="form-control"  /></td>
                    <td><input type="text" ng-model="formData.amount" class="form-control"  /></td>
                    <td><input type="text" ng-model="formData.remarks" class="form-control"  /></td>
                    <td>
                    <input type="hidden" ng-model="formData.data.id" />
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
            if (data.id === $scope.formData.id)
            {
              // alert($scope.formData.start_time);
                return 'edit';
            } else
            {
                return 'display';
            }
        };

        $scope.fetchData = function () {
            $http.get('select-time.php').success(function (data) {

                $scope.namesData = data;
            });
        };

        $scope.insertData = function () {
            $http({
                method: "POST",
                url: "insert-time.php",
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
                url: "edit-time.php",
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
                    url: "delete-time.php",
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