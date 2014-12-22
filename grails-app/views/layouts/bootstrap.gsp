<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<g:applyLayout name="header"/>
		<g:layoutHead/>
	</head>
	<body>
		 <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#">iTrack</a>
	        </div>
	        <div class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
		            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Customer<b class="caret"></b></a>
			            <ul class="dropdown-menu">
			            	<li><g:link controller="customer">Customer Info</g:link></li>
			            	<li><g:link controller="cinvoice">Invoice</g:link></li>
			            	<li><g:link controller="cpayment">Payment</g:link></li>
			            	<li><g:link controller="cipay">Inv Payment</g:link></li>
			          	</ul>
		          </li>
		          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Supplier<b class="caret"></b></a>
			            <ul class="dropdown-menu">
			            	<li><g:link controller="supplier">Supplier Info</g:link></li>
			            	<li><g:link controller="sinvoice">Invoice</g:link></li>
			            	<li><g:link controller="spayment">Payment</g:link></li>
			            	<li><g:link controller="sipay">Inv Payment</g:link></li>
			          	</ul>
		          </li>
		          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Master Grid<b class="caret"></b></a>
		          	<ul class="dropdown-menu">
		          		<li><g:link controller="cipay" action="cimastergrid">Cust Inv Master</g:link></li>
		          		<li><g:link controller="cipay" action="cpmastergrid">Cust Pay Master</g:link></li>
		          		<li><g:link controller="sipay" action="simastergrid">Supp Inv Master</g:link></li>
		          		<li><g:link controller="sipay" action="spmastergrid">Supp Pay Master</g:link></li>
		          	</ul>
		          </li>
		          <li><g:link controller="Auth" action="signOut">Sign Out</g:link></li>
		      	</ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </div>

	    <div class="container">
	      <div class="starter-template">
	       <g:layoutBody/>
	       <g:applyLayout name="footer"/>
	      </div>
	    </div><!-- /.container -->
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>