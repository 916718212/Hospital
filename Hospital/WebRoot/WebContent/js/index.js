// (function() {
			let swiperNode = '';
			for (let i = 1, len = 30; i < len; i++) {
				swiperNode += '<div class="swiper-slide"><img src="./WebContent/images/' + i + '.jpg" alt=""></div>'
			}
			$('.swiper-wrapper').html(swiperNode)

			let swiper = new Swiper('.swiper-container', {
				direction: 'horizontal', // 垂直切换选项
				loop: true, // 循环模式选项
				speed: 1,
			})


			setTimeout(function() {
				$('.text').animate({
					opacity: 0
				})
				$('.ct').show()
				move()
			}, 5000)
			let htm = '';
			let timer

			for (let i = 1, len = 30; i < len; i++) {
				htm += '<div class="item" data-i="' + i + '"><img src="./WebContent/images/' + i + '.jpg" alt=""></div>'
			}
			$('.ct').html(htm)
			let list = $('.item')

			$('.ct').on('click', '.item', function() {
				console.log(Number($(this).index()) + 1)
				swiper.slideTo(Number($(this).index()) + 1)
				// $('.pic-wrapper').show()
				$('.pic-wrapper').css({
					'opacity': 1,
					'z-index': 99
				})
				$('.ct').hide()
			})

			$('.swiper-button-prev').on('click', function() {
				console.log('prev')
				swiper.slidePrev()
			})

			$('.swiper-button-next').on('click', function() {
				console.log('next')
				swiper.slideNext()
			})

			$('.close').on('click', function() {
				$('.ct').show()
				// $('.pic-wrapper').hide()
				$('.pic-wrapper').css({
					'opacity': 0,
					'z-index': -1
				})
			})

			function move() {
				for (let i = 0, len = list.length; i < len; i++) {
					if (i % 4 == 0) {
						$('.item').eq(i).css('top', -Number(Math.floor(Math.random() * 1000) + 200) + 'px');
						$('.item').eq(i).css('left', -Number(Math.floor(Math.random() * 2000) - 100) + 'px');
					} else if (i % 4 == 1) {
						$('.item').eq(i).css('top', -Number(Math.floor(Math.random() * 1000) + 200) + 'px');
						$('.item').eq(i).css('left', Number(Math.floor(Math.random() * 2000) - 100) + 'px');
					} else if (i % 4 == 2) {
						$('.item').eq(i).css('top', Number(Math.floor(Math.random() * 1000) + 200) + 'px');
						$('.item').eq(i).css('left', -Number(Math.floor(Math.random() * 2000) - 100) + 'px');
					} else {
						$('.item').eq(i).css('top', Number(Math.floor(Math.random() * 1000) + 200) + 'px');
						$('.item').eq(i).css('left', Number(Math.floor(Math.random() * 2000) - 100) + 'px');
					}
					$('.item').eq(i).attr('data-z', -10000)
					let delay = Math.floor(Math.random() * 10000)
					setTimeout(function() {
						let Z = ~~$('.item').eq(i).attr('data-z');
						timer = setInterval(function() {
							if (Z >= -9909) {
								$('.item').eq(i).css('opacity', 1)
							}
							if (Z >= -100) {
								$('.item').eq(i).css('opacity', 0)
							}
							if (Z >= 1000) {
								Z = -10000
							}
							$('.item').eq(i).css('transform', 'translateZ(' + Z + 'px)')
							Z += 10
						}, 5);
					}, delay)
				}
			}
			// })()