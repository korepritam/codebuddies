<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ecommerce</title>
</head>
<body>
    <h2>registration</h2>
    <fieldset>
<form action="{{url('/register')}}" method="post">
    {{csrf_field()}}<br>
    <label>name</label>
    <input type="text" name="Name" >
   <br>
    <label>address</label>
    <input type="text" name="address" >
    <br>
    <label>email</label>
    <input type="text" name="email" >
    <br>
    <label>password</label>
    <input type="password" name="password" required >
    <br>
    <label>age</label>
    <input type="text" name="age">
<br>
    <input type="submit" name="submit">
    
</form>
</fieldset>
</body>

</html>