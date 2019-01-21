<link rel="stylesheet" href="themes/login/lds/sfdc_210.css">
{literal}
<style type="text/css">
a {
	color: #0070d2;
}

body {
	background: rgba(4,87,233,0.66);
	background: linear-gradient(180deg,rgba(4,87,233,0.66) 0%, #f4f6f9 85%);
}

#content, .container {
	background-color: rgba(255,255,255,0.35);
}

#header {
	color: #16325c;
}

body {
	display: table;
	width: 100%;
}

#content {
	margin-bottom: 24px;
	padding-top: 40px;
    margin-top: -55px;
	
}

#wrap {
	height: 100%;
}

#right {
	vertical-align: middle;
}

.errorMessage {
	font-size: 12px;
	color: #982121;
}

body { 
	background-image: url("https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/Hrz7cVsxxiv53d9bv/abstract-shiny-golden-waves-light-streaks-yellow-color-over-a-dark-background-ideal-for-motion-graphics-backgrounds-composition-etc-seamlessly-loopable_riykwfq8e_thumbnail-full01.png"); 
	padding: 0; 
	margin: 0; 
	overflow: hidden;
}

#left {
	position: absolute;
	top: 50%;
	left: 50%; 
	transform: translate(-50%, -50%);
	width: 100%;
}

#background-canvas {
	opacity: 0.6;	
}

</style>
{/literal}
</head>
<body onload="set_focus()" data-gr-c-s-loaded="true">
<canvas id='background-canvas'>
</canvas>
	<div id="left" class="pr">
		<div id="wrap">
			<div id="main">
				<div id="wrapper">
					<div id="logo_wrapper" class="standard_logo_wrapper mb24">
						<h1 style="height: 100%; display: table-cell; vertical-align: bottom;">
							<img id="logo" class="standard_logo"
								src="{$COMPANY_DETAILS.companylogo}"
								alt="{$coreBOS_uiapp_name}" border="0" name="logo">
						</h1>
					</div>
					<h2 id="header" class="mb12" style="display: none;"></h2>
					<div id="content" style="display: block;">
						<div id="chooser" style="display: none">
							<div class="loginError" id="chooser_error" style="display: block;"></div>
						</div>
						<div id="theloginform" style="display: block;">
							{if $LOGIN_ERROR neq ''}
							<div class="errorMessage">{$LOGIN_ERROR}</div>
							{/if}
							<form method="post" id="login_form" action="index.php" target="_top" autocomplete="off" novalidate="novalidate">
								<input type="hidden" name="module" value="Users" />
								<input type="hidden" name="action" value="Authenticate" />
								<input type="hidden" name="return_module" value="Users" />
								<input type="hidden" name="return_action" value="Login" />
								<div id="usernamegroup" class="inputgroup">
									<div id="username_container">
										<input class="input r4 wide mb16 mt8 username" type="email" value="" placeholder="Username" name="user_name" id="username" style="display: block;">
									</div>
								</div>
								<input class="input r4 wide mb16 mt8 password" type="password" id="password" placeholder="Password" name="user_password"
									onkeypress="checkCaps(event)" autocomplete="off">
								<div id="pwcaps" class="mb16" style="display: none">
									<img id="pwcapsicon" alt="{'CapsLockActive'|getTranslatedString}" width="12" src="themes/login/lds/capslock_blue.png">
									{'CapsLockActive'|getTranslatedString}
								</div>
								<input class="button r4 wide primary" type="submit" id="Login" name="Login" value="{'StartSession'|getTranslatedString}">
							</form>
						</div>
					</div>
				</div>
			</div>

			<div id="footer">
				© Powered by {$coreBOS_uiapp_name}.
			</div>
		</div>

	</div>
	<script>
		var SCREEN_WIDTH = window.innerWidth;
		var SCREEN_HEIGHT = window.innerHeight;

		var RADIUS = 70;

		var RADIUS_SCALE = 1;
		var RADIUS_SCALE_MIN = 1;
		var RADIUS_SCALE_MAX = 1.5;

		var QUANTITY = 10;

		var canvas;
		var context;
		var particles;

		var mouseX = SCREEN_WIDTH * 0.5;
		var mouseY = SCREEN_HEIGHT * 0.5;
		var mouseIsDown = false;

		function init() {

		canvas = document.getElementById( 'background-canvas' );
		
		if (canvas && canvas.getContext) {
				context = canvas.getContext('2d');
				
				// Register event listeners
				window.addEventListener('mousemove', documentMouseMoveHandler, false);
				window.addEventListener('mousedown', documentMouseDownHandler, false);
				window.addEventListener('mouseup', documentMouseUpHandler, false);
				document.addEventListener('touchstart', documentTouchStartHandler, false);
				document.addEventListener('touchmove', documentTouchMoveHandler, false);
				window.addEventListener('resize', windowResizeHandler, false);
				
				createParticles();
				
				windowResizeHandler();
				
				setInterval( loop, 1000 / 60 );
			}
		}

		function createParticles() {
			particles = [];
			
			for (var i = 0; i < QUANTITY; i++) {
				var particle = {
					size: 1,
					position: { x: mouseX, y: mouseY },
					offset: { x: 0, y: 0 },
					shift: { x: mouseX, y: mouseY },
					speed: 0.01+Math.random()*0.04,
					targetSize: 1,
					//fillColor: '#' + (Math.random() * 0x404040 + 0xaaaaaa | 0).toString(16),
					fillColor: '#FEB218',
					orbit: RADIUS*.5 + (RADIUS * .5 * Math.random())
				};
				
				particles.push( particle );
			}
		}

		function documentMouseMoveHandler(event) {
			mouseX = event.clientX - (window.innerWidth - SCREEN_WIDTH) * .5;
			mouseY = event.clientY - (window.innerHeight - SCREEN_HEIGHT) * .5;
		}

		function documentMouseDownHandler(event) {
			mouseIsDown = true;
		}

		function documentMouseUpHandler(event) {
			mouseIsDown = false;
		}

		function documentTouchStartHandler(event) {
			if(event.touches.length == 1) {
				event.preventDefault();

				mouseX = event.touches[0].pageX - (window.innerWidth - SCREEN_WIDTH) * .5;;
				mouseY = event.touches[0].pageY - (window.innerHeight - SCREEN_HEIGHT) * .5;
			}
		}

		function documentTouchMoveHandler(event) {
			if(event.touches.length == 1) {
				event.preventDefault();

				mouseX = event.touches[0].pageX - (window.innerWidth - SCREEN_WIDTH) * .5;;
				mouseY = event.touches[0].pageY - (window.innerHeight - SCREEN_HEIGHT) * .5;
			}
		}

		function windowResizeHandler() {
			SCREEN_WIDTH = window.innerWidth;
			SCREEN_HEIGHT = window.innerHeight;
			
			canvas.width = SCREEN_WIDTH;
			canvas.height = SCREEN_HEIGHT;
		}

		function loop() {
			
			if( mouseIsDown ) {
				RADIUS_SCALE += ( RADIUS_SCALE_MAX - RADIUS_SCALE ) * (0.02);
			}
			else {
				RADIUS_SCALE -= ( RADIUS_SCALE - RADIUS_SCALE_MIN ) * (0.02);
			}
			
			RADIUS_SCALE = Math.min( RADIUS_SCALE, RADIUS_SCALE_MAX );
			
			context.fillStyle = 'rgba(0,0,0,0.05)';
				context.fillRect(0, 0, context.canvas.width, context.canvas.height);
			
			for (i = 0, len = particles.length; i < len; i++) {
				var particle = particles[i];
				
				var lp = { x: particle.position.x, y: particle.position.y };
				
				// Rotation
				particle.offset.x += particle.speed;
				particle.offset.y += particle.speed;
				
				// Follow mouse with some lag
				particle.shift.x += ( mouseX - particle.shift.x) * (particle.speed);
				particle.shift.y += ( mouseY - particle.shift.y) * (particle.speed);
				
				// Apply position
				particle.position.x = particle.shift.x + Math.cos(i + particle.offset.x) * (particle.orbit*RADIUS_SCALE);
				particle.position.y = particle.shift.y + Math.sin(i + particle.offset.y) * (particle.orbit*RADIUS_SCALE);
				
				// Limit to screen bounds
				particle.position.x = Math.max( Math.min( particle.position.x, SCREEN_WIDTH ), 0 );
				particle.position.y = Math.max( Math.min( particle.position.y, SCREEN_HEIGHT ), 0 );
				
				particle.size += ( particle.targetSize - particle.size ) * 0.05;
				
				if( Math.round( particle.size ) == Math.round( particle.targetSize ) ) {
					particle.targetSize = 1 + Math.random() * 7;
				}
				
				context.beginPath();
				context.fillStyle = particle.fillColor;
				context.strokeStyle = particle.fillColor;
				context.lineWidth = particle.size;
				context.moveTo(lp.x, lp.y);
				context.lineTo(particle.position.x, particle.position.y);
				context.stroke();
				context.arc(particle.position.x, particle.position.y, particle.size/2, 0, Math.PI*2, true);
				context.fill();
			}
		}

		window.onload = init;
	</script>
