<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\DeleteAll ;
use App\RouteModel ;


function delete_multiselect(Request $request) // select many contract from index table and delete them
{
    $selected_list =  explode(",",$request['selected_list']);
    foreach ($selected_list as $item)
    {
        DB::table($request['table_name'])->where('id',$item)->delete() ;
    }
    \Session::flash('success', \Lang::get('messages.custom-messages.deleted'));
}

function restore($table_name,$record_id)
{
    \DB::table($table_name)->where('id',$record_id)->update(['rectype_id'=>2]);
}

function get_delete_all_flag() {
    $route = Route::current();
    // dd($route);
    $get_route = RouteModel::where('route',$route->uri)->where('method','get')->first() ;
    $flag = $get_route->delete_all_model ;
    if($flag)
        return true ;
    return false ;
}

function get_static_routes()
{
    // Route::get('password/email', 'Auth\PasswordController@getEmail');
    // Route::post('password/email', 'Auth\PasswordController@postEmail');

    // // Password reset routes...
    // Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
    // Route::post('password/reset', 'Auth\PasswordController@postReset');

    // Route::get('auth/login', 'Auth\AuthController@getLogin');
    // Route::post('auth/login', 'Auth\AuthController@postLogin');
    // Route::get('auth/logout', 'Auth\AuthController@getLogout');

    // // Registration routes...
    // Route::get('auth/register', 'Auth\AuthController@getRegister');
    // Route::post('auth/register', 'Auth\AuthController@postRegister');

    Auth::routes();
    Route::get('logout_ad', 'FrontController@logoutadmin');
    Route::get('du_landing/{peroid?}/{lang?}', 'FrontController@du_landing');
    Route::get('du_landing_success', 'FrontController@du_landing_success');
    Route::get('DuSecureRedirect', 'FrontController@DuSecureRedirect');
    Route::get('lang/{lang}', ['as'=>'lang.switch', 'uses'=>'LanguageController@switchLang']);



    Route::group(['middleware'=> 'auth'],function(){
    Route::resource('static_translation','\App\Http\Controllers\StaticTranslationController');
    Route::get('videos/allData', 'VideosController@allData');
    Route::get('posts/allData', 'PostsController@allData');
    Route::get('audios/allData', 'AudiosController@allData');
    Route::get('datatablesProviderAudios/{id}', 'AudiosController@datatablesProviderAudios');
    Route::get('listazan', 'ListAzanController@index');


    });

    Route::group(['middleware' =>['auth',"role:super_admin"]],function(){
        Route::get('routes_v2','RouteController@create_v2') ;
        Route::get('routes/index_v2','RouteController@index_v2') ;
        Route::get('get_controller_methods','RouteController@get_methods_for_selected_controller') ;
        Route::post('routes/store_v2','RouteController@store_v2') ;


        Route::get('ldap','DashboardController@ldap') ;
        Route::get('export_DB','DashboardController@export_DB_backup') ;
        Route::get('database_backups','DashboardController@list_backups')  ;
        Route::get('delete_backup','DashboardController@delete_backup')  ;
        Route::get('import_DB','DashboardController@import_DB_backup') ;
        Route::get('download_backup','DashboardController@download_backup') ;
        Route::get('/clear-cache','DashboardController@clear_cache' );
        Route::get('admin/elfinder', 'ElfinderController@getIndex');
        Route::post('admin/elfinder', 'ElfinderController@getIndex');
        Route::get('admin/seed_manager', 'DashboardController@seed_manager');
        Route::post('admin/seed_tables', 'DashboardController@seed_tables');
        Route::get('JIC/index', 'FrontController@JICindex');
    });


    Route::post('delete_multiselect',function (Request $request){
        if (strlen($request['selected_list'])==0)
        {
            \Session::flash('failed',\Lang::get('messages.custom-messages.no_selected_item'));
            return back();
        }
        delete_multiselect($request) ;
        return back();
    });
    Route::get('get_table_ids','DashboardController@get_table_ids_list') ;
}

function get_dynamic_routes()
{
   $route = \Request::url() ;
   $request_method = strtolower(\Request::method()) ;
   $action = "" ;
   $checker = false ;
   $url_to = \URL::to('') ;
   $start_from = strpos($route,$url_to) ;
   for($i=strlen($url_to)+1;$i<strlen($route);$i++)
   {
       // ex : url = http://localhost/ivas_template_v2/users => so i want to skip all before users
       if(is_numeric($route[$i]))
       {
           if(!$checker){
               if($route[$i-1]=="/")
               {
                // it may be a route with name index_v2,without this validation it will be index_v{id}
                    $action .= "{id}" ;
                    // for the edit request , language/9/edit => language/{id}/edit
                    $checker = true ;
               }
               else
                   $action .= $route[$i] ;
           }
           else
               continue ;
       }
       else{
           $action .= $route[$i] ;
       }
   }
    try{
       $query = "SELECT * FROM routes
                      JOIN role_route ON routes.id = role_route.route_id
                      JOIN roles ON role_route.role_id = roles.id
                      WHERE routes.route = '".$action."' AND routes.method='".$request_method."'" ;
       $route_model = \DB::select($query);
       if(count($route_model) > 0)
       {
           dynamic_routes($route_model,true) ;
       }
       else{
           $query_2 = "SELECT * FROM routes
                            WHERE routes.route = '".$action."'
                            AND routes.method='".$request_method."'" ;
           $route_model = \DB::select($query_2);
           dynamic_routes($route_model,false) ;
       }
    }
    catch(Illuminate\Database\QueryException $e){

    }

}

function dynamic_routes($route_model,$found_roles)
{
    $roles = "" ;
    if(count($route_model)==0)
    {
        return ;
    }
    $route = $route_model[0]->route ;
    $controller_method =
    $route_model[0]->controller_name."@".$route_model[0]->function_name ;
    $route_method = $route_model[0]->method ;
    if($found_roles)
    {
         for($i= 0 ; $i < count($route_model) ; $i++)
         {
            $roles .= $route_model[$i]->name ;
            if($i < count($route_model) - 1 )
               $roles .= "|" ;
         }
        Route::group(['middleware' =>['auth',"role:".$roles]],
        function() use($route_model,$route_method,$route,$controller_method){
                if($route_method=="resource")
                    Route::resource($route,$controller_method) ;
                else if($route_method=="get")
                    Route::get($route,$controller_method) ;
                else if($route_method=="post")
                    Route::post($route,$controller_method) ;
                else if($route_method=="put")
                    Route::put($route,$controller_method) ;
                else if($route_method=="patch")
                    Route::patch($route,$controller_method) ;
                else if($route_method=="delete")
                    Route::delete($route,$controller_method) ;
        }) ;
    }
    else{
          Route::group(['middleware' =>['auth']],
        function() use($route_model,$route_method,$route,$controller_method){
                if($route_method=="resource")
                    Route::resource($route,$controller_method) ;
                else if($route_method=="get")
                    Route::get($route,$controller_method) ;
                else if($route_method=="post")
                    Route::post($route,$controller_method) ;
                else if($route_method=="put")
                    Route::put($route,$controller_method) ;
                else if($route_method=="patch")
                    Route::patch($route,$controller_method) ;
                else if($route_method=="delete")
                    Route::delete($route,$controller_method) ;
        }) ;
    }
 }

