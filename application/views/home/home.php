<?php $this->load->view("partial/header"); ?>

<script type="text/javascript">
	dialog_support.init("a.modal-dlg");
</script>


<h3 class="text-center">Welcome to <?php echo $this->config->item('company'); ?>,   Select a link</h3>

<!--
<h3 class="text-center"><?php echo $this->lang->line('common_welcome_message'); ?></h3>
-->

<div id="home_module_list">
	<?php foreach($allowed_modules as $module): ?>
		<?php 
			$module_name = trim($this->lang->line("module_" . $module->module_id));

			// Skip unwanted modules
			if ($module_name === 'Item Kits1' || 
				$module_name === 'Gift Cards' || 
				$module_name === 'Reports1' || 
				$module_name === 'Messages' || 
				$module_name === 'Taxes' || 
				$module_name === 'Attributes' || 
				$module_name === 'Expenses1' || 
				$module_name === 'Expenses Categories1' || 
				$module_name === 'Cashups' || 
				$module_name === 'Configurations1') {
				continue;
			}

			// Rename 'Receivings1' to 'Re-Stock'
			if ($module_name === 'Receivings') {
				$module_name = 'Re-Stock';
			}
		?>
		<div class="module_item" title="<?php echo $this->lang->line('module_' . $module->module_id . '_desc'); ?>">
			<a href="<?php echo site_url("$module->module_id"); ?>">
				<img src="<?php echo base_url('images/menubar/' . $module->module_id . '.png'); ?>" border="0" alt="Menubar Image" />
			</a>
			<a href="<?php echo site_url("$module->module_id"); ?>">
				<?php echo htmlspecialchars($module_name); ?>
			</a>
		</div>
	<?php endforeach; ?>
</div>


<?php $this->load->view("partial/footer"); ?>
