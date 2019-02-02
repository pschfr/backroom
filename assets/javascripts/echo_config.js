// Initiate Echo
echo.init({
	// Speed it up a lil
	throttle: 50,
	// Speed it up a lot by disabling the debounce-style polling
	debounce: false
})

$(function() {
	// On ANY Bootstrap-table event, render the images.
	$('#all_locations').on('all.bs.table', function () {
		echo.render();
	});
});
