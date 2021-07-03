<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8" />
    <title>Credit Card Payment Form Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
    <!--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">-->

    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <!-- jQuery library
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    
    <script type="text/javascript"> 
        $(function() {
            $('[data-toggle="tooltip"]').tooltip();
        })
    </script>
	<style>
		body {
    		background: #f5f5f5
		}

		.rounded {
    		border-radius: 1rem
		}

		.nav-pills .nav-link {
    		color: #555
		}

		.nav-pills .nav-link.active {
		    color: white
		}

		input[type="radio"] {
		    margin-right: 5px
		}

		.bold {
		    font-weight: bold
		}
	</style>
</head>
<body>
    <%String TotalAmt = (String) session.getAttribute("TotalAmt");%>
    <div class="container py-5">
    <!-- For demo purpose -->
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-6">Make your Payment</h1>
        </div>
    </div> <!-- End -->
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                    <div id="adress">
                        <!--Address Section-->
                        <form role="form">
                                <div class="form-group"> 
                                    <label for="address">
                                        <h6> Enter Your Address* </h6>
                                    </label> 
                                    <input type="text" name="address" placeholder="Enter Address" required class="form-control "> 
                                    <label for="pinCode">
                                        <h6> Total Amount </h6>
                                    </label> 
                                    <input type="text" name="TotalAmt" required class="form-control"  value="<%= TotalAmt%>"readonly="readonly"> </div>
                                    <!--<p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i> Proceed</button> </p>-->
                                    <p class="text-muted"> Note: After filling up the address, choose your convenient payment method. </p>
                        </form>
                        
                        
                        </div> <!-- End -->
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light rounded nav-fill mb-3">
                            <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active" > <i class="fas fa-credit-card mr-2"></i> Credit/Debit Card </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#upi" class="nav-link "  > <i class="fab fa-paypal mr-2"></i> UPI </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#net-banking" class="nav-link " > <i class="fas fa-mobile-alt mr-2"></i> Net Banking </a> </li>
                        </ul>
                    </div> <!-- End -->
                    <!-- Credit card form content -->
                    
                    <div class="tab-content">
                                              
                        <!-- credit card info-->
                        <div id="credit-card" class="tab-pane fade show pt-3">
                            <form role="form" onsubmit="event.preventDefault()">
                                <div class="form-group"> <label for="username">
                                        <h6>Card Owner</h6>
                                    </label> <input type="text" name="username" placeholder="Card Owner Name" required class="form-control "> </div>
                                <div class="form-group"> <label for="cardNumber">
                                        <h6>Card number</h6>
                                    </label>
                                    <div class="input-group"> <input type="text" name="cardNumber" placeholder="Valid card number" class="form-control " required>
                                        <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fab fa-cc-visa mx-1"></i> <i class="fab fa-cc-mastercard mx-1"></i> <i class="fab fa-cc-amex mx-1"></i> </span> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group"> <label><span class="hidden-xs">
                                                    <h6>Expiration Date</h6>
                                                </span></label>
                                            <div class="input-group"> <input type="number" placeholder="MM" name="" class="form-control" required> <input type="number" placeholder="YY" name="" class="form-control" required> </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CVV code on the back of your card">
                                                <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                            </label> <input type="text" required class="form-control"> </div>
                                    </div>
                                </div>
                                <div class="card-footer"> <button type="button" class="subscribe btn btn-primary btn-block shadow-sm"> Confirm Payment </button>
                            </form>    
                        </div>
                                <p></p><p class="text-muted"> Note: After clicking on the button, you will be directed to a the bank gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
                    </div> <!-- End -->
                    <!-- UPI info -->
                    
                    <div id="upi" class="tab-pane fade show pt-3">
                        <form role="form" onsubmit="event.preventDefault()">
                                <div class="form-group"> <label for="vpa">
                                        <h6> VPA/UPI ID </h6>
                                    </label> <input type="text" name="vpa" placeholder="Enter UPI Id" required class="form-control "> </div>
                                    <p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i> Make Payment</button> </p>
                        </form>
                        <p class="text-muted"> Note: After clicking on the button, you will be directed to your UPI app for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
                        
                    </div> <!-- End -->
                    <!-- bank transfer info -->
                    <div id="net-banking" class="tab-pane fade show pt-3">
                        <div class="form-group "> <label for="Select Your Bank">
                                <h6>Select your Bank</h6>
                            </label> <select class="form-control" id="ccmonth">
                                <option value="" selected disabled>--Please select your Bank--</option>
                                <option>Airtel Payments Bank</option>
                                <option>Axis Bank</option>
                                <option>Bandhan Bank</option>
                                <option>Bank of Baroda</option>
                                <option>Canara Bank</option>
                                <option>Central Bank</option>
                                <option>HDFC Bank</option>
                                <option>ICICI Bank</option>
                                <option>Indian Bank</option>
                                <option>Paytm Payments Bank</option>
                                <option>Punjab National Bank</option>
                                <option>State Bank of India</option>
                                <option>Yes Bank</option>
                            </select> </div>
                        <div class="form-group">
                            <p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i> Proceed to Payment</button> </p>
                        </div>
                        <p class="text-muted">Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
                    </div> <!-- End -->
                    <!-- End -->
                </div>
            </div>
        </div>
    </div>
    </div>
        
</body>
</html>