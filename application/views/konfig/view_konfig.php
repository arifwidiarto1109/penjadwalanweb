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
    <div class="title_left">
      <h3>Konfigurasi</h3>
    </div>
  </div>

  <div class="clearfix"></div>

  <div class="alert alert-<?=$notif_style?>" <?=$display?>>
    <button data-dismiss="alert" class="close" type="button"><i class="fa fa-remove"></i></button>
    <?=$notif_message?>
  </div>

  <div class="table-responsive">
    <table class="table table-striped">
      <thead>
        <tr>
          <th width="30px">No</th>
          <th>Nama</th>
          <th>Nilai</th>
          <th style="width:70px;text-align:center;">Aksi</th>
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
              <td><?=$value['nilai']?></td>
              <td align="center">
                <a href="<?=$url_edit.'?id='.$value['id']?>"><button class="btn btn-xs  btn-warning"><i class="fa fa-edit"></i> Ubah </button></a>
              </td>
            </tr>
          <?php
          }
        }else{
          ?>
          <tr>
            <td colspan="4" style="text-align:center;font-style:oblique"> -- Tidak ada data --</td>
          </tr>
          <?php
        }
        ?>
      </tbody>
    </table>
  </div>

  <br><hr>
  <div class="clearfix"></div>

</div>
