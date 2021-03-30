<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Pendaftaran</title>
</head>
<body>
    <h1>Form Pendaftaran Killjoy Bootcamp</h1>
    <h2>Upgrade your skills here! Dont be Badut Anymore</h2>
<table>
	<tr>
		<td>Nama</td>
		<td>:</td>
        <td><input type="text" name="nama"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td>:</td>
        <td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>Jenis Kelamin</td>
		<td>:</td>
        <td><input type="radio" name="jeniskelamin" value="laki-laki">Laki - Laki
             <input type="radio" name="jeniskelamin" value="perempuan">Perempuan
             <input type="radio" name="jeniskelamin" value="others">Others
        </td>
	</tr>
	<tr>
		<td>Agama</td>
		<td>:</td>
        <td><select name="agama">
        <option value="islam">Islam</option>
        <option value="kristen katolik">Kristen Katolik</option>
        <option value="kristen protestan">Kristen Protestan</option>
        <option value="budha">Budha</option>
        <option value="hindu">Hindu</option>
        <option value="khonghuchu">Khonghuchu</option>
        <option value="lainnya">Lainnya</option>
        </td>
	</tr>
	<tr>
		<td>Alamat</td>
		<td>:</td>
        <td><input type="text" name="alamat"></td>

	</tr>
    <tr>
		<td>Nick Valorant</td>
		<td>:</td>
        <td><input type="text" name="nick"></td>

	</tr>
    <tr>
		<td>Hastag</td>
		<td>:</td>
        <td><input type="text" name="hastag"></td>

	</tr>
    <tr>
		<td>Main Hero</td>
		<td>:</td>
        <td><input type="text" name="hero"></td>

	</tr>
    <tr>
		<td>Server</td>
		<td>:</td>
        <td><select name="server">
        <option value="na">NA</option>
        <option value="latam">LATAM</option>
        <option value="eu">EU</option>
        <option value="kr">KR</option>
        <option value="ap">AP</option>
        <option value="br">BR</option>
        </td>
	</tr>
    <tr>
        <td>
        <button type="button">Daftar</button>
        </td>
    </tr>
</table>
</body>
</html>