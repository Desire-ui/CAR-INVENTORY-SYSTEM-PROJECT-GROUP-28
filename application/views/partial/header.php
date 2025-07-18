<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<base href="<?php echo base_url();?>" />
	
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

	
		<title>
		    <?php echo $this->config->item('company'); ?> 
		</title>
		
		
		<style>
		
	/*	* {
    font-family: 'Inter', sans-serif !important;
    box-sizing: border-box !important;
   
}*/
.navbar-nav {
	text-align: center !important;
	margin: 0 auto !important;
	display: inline-block !important;
	float: none !important;
	height: 100px !important;
}

.navbar-collapse {
	text-align: center !important;
}

.navbar-nav > li {
	display: inline-block !important;
	float: none !important;
	margin-top: 0px !important;
}

button {
    background: maroon !important;
    color: white !important;
     border: maroon !important;
}

.filter-option-inner-inner {
    color: white !important;
}
.btn {
    color: white !important;
}
/* Primary Button */
.btn-primary {
    background-color: #1E88E5 !important;
    border-color: white !important;
    color: white !important;
}

.btn-primary:hover {
    background-color: #1565C0 !important;
    border-color: #1565C0 !important;
    color: white !important;
}

/* Success Button */
.btn-success, {
    background-color: #43A047 !important;
    border-color: white !important;
    color: white !important;
}

.btn-success:hover {
    background-color: #2E7D32 !important;
    border-color: #2E7D32 !important;
}

/* Warning Button */
.btn-warning {
    background-color: #FB8C00 !important;
    border-color: #FB8C00 !important;
    color: #fff !important;
}

.btn-warning:hover {
    background-color: #EF6C00 !important;
    border-color: #EF6C00 !important;
}

/* Danger Button */
.btn-danger {
    background-color: #E53935 !important;
    border-color: #E53935 !important;
}

.btn-danger:hover {
    background-color: #C62828 !important;
    border-color: #C62828 !important;
}

/* Info Button */
.btn-info  {
    background-color: #00ACC1 !important;
    border-color: #00ACC1 !important;
    color: white !important;
}

.btn-info:hover {
    background-color: #00838F !important;
    border-color: #00838F !important;
}

		    	a, div {
		  color: black !important;
		   font-family: 'Inter', sans-serif !important;
    box-sizing: border-box !important;
		}
	
		</style>
	
	
	<!--
	<title><?php echo $this->config->item('company') . ' | ' . $this->lang->line('common_powered_by') . ' OSPOS ' . $this->config->item('application_version') ?></title>
	-->
	
	
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="<?php echo 'dist/bootswatch/' . (empty($this->config->item('theme')) ? 'flatly' : $this->config->item('theme')) . '/bootstrap.min.css' ?>"/>

	<?php if ($this->input->cookie('debug') == 'true' || $this->input->get('debug') == 'true') : ?>
		<!-- bower:css -->
		<link rel="stylesheet" href="bower_components/jquery-ui/themes/base/jquery-ui.css" />
		<link rel="stylesheet" href="bower_components/bootstrap3-dialog/dist/css/bootstrap-dialog.min.css" />
		<link rel="stylesheet" href="bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.css" />
		<link rel="stylesheet" href="bower_components/smalot-bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" />
		<link rel="stylesheet" href="bower_components/bootstrap-select/dist/css/bootstrap-select.css" />
		<link rel="stylesheet" href="bower_components/bootstrap-table/dist/bootstrap-table.css" />
		<link rel="stylesheet" href="bower_components/bootstrap-table/dist/extensions/sticky-header/bootstrap-table-sticky-header.css" />
		<link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
		<link rel="stylesheet" href="bower_components/chartist/dist/chartist.min.css" />
		<link rel="stylesheet" href="bower_components/chartist-plugin-tooltip/dist/chartist-plugin-tooltip.css" />
		<link rel="stylesheet" href="bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" />
		<link rel="stylesheet" href="bower_components/bootstrap-toggle/css/bootstrap-toggle.min.css" />
		<!-- endbower -->
		<!-- start css template tags -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.autocomplete.css"/>
		<link rel="stylesheet" type="text/css" href="css/invoice.css"/>
		<link rel="stylesheet" type="text/css" href="css/ospos_print.css"/>
		<link rel="stylesheet" type="text/css" href="css/ospos.css"/>
		<link rel="stylesheet" type="text/css" href="css/popupbox.css"/>
		<link rel="stylesheet" type="text/css" href="css/receipt.css"/>
		<link rel="stylesheet" type="text/css" href="css/register.css"/>
		<link rel="stylesheet" type="text/css" href="css/reports.css"/>
		<!-- end css template tags -->
		<!-- bower:js -->
		<script src="bower_components/jquery/dist/jquery.js"></script>
		<script src="bower_components/jquery-form/src/jquery.form.js"></script>
		<script src="bower_components/jquery-validate/dist/jquery.validate.js"></script>
		<script src="bower_components/jquery-ui/jquery-ui.js"></script>
		<script src="bower_components/bootstrap/dist/js/bootstrap.js"></script>
		<script src="bower_components/bootstrap3-dialog/dist/js/bootstrap-dialog.min.js"></script>
		<script src="bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.js"></script>
		<script src="bower_components/smalot-bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
		<script src="bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
		<script src="bower_components/bootstrap-table/dist/bootstrap-table.min.js"></script>
		<script src="bower_components/bootstrap-table/dist/extensions/export/bootstrap-table-export.min.js"></script>
		<script src="bower_components/bootstrap-table/dist/extensions/mobile/bootstrap-table-mobile.min.js"></script>
		<script src="bower_components/bootstrap-table/dist/extensions/sticky-header/bootstrap-table-sticky-header.min.js"></script>
		<script src="bower_components/moment/moment.js"></script>
		<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
		<script src="bower_components/es6-promise/es6-promise.js"></script>
		<script src="bower_components/file-saver/dist/FileSaver.min.js"></script>
		<script src="bower_components/html2canvas/build/html2canvas.js"></script>
		<script src="bower_components/jspdf/dist/jspdf.debug.js"></script>
		<script src="bower_components/jspdf-autotable/dist/jspdf.plugin.autotable.js"></script>
		<script src="bower_components/tableExport.jquery.plugin/tableExport.js"></script>
		<script src="bower_components/chartist/dist/chartist.min.js"></script>
		<script src="bower_components/chartist-plugin-pointlabels/dist/chartist-plugin-pointlabels.min.js"></script>
		<script src="bower_components/chartist-plugin-tooltip/dist/chartist-plugin-tooltip.min.js"></script>
		<script src="bower_components/chartist-plugin-barlabels/dist/chartist-plugin-barlabels.min.js"></script>
		<script src="bower_components/remarkable-bootstrap-notify/bootstrap-notify.js"></script>
		<script src="bower_components/js-cookie/src/js.cookie.js"></script>
		<script src="bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.js"></script>
		<script src="bower_components/bootstrap-toggle/js/bootstrap-toggle.min.js"></script>
		<!-- endbower -->
		<!-- start js template tags -->
		<script type="text/javascript" src="js/clipboard.min.js"></script>
		<script type="text/javascript" src="js/imgpreview.full.jquery.js"></script>
		<script type="text/javascript" src="js/manage_tables.js"></script>
		<script type="text/javascript" src="js/nominatim.autocomplete.js"></script>
		<!-- end js template tags -->
	<?php else : ?>
		<!--[if lte IE 8]>
		<link rel="stylesheet" media="print" href="dist/print.css" type="text/css" />
		<![endif]-->
		<!-- start mincss template tags -->
		<link rel="stylesheet" type="text/css" href="dist/jquery-ui/jquery-ui.min.css"/>
		<link rel="stylesheet" type="text/css" href="dist/opensourcepos.min.css?rel=88e63d8098"/>
		<!-- end mincss template tags -->

		<!-- Tweaks to the UI for a particular theme should drop here  -->
	<?php if ($this->config->item('theme') != 'flatly' && file_exists($_SERVER['DOCUMENT_ROOT'] . '/public/css/' . $this->config->item('theme') . '.css')) { ?>
		<link rel="stylesheet" type="text/css" href="<?php echo 'css/' . $this->config->item('theme') . '.css' ?>"/>
	<?php } ?>

		<!-- start minjs template tags -->
		<script type="text/javascript" src="dist/opensourcepos.min.js?rel=115cebf615"></script>
		<!-- end minjs template tags -->
	<?php endif; ?>

	<?php $this->load->view('partial/header_js'); ?>
	<?php $this->load->view('partial/lang_lines'); ?>

	<style type="text/css">
		html {
			overflow: auto;
		}
	</style>
</head>

<body>
	<div class="wrapper" >
		<div class="topbar" style="background: #F4F6F8 !important; border-bottom: 1px solid darkgray">
			<div class="container" style="background: #F4F6F8 !important;">
				<div class="navbar-left" style="color: black !important">
					<div id="liveclock"><?php echo date($this->config->item('dateformat') . ' ' . $this->config->item('timeformat')) ?></div>
				</div>

				<div class="navbar-right" style="margin:0" style="background: #F4F6F8 !important;">
					<?php echo anchor('home/change_password/'.$user_info->person_id, $user_info->first_name . ' ' . $user_info->last_name, array('class' => 'modal-dlg', 'data-btn-submit' => $this->lang->line('common_submit'), 'title' => $this->lang->line('employees_change_password'))); ?>
					<?php echo '  |  ' . ($this->input->get('debug') == 'true' ? $this->session->userdata('session_sha1') . '  |  ' : ''); ?>
					<a href="#" onclick="$.post('<?php echo site_url('home/logout'); ?>');"><?php echo $this->lang->line('login_logout');?></a>
				</div>
					<!--
				<div class="navbar-center" style="text-align:center">
				 Altech
				</div>
				-->
			
				<div class="navbar-center"  style="text-align:center">
					<strong><?php echo $this->config->item('company'); ?></strong>
				</div>
				
				
			</div>
		</div>

		<div class="navbar navbar-default" role="navigation" style="background: #F4F6F8 !important;">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<a class="navbar-brand hidden-sm" href="<?php echo site_url(); ?>"><?php echo $this->config->item('company'); ?></a>
				</div>
				
				<br>

			<div class="navbar-collapse collapse">
	<ul class="nav navbar-nav ">
	<?php foreach($allowed_modules as $module): ?>
	<?php 
		$module_name = trim($this->lang->line("module_" . $module->module_id));

		// Skip unwanted modules
		if ($module_name === 'Item Kits1' || 
			$module_name === 'Gift Cards' || 
			$module_name === 'Reports1' || 
			$module_name === 'Taxes' || 
			$module_name === 'Attributes' || 
			$module_name === 'Attributes1' || 
			$module_name === 'Expenses1' || 
			$module_name === 'Messages' || 
			$module_name === 'Expenses Categories1' || 
			$module_name === 'Cashups' || 
			$module_name === 'Configurations') {
			continue;
		}

		// Rename 'Receivings1' to 'Re-Stock'
		if ($module_name === 'Receivings') {
			$module_name = 'Re-Stock';
		}
	?>
	<li class="<?php echo $module->module_id == $this->uri->segment(1) ? 'active' : ''; ?>">
		<a href="<?php echo site_url("$module->module_id"); ?>" 
		   title="<?php echo htmlspecialchars($module_name); ?>" 
		   class="menu-icon">
			<img src="<?php echo base_url('images/menubar/' . $module->module_id . '.png'); ?>" 
				 border="0" 
				 alt="Module Icon"/><br/>
			<?php echo htmlspecialchars($module_name); ?>
		</a>
	</li>
<?php endforeach; ?>

	</ul>
</div>

				
				
			</div>
		</div>

		<div class="container">
			<div class="row">
