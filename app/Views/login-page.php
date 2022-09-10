<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php  if(session()->getFlashdata('message')) echo session()->getFlashdata('message'); ?>
    <form action="" method="post">
        <input type="text" name="username" placeholder="username"><br>
        <input type="password" name="password" placeholder="password"><br><br>
        <input type="submit" name="submit" value="Login">
    </form>
</body>

</html>