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
                    <a href="<?= base_url('auth') ?>" class="logo">
                        <img src="assets/upload/logo.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="<?= base_url('home') ?>" class="active">Home</a></li>
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
  <section id="section-1">
    <div class="content-slider">
        <?php $i = 1; foreach ($caraousel as $item): ?>
            <input type="radio" id="banner<?= $i ?>" class="sec-1-input" name="banner" <?= $i === 1 ? 'checked' : '' ?>>
        <?php $i++; endforeach; ?>

        <div class="slider">
            <?php $i = 1; foreach ($caraousel as $item): ?>
                <div id="top-banner-<?= $i ?>" class="banner" 
                     style="background: url('<?= base_url("assets/upload/caraousel/" . $item['foto']) ?>') no-repeat center center; background-size: cover;">
                </div>
            <?php $i++; endforeach; ?>
        </div>

        <nav>
            <div class="controls">
                <?php for ($j = 1; $j <= count($caraousel); $j++): ?>
                    <label for="banner<?= $j ?>">
                        <span class="progressbar"><span class="progressbar-fill"></span></span>
                        <span class="text"><?= $j ?></span>
                    </label>
                <?php endfor; ?>
            </div>
        </nav>
    </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->
  
  <div class="visit-country">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="section-heading">
            <h2>KULINER YOGYAKARTA</h2>
            <p>"Nikmati cita rasa khas Yogyakarta yang melegenda! Mulai dari gudeg manis dengan sate klatak, hingga oseng-oseng mercon yang pedas menggoda. 
              Setiap hidangan dibuat dengan resep tradisional yang diwariskan turun-temurun, dan juga menyajikan minuman."</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8">
          <div class="items">
            <div class="row">
              <?php foreach($konten as $aa) { ?>
              <div class="col-lg-12">
                <div class="item">
                  <div class="row">
                    <div class="col-lg-4 col-sm-5">
                      <div class="image">
                        <img src="<?= base_url('assets/upload/konten/'.$aa['foto']) ?>" alt="">
                      </div>
                    </div>
                    <div class="col-lg-8 col-sm-7">
                      <div class="right-content">
                        <h4><?= $aa['judul']; ?></h4>
                        <span><?= $aa['nama_kategori']; ?></span>
                        <p><?= $aa['alamat'] ?></p>
                        <ul class="info">
                          <li><i class="fa fa-user"></i><?= $aa['username']; ?></li>
                          <li><i class="fa-solid fa-money-check-dollar"></i><?= $aa['harga']; ?></li>
                        </ul>
                        <div class="text-button">
                          <a href="<?= base_url('home/artikel/'.$aa['slug']) ?>">Selengkapnya</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>
              
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
    function bannerSwitcher() {
      next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
      if (next.length) next.prop('checked', true);
      else $('.sec-1-input').first().prop('checked', true);
    }

    var bannerTimer = setInterval(bannerSwitcher, 5000);

    $('nav .controls label').click(function() {
      clearInterval(bannerTimer);
      bannerTimer = setInterval(bannerSwitcher, 5000)
    });
  </script>

  </body>

</html>
