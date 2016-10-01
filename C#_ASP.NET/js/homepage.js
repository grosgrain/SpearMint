$(document).ready(function()
        {
		$("#tag1").click(function() { $("#display1").css('display','block'); });
		$("#tag1").click(function() { $("#display2").css('display','none'); });
		$("#tag1").click(function() { $("#display3").css('display','none'); });
		$("#tag1").click(function() { $(this).addClass('testClass');});
		$("#tag1").click(function() { $("#tag2").removeClass('testClass');});
		$("#tag1").click(function() { $("#tag3").removeClass('testClass');});
		$("#tag2").click(function() { $("#display2").css('display','block'); });
		$("#tag2").click(function() { $("#display1").css('display','none'); });
		$("#tag2").click(function() { $("#display3").css('display','none'); });
		$("#tag2").click(function() { $(this).addClass('testClass');});
		$("#tag2").click(function() { $("#tag1").removeClass('testClass');});
		$("#tag2").click(function() { $("#tag3").removeClass('testClass');});
		$("#tag3").click(function() { $("#display3").css('display','block'); });
		$("#tag3").click(function() { $("#display1").css('display','none'); });
		$("#tag3").click(function() { $("#display2").css('display','none'); });
		$("#tag3").click(function() { $(this).addClass('testClass');});
		$("#tag3").click(function() { $("#tag1").removeClass('testClass');});
		$("#tag3").click(function() { $("#tag2").removeClass('testClass');});
		});
// ?????javascript