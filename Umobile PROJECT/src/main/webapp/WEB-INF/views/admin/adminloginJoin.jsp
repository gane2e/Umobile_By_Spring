<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/adminloginJoin.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
 <!-- LOGIN MODULE -->
 
        <div class="login">
        
            <div class="wrap">
     		
                <!-- LOGIN FORM -->
                <div class="user">
                
                    <!-- ACTIONS
                    <div class="actions">
                        <a class="help" href="#signup-tab-content">Sign Up</a><a class="faq" href="#login-tab-content">Login</a>
                    </div>
                    -->
                    <!-- LOGO -->
                    <div class="logo">
                        <a href="#"><img src="http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/logo.png" alt=""></a>
                    </div>
                    <!-- TOGGLE -->
                    <div id="toggle-wrap">
                        <div id="toggle-terms">
                            <div id="cross">
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>

                    <!-- RECOVERY -->
                    <div class="recovery">
                        <h2>Password Recovery</h2>
                        <p>Enter either the <strong>email address</strong> or <strong>username</strong> on the account and <strong>click Submit</strong></p>
                        <p>We'll email instructions on how to reset your password.</p>
                        <form class="recovery-form" action="" method="post">
                            <input type="text" class="input" id="user_recover" placeholder="Enter Email or Username Here">
                            <input type="submit" class="button" value="Submit">
                        </form>
                        <p class="mssg">An email has been sent to you with further instructions.</p>
                    </div>

                    <!-- FORM -->
                    <div class="form-wrap">
                        <!-- TABS -->
                      
                      
                        <!-- TABS CONTENT -->
                      <div class="tabs-content">
                            <!-- TABS CONTENT LOGIN -->
                        <div id="login-tab-content" class="active">
                        
                        
                          <form class="login-form" action="login" method="post">
                            <input type="text" class="input" id="username" name="username" autocomplete="off" placeholder="Email or Username">
                            <input type="password" class="input" id="password" name="password" autocomplete="off" placeholder="Password">
                            <input type="checkbox" class="checkbox" checked id="remember_me">
                            <label for="remember_me">Remember me</label>
                            <input type="submit" class="button" value="Login">
                          </form>
                          
                        </div>
                        
                        
                            <!-- TABS CONTENT SIGNUP -->
                   <!--      <div id="signup-tab-content">
                          <form class="signup-form" action="" method="post">
                            <input type="email" class="input" id="email" autocomplete="off" placeholder="Email">
                            <input type="text" class="input" id="username" autocomplete="off" placeholder="Username">
                            <input type="password" class="input" id="password" autocomplete="off" placeholder="Password">
                            <input type="submit" class="button" value="Sign Up">
                          </form> -->
                          
                        </div>
                      </div>
                  </div>
                </div>
            </div>
        </div>
</body>
</html>
<script>
$(function() {
	  tab = $('.tabs h3 a');
	  tab.on('click', function(event) {
	    event.preventDefault();
	    tab.removeClass('active');
	    $(this).addClass('active');
	    tab_content = $(this).attr('href');
	    $('div[id$="tab-content"]').removeClass('active');
	    $(tab_content).addClass('active');
	  });
	});

	// SLIDESHOW
	$(function() {
	  $('#slideshow > div:gt(0)').hide();
	  setInterval(function() {
	    $('#slideshow > div:first')
	    .fadeOut(1000)
	    .next()
	    .fadeIn(1000)
	    .end()
	    .appendTo('#slideshow');
	  }, 3850);
	});

	// CUSTOM JQUERY FUNCTION FOR SWAPPING CLASSES
	(function($) {
	  'use strict';
	  $.fn.swapClass = function(remove, add) {
	    this.removeClass(remove).addClass(add);
	    return this;
	  };
	}(jQuery));

	// SHOW/HIDE PANEL ROUTINE (needs better methods)
	// I'll optimize when time permits.
	$(function() {
	  $('.agree, .forgot, #toggle-terms, .log-in, .sign-up').on('click', function(event) {
	    event.preventDefault();
	    var user = $('.user'),terms = $('.terms'),form = $('.form-wrap'),recovery = $('.recovery'),close = $('#toggle-terms'),arrow = $('.tabs-content .fa');
	    if ($(this).hasClass('agree') || $(this).hasClass('log-in') || ($(this).is('#toggle-terms')) && terms.hasClass('open')) {
	      if (terms.hasClass('open')) {
	        form.swapClass('open', 'closed');
	        terms.swapClass('open', 'closed');
	        close.swapClass('open', 'closed');
	      } else {
	        if ($(this).hasClass('log-in')) {
	          return;
	        }
	        form.swapClass('closed', 'open');
	        terms.swapClass('closed', 'open').scrollTop(0);
	        close.swapClass('closed', 'open');
	        user.addClass('overflow-hidden');
	      }
	    }
	    else if ($(this).hasClass('forgot') || $(this).hasClass('sign-up') || $(this).is('#toggle-terms')) {
	      if (recovery.hasClass('open')) {
	        form.swapClass('open', 'closed');
	        recovery.swapClass('open', 'closed');
	        close.swapClass('open', 'closed');
	      } else {
	        if ($(this).hasClass('sign-up')) {
	          return;
	        }
	        form.swapClass('closed', 'open');
	        recovery.swapClass('closed', 'open');
	        close.swapClass('closed', 'open');
	        user.addClass('overflow-hidden');
	      }
	    }
	  });
	});

	// DISPLAY MSSG
	$(function() {
	  $('.recovery .button').on('click', function(event) {
	    event.preventDefault();
	    $('.recovery .mssg').addClass('animate');
	    setTimeout(function() {
	      $('.form-wrap').swapClass('open', 'closed');
	      $('.recovery').swapClass('open', 'closed');
	      $('#toggle-terms').swapClass('open', 'closed');
	      $('.tabs-content .fa').swapClass('active', 'inactive');
	      $('.recovery .mssg').removeClass('animate');
	    }, 2500);
	  });
	});

</script>