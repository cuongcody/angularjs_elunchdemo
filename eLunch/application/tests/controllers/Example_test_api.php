<?php
class Example_test_api extends TestCase
{

    public function setUp()
    {
        $this->resetInstance();
    }

    public function test_users_get_id()
    {
        $output = $this->request('GET', 'user/1');
        $expected_result_1['status'] = 'failure';
        $expected_result_1['message'] = 'Edit user profile failed';
        $this->assertContains('status',$result);
        $this->assertEquals(json_encode($expected_result_1),$result);
    }

    // public function test_login()
    // {
    //     $output = $this->request('POST', ['Users_api', 'login_post'], 'password=12345678');
    //     $this->assertEquals('{"status":"failure","message":"Missing field(s) email, password"}',$output);
    //     $this->assertResponseCode(200, $output);
    // }

//     public function test_index_post()
//     {
// //      set_is_cli(FALSE);
// //      $this->warningOff();
//         $this->request->setHeader('Content-Type', 'text/plain');
//         try {
//             $output = $this->request('POST', 'login', ['password' => 123]);
//             // $output = $this->request(
//             //     'POST', 'login',
//             //     ['password' => 123]
//             // );
//         } catch (CIPHPUnitTestExitException $e) {
//             $output = ob_get_clean();
//         }
//         $response = json_decode($output);
// //      set_is_cli(TRUE);
// //      $this->warningOn();
//         $expected = <<< 'EOL'
// {"post":{"id":"abc","password":"xyz"},"query":{"name":"John O'reilly","city":"Tokyo"}}
// EOL;
//         $this->assertEquals($expected, $output);
//         $this->assertEquals('API key was updated', $response->message);
//         $this->assertResponseCode(200);
//     }
}