<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title><?= $konfig->judul_website; ?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url('assets/woox/') ?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<?= base_url('assets/woox/') ?>assets/css/fontawesome.css">
    <link rel="stylesheet" href="<?= base_url('assets/woox/') ?>assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="<?= base_url('assets/woox/') ?>assets/css/owl.css">
    <link rel="stylesheet" href="<?= base_url('assets/woox/') ?>assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
  </head>

<body>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="<?= base_url('home') ?>">Home</a></li>
                        <?php foreach($kategori as $kate){ ?>
                        <li>
                            <a href="<?= base_url('home/kategori/'.$kate['id_kategori']) ?>">
                                <?= $kate['nama_kategori'] ?>
                            </a>
                        </li>
                        <?php } ?>
                    </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
  <div class="about-main-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
            <div class="blur-bg"></div>
            <h2><?= $konten->judul; ?></h2>
            <div class="line-dec"></div>
            <p><?= $konten->keterangan; ?></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** Main Banner Area End ***** -->


  <div class="more-about">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="left-image" style="width: 60vh;height: 60vh">
            <img src="<?= base_url('assets/upload/konten/'.$konten->foto) ?>" alt="">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="section-heading">
            <h2><?= $konten->judul; ?></h2>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <div class="info-item">
                <h4>Lokasi</h4>
                <span><?= $konten->alamat; ?></span>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="info-item">
                <h4>Harga</h4>
                <span><?= $konten->harga; ?></span>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="info-item">
                <h4>Jam Operasional</h4>
                <span><?= $konten->jam_operasional; ?></span>
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="call-to-action" style="background-color: #04364e; color: #fff; padding: 40px 20px;">
    <div class="container">
      <div class="row">
        <!-- Kolom Profil -->
        <div class="col-lg-4">
            <h3 style="color: #fff;margin-bottom:5px;"><?= $konfig->judul_website; ?></h3>
            <p style="color: #fff;"><?= $konfig->profil_website; ?></p>
            <div style="display: flex; gap: 10px;">
                <a href="<?= $konfig->facebook; ?>" style="color: #fff; font-size: 24px;"><i class="fab fa-facebook"></i></a>
                <a href="<?= $konfig->instagram; ?>" style="color: #fff; font-size: 24px;"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
        <!-- Kolom Kontak -->
        <div class="col-lg-4">
            <h3 style="color: #fff;margin-bottom:5px;">Contact Us</h3>
            <ul style="list-style: none; padding: 0;margin-bottom:5px;">
                <li><strong>Alamat : </strong><?= $konfig->alamat; ?></li>
                <li><strong>Email : </strong> <a href="mailto:contoh@gmail.com" style="color: #fff;"><?= $konfig->email; ?></a></li>
                <li><strong>Phone : </strong> <?= $konfig->no_wa; ?></li>
            </ul>
        </div>
        <!-- Kolom Quick Links -->
        <div class="col-lg-4">
            <h3 style="color: #fff;margin-bottom:5px;">Quick Links</h3>
            <ul style="list-style: none; padding: 0;">
                <li><a href="<?= base_url() ?>" style="color: #fff; text-decoration: none;">Home</a></li>
                <?php foreach ($kategori as $kategori) { ?>
                <li><a href="<?= base_url('home/kategori/'.$kategori['id_kategori']) ?>" style="color: #fff; text-decoration: none;"><?= $kategori['nama_kategori'] ?></a></li>
                <?php } ?>
            </ul>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2024 <a href="<?= base_url('') ?>">Kuliner</a> Company. All rights reserved.
        </div>
      </div>
    </div>
  </footer>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="<?= base_url('assets/woox/') ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?= base_url('assets/woox/') ?>vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="<?= base_url('assets/woox/') ?>assets/js/isotope.min.js"></script>
  <script src="<?= base_url('assets/woox/') ?>assets/js/owl-carousel.js"></script>
  <script src="<?= base_url('assets/woox/') ?>assets/js/wow.js"></script>
  <script src="<?= base_url('assets/woox/') ?>assets/js/tabs.js"></script>
  <script src="<?= base_url('assets/woox/') ?>assets/js/popup.js"></script>
  <script src="<?= base_url('assets/woox/') ?>assets/js/custom.js"></script>

  <script>
    $(".option").click(function(){
      $(".option").removeClass("active");
      $(this).addClass("active"); 
    });
  </script>

  </body>

</html>