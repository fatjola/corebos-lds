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

#left {
	position: absolute;
	top: 50%;
	left: 50%; 
	transform: translate(-50%, -50%);
	width: 100%;
}

</style>
{/literal}
</head>
<body onload="set_focus()" data-gr-c-s-loaded="true">
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
	{literal}
	<script src="//d3js.org/d3.v3.min.js"></script>
<script>

var width = window.innerWidth,
    height = window.innerHeight;

var nodes = d3.range(200).map(function() { return {radius: Math.random() * 12 + 4}; }),
    root = nodes[0];

root.radius = 0;
root.fixed = true;

var force = d3.layout.force()
    .gravity(0.05)
    .charge(function(d, i) { return i ? 0 : -2000; })
    .nodes(nodes)
    .size([width, height]);

force.start();

var canvas = d3.select("body").append("canvas")
    .attr("width", width)
    .attr("height", height);

var context = canvas.node().getContext("2d");
var color = ["#FEB218","#04589B","#FFFFFF"];

force.on("tick", function(e) {
  var q = d3.geom.quadtree(nodes),
      i,
      d,
      n = nodes.length;

  for (i = 1; i < n; ++i) q.visit(collide(nodes[i]));

  context.clearRect(0, 0, width, height);
 
  for (i = 1; i < n; ++i) {
	    context.beginPath();
		context.fillStyle = color[i%color.length];
		d = nodes[i];
		context.moveTo(d.x, d.y);
		context.arc(d.x, d.y, d.radius, 0, 2 * Math.PI);
		context.fill();
  }

});

canvas.on("mousemove", function() {
  var p1 = d3.mouse(this);
  root.px = p1[0];
  root.py = p1[1];
  force.resume();
});

d3.select("#left").on("mousemove", function() {
  var p1 = d3.mouse(this);
  root.px = p1[0];
  root.py = p1[1];
  force.resume();
});

function collide(node) {
  var r = node.radius + 16,
      nx1 = node.x - r,
      nx2 = node.x + r,
      ny1 = node.y - r,
      ny2 = node.y + r;
  return function(quad, x1, y1, x2, y2) {
    if (quad.point && (quad.point !== node)) {
      var x = node.x - quad.point.x,
          y = node.y - quad.point.y,
          l = Math.sqrt(x * x + y * y),
          r = node.radius + quad.point.radius;
      if (l < r) {
        l = (l - r) / l * .5;
        node.x -= x *= l;
        node.y -= y *= l;
        quad.point.x += x;
        quad.point.y += y;
      }
    }
    return x1 > nx2 || x2 < nx1 || y1 > ny2 || y2 < ny1;
  };
}

</script>
	{/literal}