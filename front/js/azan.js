$(function () {
	$('#chooseAudio').hide();
	$('#chooseProvider').on('change', function () {
        var _this = $(this)
		var value = $(this).val();
		var player = document.getElementById("player");
		if (player) {
			if (player.paused == false) {
				player.pause();
				player.src = "";
			}
		}
		if (value == "empty") {
			$('#chooseAudio').slideUp();
			$('#player')[0].pause();
			$('body.service').css({
				"background": "#eee url('img/pattern.png') no-repeat bottom"
			});
		} else {
            var url = base_url+'/list_azan/'+value+'?OpID='+(new URLSearchParams(window.location.search)).get('OpID')
            $.get(url,function(data){
                $('#chooseAudio table tbody').html(data);

                $('#chooseAudio').slideDown();

                $('#provider-name').text(_this.find('option:selected').text());

                $('body.service').css({
                    "background": "#eee"
                });
            })
		}


	});


	var userAgent = navigator.userAgent;
	var regExp = "/iPhone|iPad|iPod/";
	if (userAgent.match('iPhone') !== null || userAgent.match('iPad') !== null || userAgent.match('iPod') !== null) {
		$(document).on("click", "input:radio[name=audio]:checked", function () {
			var value = $(this).val();
			$("#chooseRBT").prop('href', 'sms:1600&body=' + value);
		});
	} else {
		$(document).on("click", "input:radio[name=audio]:checked", function () {
			var value = $(this).val();
			$("#chooseRBT").prop('href', 'sms:1600?body=' + value);
		});
	}


});

