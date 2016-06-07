// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .

$(function(){ $(document).foundation(); });

var  tb = $('.app-bar');
    tbs = "app-bar-scrolled";

$(window).scroll(function() {
  console.log("init scroll watcher");
  if($(this).scrollTop()) {
    tb.addClass(tbs);
    console.log("scrolling");
  } else {
    tb.removeClass(tbs);
    console.log("not scrolling -remove class");
  }
});
