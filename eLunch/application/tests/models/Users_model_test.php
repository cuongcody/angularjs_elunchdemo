<?php

class Users_model_test extends TestCase
{
    public function setUp()
    {
        $this->resetInstance();
        $this->CI->load->database('testing');
        $this->CI->load->model('Users_model');
        $this->obj = $this->CI->Users_model;
    }

    public function test_get_category_list()
    {
        $expected = [
            1 => 'Admin',
            2 => 'CD',
            3 => 'DVD'
        ];
        $list = $this->obj->get_all_users(1,0);
        foreach ($list as $user) {
            $this->assertEquals($expected[$user->id], $user->first_name);
        }
    }

    public function test_get_category_name()
    {
        $actual = $this->obj->get_user_by('id', 1)->first_name;
        $expected = 'Admin';
        $this->assertEquals($expected, $actual);
    }
}