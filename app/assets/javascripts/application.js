// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks

$(document).on('turbolinks:load', function(){
  $('.carousel').carousel()
  // yes!! do this ^
})

// Because your app is a Rails app with all server-side rendering
// and no front-end framework at the moment, I'd recommend flushing out
// the JS folder with a few interactive bits so that you can say
// you worked full-stack on this app – let me know if you want more suggestions for this
