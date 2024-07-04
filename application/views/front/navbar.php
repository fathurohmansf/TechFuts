<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Navbar Example</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top border-bottom bg-white">
  <div class="container">
    <a class="navbar-brand" href="<?php echo base_url() ?>" style="padding:0;">
      <img src="<?php echo base_url('assets/images/company/').$company_data->foto.$company_data->foto_type ?>" alt="<?php echo $company_data->company_name ?>" width="85px">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="nav nav-pills">
        <li class="nav-item">
          <a class="nav-link <?php if($this->uri->segment(1) == ""){echo "active";} ?>" href="<?php echo base_url() ?>">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if($this->uri->segment(1) == "event"){echo "active";} ?>" href="<?php echo base_url('event') ?>">Event</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if($this->uri->segment(1) == "gallery"){echo "active";} ?>" href="<?php echo base_url('gallery/album') ?>">Foto</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle <?php if($this->uri->segment(1) == "about" || $this->uri->segment(1) == "contact"){echo "active";} ?>" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Profil</a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li>
              <a class="dropdown-item <?php if($this->uri->segment(1) == "about"){echo "active";} ?>" href="<?php echo base_url('about') ?>">Tentang Kami</a>
            </li>
            <li>
              <a class="dropdown-item <?php if($this->uri->segment(1) == "contact"){echo "active";} ?>" href="<?php echo base_url('contact') ?>">Hubungi Kami</a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if($this->uri->segment(1) == "cart" && $this->uri->segment(2) == ""){echo "active";} ?>" href="<?php echo base_url('cart') ?>">Keranjang</a>
        </li>
      </ul>

      <ul class="navbar-nav ms-auto">
        <?php if($this->session->userdata('usertype') != NULL){ ?>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Hi, <?php echo $this->session->userdata('username') ?>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
              <li><a class="dropdown-item" href="<?php echo base_url('cart/history') ?>">Riwayat Booking</a></li>
              <li><a class="dropdown-item" href="<?php echo base_url('auth/edit_profil/').$this->session->userdata('user_id') ?>">Edit Profil</a></li>
              <li><a class="dropdown-item" href="<?php echo base_url('auth/profil') ?>">Profil Saya</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="<?php echo base_url('auth/logout') ?>">Logout</a></li>
            </ul>
          </li>
        <?php } else { ?>
          <li class="nav-item"><a class="nav-link" href="<?php echo base_url('auth/register') ?>"><b style="font-size: 13px">Register</b></a></li>
          <li class="nav-item"><a class="nav-link" href="<?php echo base_url('auth/login') ?>"><b style="font-size: 13px">Login</b></a></li>
        <?php } ?>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!-- Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
