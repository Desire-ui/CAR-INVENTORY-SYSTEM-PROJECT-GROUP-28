<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modals Example</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Clickable paragraph to open "Sold by" modal -->
<p style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#sellerNameModal">
    Sold by: <span id="sellerName"></span>
</p>

<!-- Sold by Modal Structure -->
<div class="modal fade" id="sellerNameModal" tabindex="-1" aria-labelledby="sellerNameModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="sellerNameModalLabel">Enter Seller Name</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="newNameInput" class="form-label">Name</label>
                    <input type="text" class="form-control" id="newNameInput" placeholder="Enter name here">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Terms & Conditions Paragraph with Link to Toggle Modal -->
<p><a href="#" data-bs-toggle="modal" data-bs-target="#termsModal">Terms & Conditions:</a></p>

<!-- Terms & Conditions Modal with Checkboxes -->
<div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="termsModalLabel">Terms & Conditions</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
                        <label for="term4">Goods serviced only by Stagyon unless otherwise</label>
                    </div>
                </form>
                <div id="displayTerms"></div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript for Both Modals -->
<script>
    // JavaScript for "Sold by" Modal - Live Update Seller Name
    document.getElementById('newNameInput').addEventListener('input', function () {
        document.getElementById('sellerName').textContent = this.value;
    });

    // JavaScript for Dynamic Term Display (Terms & Conditions Modal)
    function initializeTerms() {
        document.querySelectorAll('#termsForm input[type="checkbox"]').forEach(function(checkbox) {
            const termText = checkbox.nextElementSibling.innerText;
            const termId = checkbox.getAttribute('data-term');
            
            if (checkbox.checked) {
                addTerm(termId, termText);
            }
            
            checkbox.addEventListener('change', function() {
                if (checkbox.checked) {
                    addTerm(termId, termText);
                } else {
                    removeTerm(termId);
                }
            });
        });
    }

    function addTerm(termId, termText) {
        const displayTerms = document.getElementById('displayTerms');
        if (!document.querySelector(`#displayTerms p[data-term="${termId}"]`)) {
            const newTerm = document.createElement("p");
            newTerm.textContent = '• ' + termText;
            newTerm.setAttribute("data-term", termId);
            displayTerms.appendChild(newTerm);
        }
    }

    function removeTerm(termId) {
        const termElement = document.querySelector(`#displayTerms p[data-term="${termId}"]`);
        if (termElement) {
            termElement.remove();
        }
    }

    document.addEventListener('DOMContentLoaded', initializeTerms);
</script>

</body>
</html>
