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
    <h2>login</h2>


<fieldset>
      <form  action="{{ url('/login') }}" method="post">
        {{ csrf_field() }}
        <label>email</label>
        <input type="text" name="email" placeholder="username"><br>
        <label>password</label>
        <input type="password" name="password" placeholder="password" required><br>
        <input type="submit" value="Submit" name="submit">
        <a href="{{url('/register')}}">registor</a>
      </form>

    </fieldset>
  
    <script type="text/javascript">
		var isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
		var element = document.getElementById('text');
        var x;
		if (isMobile) {
            x="mobile";
		} else {
            x="desktop";
		}
        

        var xhttp;
   
 
 
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     

    }
  };

  xhttp.open("GET", "device?q="+x, true);
  xhttp.send(); 
	</script>

</body>
</html>
