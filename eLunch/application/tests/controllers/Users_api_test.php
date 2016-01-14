<?php

class Users_api_test extends PHPUnit_Framework_TestCase {

    // public function setUp()
    // {
    //    $this->CI = & get_instance();
    //    $this->resetInstance();
    // }
    public function test_users_get_id()
    {
        //var_dump(BASEPATH."----".APPPATH);exit();
        $db_result = $this->getMockBuilder('Base_api')->getMock();
        $db_result->expects($this->any())->method('request_headers')->will($this->returnValue('status = 200'));
        $db_result->expects($this->any())->method('authenticate')->will($this->returnValue('status = 200'));
        var_dump($db_result);exit();
        // // Configure the stub.
        // $stub->expects($this->any())
        // ->method('authenticate')
        // ->will($this->returnValue('status = 200'));
        // $this->CI->load->library('../controllers/Users_api');
        // $result = $this->CI->Users_api->user_get(1);
        // var_dump($result);
        // $this->request->setHeader('Accept', 'application/csv');
        //$output = $this->request('GET', 'user/1');
        //$output = $this->request('GET', ['Users_api', 'user_get(1)']);
        $this->assertEquals($output, $db_result->authenticate());
    }
}