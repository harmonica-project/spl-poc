<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>A Basic HTML5 Template</title>
  <meta name="description" content="A simple HTML5 Template for new projects.">
  <meta name="author" content="SitePoint">

  <link rel="stylesheet" href="css/styles.css?v=1.0">

</head>

<body>
<p>Send data to BC</p>

    <form>

        <input type="text" id="data">

        <input type="submit" value="send data to BC" onclick="sendToBC()"/>

    </form>


    <hr>

    <p>Get Data From BC</p>
    <form method="POST">

        <input type="text" id="data">

        <input type="submit" value="get Data" />

    </form>



  
  <script src="js/scripts.js"></script>
</body>
</html>
