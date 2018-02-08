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
//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .

function initAuto_job() {
	var options = {
		types: ['(cities)'],
		componentRestrictions: {country: "IN"}
	};


	new google.maps.places.Autocomplete(document.getElementById('job_city'),options);
}

function initAuto_comp1() {
	var options = {
		types: ['(cities)'],
		componentRestrictions: {country: "IN"}
	};


	new google.maps.places.Autocomplete(document.getElementById('company_city'),options);
}