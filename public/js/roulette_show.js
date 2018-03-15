$(function(){
  var mt = Random.engines.mt19937();
  mt.autoSeed();

  var p = {
		startCallback : function() {
		},
		slowDownCallback : function() {
		},
		stopCallback : function($stopElm) {
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
    
    imageIndex = mt(0, possibilities.length - 1);
    setImageIndex(possibilities[imageIndex]);
    rouletter.roulette('start');
  }

  $('.js-spin-on-click').click(() => {
    $.spin();
  })

  $('.roulette-container').css('display', 'none');
});