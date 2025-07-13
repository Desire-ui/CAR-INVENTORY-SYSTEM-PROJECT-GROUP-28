		</div>
	</div>

	<div id="footer">
		<div class="jumbotron push-spaces">
			<strong>
			    
			    <?php echo date("Y"); ?> | <?php echo $this->config->item('company'); ?>
			
			<!--
			<a href="https://altechsphere.com/" target="_blank">Altechsphere solutions</a>  · 
			--
			<!--
			<a href="https://opensourcepos.org" target="_blank"><?php echo $this->lang->line('common_website'); ?></a>  · 
			
			
			<?php echo $this->config->item('application_version'); ?> - 
			<a target="_blank" href=""><?php echo substr($this->config->item('commit_sha1'), 0, 6); ?></a></strong>.
			
			<!--
			<?php echo $this->config->item('application_version'); ?> - 
			<a target="_blank" href="https://github.com/opensourcepos/opensourcepos/commit/<?php echo $this->config->item('commit_sha1'); ?>"><?php echo substr($this->config->item('commit_sha1'), 0, 6); ?></a></strong>.
			
			-->
		</div>
	</div>
</body>
</html>
