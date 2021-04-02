<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;700&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="<?= base_url()?>/assets/css/main.css">
</head>
<body>
  <div class="container">
<?php if(session()->getFlashdata('pesan')): ?>
<?php endif; ?>
<table class="table" id="customers" >
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Nama</th>
      <th scope="col">Nickname#hastag</th>
      <th scope="col">Server</th>
      <th scope="col">Main Hero</th>
      <th scope="col">action</th>
    </tr>
  </thead>
  
  <?php foreach ($users as $u): ?>
  <tbody>
  <?php $i= 1 ; ?>
    <tr>
      <th scope="row"><?= $i++ ?></th>
      <td><?= $u['nama'];?></td>
      <td><?= $u['nick'];?>#<?= $u['hastag'];?></td>
      <td><?= $u['server'];?> </td>
      <td><?= $u['hero'];?> </td>
      <td>  <a href="/home/edit/<?= $u['id'];?>" class="btn btn-primary">edit</a>
            <form action="/home/delete/<?= $u['id'];?>" method="post" class="d-inline">
            <?php csrf_field() ?>
            <input type="hidden" name="_method" value ="DELETE">
            <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin');">Delete</button>    
            </form>

      </td>
    </tr>
  </tbody>
  <?php endforeach; ?>
</table>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02"></script>

</body>
</html>