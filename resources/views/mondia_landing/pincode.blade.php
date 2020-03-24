<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <form action="{{url('api/verify_pin')}}" method="POST">
        <input name="userToken" type="text" value="{{$userToken}}" hidden>
        <input name="msisdn" type="text" value="{{$response->msisdn}}" hidden>
        <input name="customerId" type="text" value="{{$response->customerId}}" hidden>
        <input name="custRequestId" type="text" value="{{$response->custRequestId}}" hidden>
        <input name="pincode" type="text">
        <input type="submit" value="send">
    </form>

</body>
</html>