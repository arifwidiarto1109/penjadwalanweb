<div class="">
  <div class="page-title">

    <div class="">
      <ul class="breadcrumb">
        <li><a href="<?=base_url();?>"><i class="fa fa-home"></i> Beranda </a>
        <li><a href="<?=base_url();?>pengelolaan/ruang">Ruang</a>
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

    <!--Main content-->
    <div class="alert alert-<?=$notif_style?>" <?=$display?>>
      <button data-dismiss="alert" class="close" type="button"><i class="icon-remove"></i></button>
      <?=$notif_message?>
    </div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Ruang <small><?=$title;?></small></h2>
            <div class="clearfix"></div>
          </div>
          <br>

          <div class="x_content">
          <form action="<?=$url_submit?>" method="post" class="form-horizontal form-label-left" novalidate>

            <div class="item form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-12">Kode Ruang <span class="required">*</span></label>
              <div class="col-md-2 col-sm-2 col-xs-12">
                <input type="text" name="kode" class="form-control input-sm col-md-3 col-xs-12" placeholder="kode mata pelajaran" required="required" value="<?=$data['kode']?>">
              </div>
            </div>

            <div class="item form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-12">Nama Ruang <span class="required">*</span></label>
              <div class="col-md-4 col-sm-4 col-xs-12">
                <input type="text" name="nama" class="form-control input-sm col-md-5 col-xs-12" placeholder="nama mata pelajaran" required="required" value="<?=$data['nama']?>">
              </div>
            </div>

            <div class="item form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-12">Kapasitas <span class="required">*</span></label>
              <div class="col-md-1 col-sm-1 col-xs-12">
                <input type="number" name="kapasitas" required="required" data-validate-minmax="10,200" class="form-control input-sm col-md-2 col-xs-12" placeholder="1, 2,.." value="<?=$data['kapasitas']?>">
              </div>
            </div>

            <div class="item form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-12">Ruang Cadangan <span class="required">*</span></label>
              <div class="col-md-2 col-sm-2 col-xs-12">
                <?=$rd_iscad?>
              </div>
            </div>

            <br>
            <div class="form-group">
              <input type="hidden" name="id" value="<?=$filter['id']?>"/>
              <div class="col-md-6 col-md-offset-3">
                <button type="submit" class="btn  btn-primary">Simpan</button>
                <button type="button" class="btn  btn-default" onclick="history.back();">Kembali</button>
              </div>
            </div>

          </form>
          </div>

        </div>
      </div>
    </div>

    <!--End Main content-->

  <br><hr>
  <div class="clearfix"></div>

</div>
