<?php

namespace Tests\Unit;

use Tests\TestCase;
// use Illuminate\Foundation\Testing\RefreshDatabase;
use App\Http\Controllers\TestController;

class TestControllerTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_get_users()
    {
     //   $this->assertTrue(true);

        // $response = $this->get('/api/v1/users');

        // $response->assertStatus(200);

  //       $requestParams = [
  //         'provider' => 'DataProviderX'
  //     ];

  //     $request = $this->getMockBuilder('Illuminate\Http\Request')
  //         ->disableOriginalConstructor()
  //         ->setMethods(['users', 'retrieveItem', 'getRealMethod', 'all', 'getInputSource', 'get', 'has'])
  //         ->getMock();

  //         $request->expects($this->any())
  //         ->method('users')
  //         ->willReturn($requestParams);

  //      $ApiController = new TestController ;
  //      $data = $ApiController->users($request );



  //  $response = $this->get('/api/v1/users');


  //  $this ->assertCount(5, $data);



     // this is route post '/api/comment/store'
     $response =  $this->json('get', '/api/v1/users', ['provider' => 'DataProviderX'] , []) ;
     print_r($response );





      //   $filterData = [
      //     'provider'=>'DataProviderX'
      // ];

      //   $this->json('get', '/api/v1/users', $filterData,[])
      //   ->assertCount(5, $data );




    }
}
