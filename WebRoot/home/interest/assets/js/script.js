
	// Configure the Spectragram plugin. Follow the instructions
	// in the tutorial on how to generate an access token
	jQuery.fn.spectragram.accessData = {
		accessToken: 'YOUR-ACCESS-TOKEN',
		clientID: 'CLIENT-ID'
	};
	
	// Run a search about 'coffee' on instagram 
	// and display the results
	$('#gallery').spectragram('getRecentTagged',{
		query: 'coffee',
		max:6
	});
	
	$('#gravityButton').click(function(e){
		e.preventDefault();
		
		// Turn on the gravity!
		$('body').jGravity({
			target: '#gallery li',
			ignoreClass: 'ignoreMe',
			weight: 25,
			depth: 5,
			drag: true
		});
		
		// Disabling clicking on the photos (so they can
		// be dragged without redirecting the browser)
		$('#gallery li').click(function(e){
			e.preventDefault()
		});
		
		// Remove some of the elements as they get in the way
		$('footer, #gravityButton').remove();
	});

