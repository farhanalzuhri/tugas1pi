<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<?php if(session()->getFlashdata('pesan')): ?>
<?php endif; ?>

<table class="table">
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
      <td>  <button><a href="/home/edit/<?= $u['id'];?>" class="btn btn-danger">edit</a></button>
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
  
</body>
</html>