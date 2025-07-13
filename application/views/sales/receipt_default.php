<div id="receipt_wrapper" style="font-size: <?php echo $this->config->item('receipt_font_size'); ?>px">
    <div class="container">
        <div class="row" style="padding-top: 10px;">
            <!-- Logo on the Left -->
            <div class="col-md-3 text-left">
                <?php if($this->config->item('company_logo') != '') { ?>
                    <img src="<?php echo base_url('uploads/' . $this->config->item('company_logo')); ?>" alt="company_logo" class="img-fluid" style="max-height: 300px;">
                <?php } ?>
            </div>

            <!-- Company Information in the Center -->
            <!--
            <div class="col-md-6 text-center">
                <h4 class="mb-0">GLUTALOUNGE</h4>
                <p class="mb-0">Kitiibwa</p>
                <p class="mb-0">Kampala Road, Mabirizi complex shop N0.A01</p>
                <p class="mb-0">+256771495252 | info@stagyonservices.com</p>
            </div>
            -->

            <!-- Quotation on the Right -->
            <div class="col-md-3 text-right">
                <h5 style="font-size: 17px;">Quotation</h5>
            </div>
        </div>
        
        <hr>

        <!-- Customer and Quotation Date Details -->
        <div class="row">
            <div class="col-md-6">
                <?php
		if(isset($customer))
		{
		?>
                <strong style="font-size: 15px;">Customer:</strong> <span style="font-size: 15px;"><?php echo $customer; ?></span>
                
        <?php
		}
		?>
            </div>
            <div class="col-md-6 text-right">
                <strong style="font-size: 15px;">Quotation Date:</strong> <span style="font-size: 15px;"><?php echo $transaction_time; ?></span>
            </div>
        </div>


        <p style="font-size: 15px;">Dear Sir/Madam,</p>
        <p style="font-size: 15px;">Thank you for your valuable inquiry.</p>

        <!-- Quotation Table -->
        <table class="table table-bordered" id="receipt_items">
            <thead class="thead-light">
                <tr>
                    <th style="width:40%; font-size: 15px;"><?php echo $this->lang->line('sales_description_abbrv'); ?></th>
                    <th style="width:20%; font-size: 15px;"><?php echo $this->lang->line('sales_price'); ?></th>
                    <th style="width:20%; font-size: 15px;"><?php echo $this->lang->line('sales_quantity'); ?></th>
                    <th style="width:20%; font-size: 15px;" class="total-value"><?php echo $this->lang->line('sales_total'); ?></th>
                    <?php if ($this->config->item('receipt_show_tax_ind')) { ?>
                        <th style="width:20%; font-size: 15px;"></th>
                    <?php } ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach($cart as $line => $item) { if($item['print_option'] == PRINT_YES) { ?>
                    <tr>
                        <td style="font-size: 15px;"><?php echo ucfirst($item['name'] . ' ' . $item['attribute_values']); ?></td>
                        <td style="font-size: 15px;"><?php echo to_currency($item['price']); ?></td>
                        <td style="font-size: 15px;"><?php echo to_quantity_decimals($item['quantity']); ?></td>
                        <td style="font-size: 15px;" class="total-value"><?php echo to_currency($item[$this->config->item('receipt_show_total_discount') ? 'total' : 'discounted_total']); ?></td>
                        <?php if($this->config->item('receipt_show_tax_ind')) { ?>
                            <td style="font-size: 15px;"><?php echo $item['taxed_flag']; ?></td>
                        <?php } ?>
                    </tr>
                    <?php if ($item['discount'] > 0) { ?>
                        <tr>
                            <td style="font-size: 15px;" colspan="3" class="discount"><?php echo to_currency($item['discount']) . " " . $this->lang->line("sales_discount"); ?></td>
                            <td style="font-size: 15px;" class="total-value"><?php echo to_currency($item['discounted_total']); ?></td>
                        </tr>
                    <?php } ?>
                <?php } } ?>
            </tbody>
        </table>

        <!-- Total Section -->
        <div class="row">
            <div class="col-md-6 text-right">
                <p style="font-size: 15px;"><strong><?php echo $this->lang->line('sales_total'); ?>:</strong></p>
            </div>
            <div class="col-md-6 text-right">
                <p style="font-size: 15px;"><strong><?php echo to_currency($total); ?></strong></p>
                
                 <p style="font-size: 15px;"> <strong>SUBTOTAL:</strong> <?php echo to_currency($total); ?></p>
    <p style="font-size: 15px;"><strong>TAX (18.00%):</strong> <?php echo to_currency($total * 0.18); ?></p>
    <p style="font-size: 15px;"><strong>GRAND TOTAL:</strong> <?php echo to_currency($total + ($total * 0.18)); ?></p>
    
    
            </div>
        </div>
        
        
    <!-- Existing Table and Items Code -->
    
    <!-- Totals Section -->
    <div style="col-md-6 ml-auto margin-top: 20px;">
       
   <!-- <p style="font-size: 15px;">We hope you find our offer to be in line with your requirement.</p> -->
    </div>
    <?php /*
<!-- Terms & Conditions & Payment Instructions -->
<div class="row">
    <div class="col-md-6">
        <p><a href="#" data-toggle="modal" data-target="#termsModal">Terms & Conditions:</a></p>
        <!-- Display Terms & Conditions -->
        <div id="displayTerms" style="padding-left: 15px;">
            <!-- JavaScript dynamically fills in terms here -->
        </div>
         */ ?>
        
    <!-- Terms & Conditions & Payment Instructions -->
<div class="row">
    <div class="col-md-6">
        <p><!--<a href="#" data-toggle="modal" data-target="#termsModal">Terms & Conditions:</a>--></p>
        <!-- Display Terms & Conditions -->
        <div id="displayTerms" style="padding-left: 15px;">
            <!--
            <ul>
         <li style="font-size: 15px;">Goods once sold are not returned</li>
         <li style="font-size: 15px;">Mabirizi complex L5 AP 19</li>
         <li style="font-size: 15px;">Phone contact: 0751803616 </li>
         <li style="font-size: 15px;">Phone contact: 0751890172</li>
         </ul>
         -->
        </div>
        
        
        <br><br>
        <!-- Sold By Section with Modal Trigger -->
        <!--
        <div class="row mt-3">
            <div class="col-md-6">
                <p style="font-size: 15px;"><a style="text-decoration:none; color: black" class="text-dark" href="#" data-toggle="modal" data-target="#soldByModal" style="font-size: 15px;">Sold By:</a> <span id="selectedSalesperson"></span></p>
            </div>
        </div>
    -->
       <script>
    document.addEventListener('DOMContentLoaded', function () {
        // JavaScript to update the 'Sold By' span in real time
        document.getElementById('newName').addEventListener('input', function () {
            document.getElementById('selectedSalesperson').textContent = this.value;
        });
    });
</script>



    </div>
    
    
        
        
        
         <!-- Sold By Modal -->
        <div class="modal fade" id="soldByModal" tabindex="-1" role="dialog" aria-labelledby="soldByModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                <h5 class="modal-title" id="nameModalLabel">Update Seller Name</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="newName" class="form-label">Enter Seller Name</label>
                    <input type="text" class="form-control" id="newName" placeholder="Type new name here">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
                </div>
            </div>
        </div>
        
        
    
    <!-- Payment Instructions aligned to the extreme right -->
    <div class="col-md-6 ml-auto" style="float: right; text-align: left; max-width: 300px;">
        <!--<p><strong>Payment Instructions</strong></p>
        <p>ACC NAME: KITIIBWA JOSHUA</p>
        <p>ACC. No: 01350011772804</p>
        <p>DFCU - Kampala Road Branch</p>
        <p style="font-size: 15px;">For, GLUTALOUNGE</p>
        <p style="font-size: 15px;">AUTHORIZED SIGNATURE</p>
        -->
    </div>
</div>


    <!-- Terms & Conditions Modal with Checkboxes -->
    <?php /*
<div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="termsModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="termsModalLabel">Terms & Conditions</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="termsForm">
                    <div>
                        <input type="checkbox" data-term="1" id="term1" checked>
                        <label for="term1">Delivery commences with payment through our company to be shared in the invoice</label>
                    </div>
                    <div>
                        <input type="checkbox" data-term="2" id="term2" checked>
                        <label for="term2">4 Years guarantee with comprehensive 1-year warranty</label>
                    </div>
                    <div>
                        <input type="checkbox" data-term="3" id="term3" checked>
                        <label for="term3">Delivery of goods and installation will not be charged</label>
                    </div>
                    <div>
                        <input type="checkbox" data-term="4" id="term4" checked>
                        <label for="term4">Goods serviced only by Glutalounge unless otherwise</label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

*/ ?>


<!-- JavaScript for Dynamic Term Display -->
<script>
    // Function to initialize terms based on checkbox states
    function initializeTerms() {
        document.querySelectorAll('#termsForm input[type="checkbox"]').forEach(function(checkbox) {
            const termText = checkbox.nextElementSibling.innerText;
            const termId = checkbox.getAttribute('data-term');
            
            if (checkbox.checked) {
                addTerm(termId, termText);
            }
            
            // Event listener to dynamically update terms on checkbox toggle
            checkbox.addEventListener('change', function() {
                if (checkbox.checked) {
                    addTerm(termId, termText);
                } else {
                    removeTerm(termId);
                }
            });
        });
    }

    // Function to add a term to the display section
    function addTerm(termId, termText) {
        const displayTerms = document.getElementById('displayTerms');
        if (!document.querySelector(`#displayTerms p[data-term="${termId}"]`)) {
            const newTerm = document.createElement("p");
            newTerm.textContent = '• ' + termText;
            newTerm.setAttribute("data-term", termId);
            displayTerms.appendChild(newTerm);
        }
    }


    // Function to remove a term from the display section
    function removeTerm(termId) {
        const termElement = document.querySelector(`#displayTerms p[data-term="${termId}"]`);
        if (termElement) {
            termElement.remove();
        }
    }

    // Initialize terms on page load
    document.addEventListener('DOMContentLoaded', initializeTerms);
</script>
        <!-- Return Policy and Barcode -->
        <div id="sale_return_policy" class="text-center mt-4">
            <?php echo nl2br($this->config->item('return_policy')); ?>
        </div>

        <div id="barcode" class="text-center mt-3">
            <img src="data:image/png;base64,<?php echo $barcode; ?>" alt="Barcode" class="img-fluid"><br>
            <?php echo str_replace('POS', 'Receipt', $sale_id); ?>

        </div>
    </div>
</div>
