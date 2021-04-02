<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Pendaftaran</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<?= base_url()?>/assets/css/main.css">
</head>


    
<body>
  <div class="body-images">
<div class="container body-body">
  <h1>Form Pendaftaran Killjoy Bootcamp</h1>
    <h2>Upgrade your skills here! Dont be Badut Anymore</h2>
    <div class="col-10 mt-5">
    <form action="/home/save" method=post>
    <?= csrf_field(); ?>
  <div class="form-group row">
    <label for="nama" class="col-sm-2 col-form-label">Nama</label>
    <div class="col-sm-10">
      <input type="Text" name="nama" class="form-control" id="nama" placeholder="Nama">
    </div>
  </div>
  <div class="form-group row">
    <label for="email" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="email" name="email" class="form-control" id="email" placeholder="Email">
    </div>  
  </div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Jenis Kelamin</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="jeniskelamin" id="gridRadios1" value="laki-laki" checked>
          <label class="form-check-label" for="gridRadios1">
            Laki - Laki
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="jeniskelamin" id="gridRadios2" value="perempuan">
          <label class="form-check-label" for="gridRadios2">
            Perempuan
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="jeniskelamin" id="gridRadios2" value="other">
          <label class="form-check-label" for="gridRadios2">
            Dan Lainnya
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-2">Agama</div>
     <div class="col-sm-10">
        <select name="agama" class="custom-select">
            <option selected>Pilih Agama</option>
            <option value="Islam">Islam</option>
            <option value="Kristen Protestan">Kristen Protestan</option>
            <option value="kristen Katolik">Kristen Katolik</option>
            <option value="budha">Budha</option>
            <option value="hindu">Hindu</option>
            <option value="khonghuchu">Khonghuchu</option>
            <option value="lainnya">Lainnya</option>
        </select>
    </div>
  </div>

<div class="form-group row">
    <label for="nama" class="col-sm-2 col-form-label">Alamat</label>
        <div class="col-sm-10">
        <textarea class="form-control" name="alamat" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
  </div>
  <div class="form-group row">
    <label for="nama" class="col-sm-2 col-form-label">Nick Valorant</label>
        <div class="col-sm-10">
        <input type="Text" name="nick" class="form-control" id="nama" placeholder="Nick Valorant">
    </div>
  </div>
  <div class="form-group row">
    <label for="nama" class="col-sm-2 col-form-label">Hastag</label>
        <div class="col-sm-10">
        <input type="Text" name="hastag" class="form-control" id="nama" placeholder="Hastag">
    </div>
  </div>
  <div class="form-group row">
    <label for="nama" class="col-sm-2 col-form-label">Main Hero</label>
        <div class="col-sm-10">
        <input type="Text" name="hero" class="form-control" id="nama" placeholder="Main Hero">
    </div>
  </div>

  <div class="form-group row">
    <div class="col-sm-2">Server</div>
     <div class="col-sm-10">
        <select class="custom-select" name="server">
        <option value="na">NA</option>
                <option value="latam">LATAM</option>
                <option value="eu">EU</option>
                <option value="kr">KR</option>
                <option value="ap">AP</option>
                <option value="br">BR</option>
        </select>
    </div>
  </div>

    <div class="form-group row " >
      <div class="col-sm-2"></div>
         <div class="col-sm-10 d-flex justify-content-start">
            <button type="submit" class="btn btn-primary">Sign in</button>
          </div>
            </div>
        </form>
    </div>
 </div>
</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02"></script>

</body>
</html>