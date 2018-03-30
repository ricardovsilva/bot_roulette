$(function(){
  var mt = Random.engines.mt19937();
  mt.autoSeed();
  var spinningSoundUrl = $('.js-roulette-sound').val();
  var spinningSound;

  var p = {
		startCallback : function() {
      spinningSound = spinningSoundUrl ? new Audio(spinningSoundUrl) : { play: function(){}, stop: function(){}};
      spinningSound.play();
		},
		slowDownCallback : function() {
		},
		stopCallback : function(stopElm) {
      soundUrl = $(stopElm).data('sound');
      spinningSound.pause();
      $.playSound(soundUrl);
    },
    speed : $('.js-roulette-speed').val(),
    duration : $('.js-roulette-duration').val(),
    stopImageNumber : 0,
	}
  
  $('.roulette').find('img').hover(function(){
    console.log($(this).height());
  });

  var rouletter = $('div.roulette');
	rouletter.roulette(p);	
  $('.js-spin').click(function(){
    rouletter.roulette('start');	
  });

  var setImageIndex = function(imageIndex){
    p['stopImageNumber'] = imageIndex
    rouletter.roulette('option', p);	
  }

  $.spin = function(){
    $('.roulette-container').css('display', 'block');
    var possibilities = []
    $('.js-entry').each((i, entry) => {
      for(var j = 0; j < $(entry).data('probability'); j++)
       possibilities.push(i);
    });

    min = 0;
    max = possibilities.length - 1;
    $.get(`https://www.random.org/sequences/?min=${min}&max=${max}&col=1&format=plain&rnd=new`,
      function(data) {
        imageIndex = data.split("\n")[0];
        setImageIndex(possibilities[imageIndex]);
        rouletter.roulette('start');
    });
  }

  $('.js-spin-on-click').click(() => {
    $.spin();
  })

  $('.roulette-container').css('display', 'none');
});