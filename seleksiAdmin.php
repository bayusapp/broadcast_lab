<?php

$host = "localhost";
$user = "root";
$pass = "";
$db   = "caslab";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
  die('Koneksi Gagal: ' . mysqli_connect_error());
}

$hari       = 'Sabtu, 21 Desember 2024';
$waktu      = '13:00 - selesai';
$tempat     = 'Laboratorium A5';
$dresscode  = 'Bebas, sopan, rapi';

$query = "SELECT * FROM kandidat WHERE status_seleksi = '2' AND rumpun_lab = 'Komputer'";
$data = mysqli_query($conn, $query);
while ($d = mysqli_fetch_assoc($data)) {
  $pesan = "*UNDANGAN TES PRAKTIK CALON ASISTEN LABORATORIUM D3 REKAYASA PERANGKAT LUNAK APLIKASI TA 2024/2025*
  
";
  $pesan .= "Selamat " . greetings() . " " . $d['nama_lengkap'] . ",";
  $pesan .= "

Setelah dilaksanakan Tes Tertulis pada tanggal 14 Desember 2024, maka selanjutnya akan dilaksanakan *Tes Praktik* yang akan dilaksanakan pada:

*Hari/Tanggal: {$hari}*
*Waktu: {$waktu}*
*Tempat: {$tempat}*
*Dresscode: {$dresscode}*

Mohon konfirmasi kehadiran Anda melalui pesan singkat ini.
Terima kasih

Salam,
Unit Laboratorium/Bengkel/Studio Fakultas Ilmu Terapan, Universitas Telkom
    ";
  //   $pesan .= "

  // Berdasarkan lampiran yang telah Anda submit ke Google Form terkait Rekruitasi Asisten Laboratorium D3 Rekayasa Perangkat Lunak Aplikasi Tahun 2024/2025, Anda dinyatakan *LOLOS ADMINISTRASI*.

  // Namun, karena belum melaksanakan tes tertulis maka *tes tertulis akan dilaksanakan bersamaan dengan tes praktik* yang akan dilaksanakan pada:
  // *Hari/Tanggal: {$hari}*
  // *Waktu: {$waktu}*
  // *Tempat: {$tempat}*
  // *Dresscode: {$dresscode}*

  // Mohon konfirmasi kehadiran Anda melalui pesan singkat ini.
  // Terima kasih

  // Salam,
  // Unit Laboratorium/Bengkel/Studio Fakultas Ilmu Terapan, Universitas Telkom
  //   ";
  kirimWA($pesan, $d['kontak_caslab']);
  echo "Sukses dikirim ke " . $d['nama_lengkap'] . "<hr>";
}

function kirimWA($pesan, $tujuan)
{
  $pesan = str_replace(' ', ' ', $pesan);

  $body = array(
    "api_key" => "46dff53c12f68ebdd1c4f7a7a517f211a79d1d42",
    "receiver" => $tujuan,
    "data" => array("message" => $pesan)
  );

  $curl = curl_init();
  curl_setopt_array($curl, [
    CURLOPT_URL => "https://waps.bayusapp.com/api/send-message",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "POST",
    CURLOPT_POSTFIELDS => json_encode($body),
    CURLOPT_HTTPHEADER => [
      "Accept: */*",
      "Content-Type: application/json",
    ],
  ]);

  $response = curl_exec($curl);

  curl_close($curl);
  echo $response;
  sleep(7);
}

function greetings()
{
  date_default_timezone_set('Asia/Jakarta');
  $jam = date('H:i');

  if ($jam > '05:30' && $jam < '10:00') {
    $salam = 'Pagi';
  } elseif ($jam >= '10:00' && $jam < '15:00') {
    $salam = 'Siang';
  } elseif ($jam < '18:00') {
    $salam = 'Sore';
  } else {
    $salam = 'Malam';
  }

  return $salam;
}
