<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <form action="{{url('verify_pin')}}" method="POST">
        @csrf
        <input name="pincode" type="text">
        <input type="submit" value="send">
    </form>

</body>
</html>