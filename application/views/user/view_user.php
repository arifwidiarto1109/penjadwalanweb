<?php
if ($this->session->userdata('level') !='admin') {
  redirect('home');
}
?>
<div class="">

  <div class="page-title">
    <div class="">
      <ul class="breadcrumb">
        <li><a href="<?=base_url();?>"><i class="fa fa-home"></i> Beranda </a>
        <li class="active"><?=$title;?></li>
          <div class="dropdown pull-right">
            <button class="btn btn-warning btn-default dropdown-toggle btn-sm" style="background-color:#FFA200;" data-toggle="dropdown"><?=$this->session->userdata('username');?>
            <span class="caret"></span></button>
            <ul class="dropdown-menu">
              <li class="divider"></li>
              <li><a href="<?=base_url('auth/logout')?>"><i class="fa fa-sign-out"></i> Keluar </a></li>
              <li class="divider"></li>
            </ul>
          </div>
      </ul>
    </div>
  </div>

  <div class="clearfix"></div>

    <!--Search Form-->
    <form method="post" action="<?=base_url() . 'pengelolaan/user'?>">
      <div class="title_left">
        <div class="col-md-3 col-sm-4 col-xs-12 form-group pull-left top_search">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for..." name="search_query" value="<?=isset($search_query) ? $search_query : '' ;?>">
            <span class="input-group-btn">
              <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
            </span>
          </div>
        </div>
      </div>
      <div class="title_right pull-right">
        <a href="<?=$url_add?>">
          <button type="button" class="btn  btn-primary"><i class="fa fa-plus-circle"></i> Data Baru </button>
        </a>
      </div>
    </form>
    <!--Search Form-->

  <div class="clearfix"></div>

    <!--Table of content-->
    <div class="alert alert-<?=$notif_style?>" <?=$display?>>
      <button data-dismiss="alert" class="close" type="button"><i class="fa fa-remove"></i></button>
      <?=$notif_message?>
    </div>

    <div class="table-responsive">
    <table class="table">
      <thead>
        <tr>
          <th>No</th>
          <th>Nama</th>
          <th>Alamat email</th>
          <th>Kata Sandi</th>
          <th>Level</th>
          <th style="width:150px;text-align:center;">Aksi</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $no = $filter['start']+1;
        if (!empty($data)) {
          foreach ($data as $key => $value) {
            ?>
            <tr>
              <td><?=$no++?></td>
              <td><?=$value['nama']?></td>
              <td><?=$value['email']?></td>
              <td><?=$value['pwd']?></td>
              <td><?=$value['level']?></td>
              <td align="center">
                <a href="<?=$url_edit.'?id='.$value['id']?>"><button class="btn btn-xs  btn-warning"><i class="fa fa-edit"></i> Ubah </button></a>
                <a href="<?=$url_del.'/'.$value['id']?>" onClick="return confirm('Anda yakin ingin menghapus data ini ?')"><button class="btn btn-xs  btn-danger"><i class="fa fa-trash"></i> Hapus </button></a>
              </td>
            </tr>
            <?php
          }
        }else{
          $filter['start'] = $filter['start'] - 1;
          ?>
          <tr>
            <td colspan="7" style="text-align:center;font-style:oblique"> -- Tidak ada data --</td>
          </tr>
          <?php
        }
        ?>
      </tbody>
    </table>
    </div>

    <div class="">
      <span class="badge">Showing <?=$filter['start']+1?> to <?=($no-1)?> of <?=($jumlah_data)?> entries</span>
      <ul style="margin:0px" class="pagination pull-right"><?=$paging?></ul>
    </div>

    <!--Table of content-->

  <br><hr>
  <div class="clearfix"></div>

</div>
