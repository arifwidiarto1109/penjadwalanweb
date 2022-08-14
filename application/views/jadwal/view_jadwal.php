<div class="page-title">
<div class="">
  <ul class="breadcrumb">
    <li><a href="<?php echo base_url();?>"><i class="fa fa-home"></i> Beranda</a>
    <li class="active"><?php echo $title;?></li>
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

<div class="">
	<h3>Jadwal Pelajaran</h3><hr>
</div>

<div class="alert alert-<?=$notif_style; ?>" <?=$display; ?>>
	<button data-dismiss="alert" class="close" type="button"><i class="icon-remove"></i></button>
	<?=$notif_message; ?>
</div>

<!--Search Form-->
<form method="post" action="<?=base_url() . 'penjadwalan/jadwal_list'; ?>">
  <div class="title_left">
    <div class="col-md-3 col-sm-4 col-xs-12 form-group pull-right top_search">
      <div class="input-group">
        <input type="text" class="input-sm form-control" placeholder="Search for..." name="search_query" value="<?=isset($search_query) ? $search_query : '' ;?>">
        <span class="input-group-btn">
          <button class="btn btn-sm btn-default" type="submit"><i class="fa fa-search"></i></button>
        </span>
      </div>
    </div>
  </div>
	<div class="">
		<?php if($this->session->userdata('level')=='admin')
		{ ?>
		<a href="<?php echo base_url() . 'penjadwalan/generate_jadwal';?>">
		  <button type="button" class="btn btn-sm  btn-primary"><i class="fa fa-plus-circle"></i> Generate </button>
		</a>
		<a href="<?php echo base_url() . 'penjadwalan/reset_jadwal';?>">
		  <button type="button" class="btn btn-sm  btn-danger"><i class="fa fa-trash"></i> Reset </button>
		</a>
		<?php } ?>

		<a href="<?=$url_cetak_jadwal?>" target="_blank">
			<button type="button" class="btn btn-sm  btn-info"><i class="fa fa-print"></i> Cetak</button>
		</a>
		<?php if($this->session->userdata('level')=='admin' || $this->session->userdata('level')=='kepsek')
		{ ?>
		<a href="<?=$url_cetak_laporan?>" target="_blank">
			<button type="button" class="btn btn-sm  btn-info"><i class="fa fa-file-text"></i> Laporan</button>
		</a>
  <?php } ?>

		<!-- <a href="<?=base_url() . 'penjadwalan/jadwal_list';?>" data-toggle="tooltip" data-placement="top" title="List Jadwal" class="btn btn-sm  btn-default">
			<i class="fa fa-bars" ></i>
		</a> -->
	</div>
</form>
<!--Search Form-->

<div class="table-responsive" style="max-height:800px;overflow-y:auto;">
<table class="table" style="max-width:1000%; width:500%; ">
	<?php echo $table_header; ?>
	<?php echo $table_body; ?>
</table>
</div>
<hr>
<div class="clearfix"></div>
