function imgmove() {
    //轮播图
    //定义属性
    var i = 0,
        imgnum = $(".g-list").children().length,
        $imginner = $(".g-list"),
        w_width = $(window).width() - 20;
    $(".g-item img").css({
        "width": w_width + "px"
    })
    $(".g-item").css({
        "width": w_width + "px"
    })
    $(".g-list").css({
            "width": w_width * 4 + "px"
        })
        //console.log(w_width);
    function move() {
        //创建函数
        //轮播到最后张时，跳转到第一张
        if (i == imgnum) {
            $imginner.css({
                "margin-left": 0
            })
            i = 1;
        }
        $imginner.stop().animate({
            "margin-left": -i * w_width + "px"
        }, 500);
        //下标签变色
        if (i == imgnum - 1) {
            $(".g-icons i").eq(0).addClass("cur").siblings().removeClass("cur");
        } else {
            $(".g-icons i").eq(i).addClass("cur").siblings().removeClass("cur");
        }
    }
    //点击下标签，改变轮播图
    $(".g-icons i").each(function(index) {
        $(".g-icons i").on('click', function() {
            var bgnum = $(this).index();
            i = bgnum;
            $imginner.stop().animate({
                "margin-left": -w_width * bgnum + "px"
            }, 500)
            $(".g-icons i").eq(bgnum).addClass("cur").siblings().removeClass("cur");
        })
    })
    var t = setInterval(function() {
        //运行轮播
        i++;
        move();
    }, 3000)
    window.onorientationchange = function() {
            //console.log(t);
            if (t) {
                clearInterval(t);
            }
            i = 1;
            w_width = $(window).width() - 20;
            $(".g-icons i").removeClass("cur");
            $(".g-icons i:first-child").addClass("cur");
            // var w_width = $(window).width() - 20;
            $(".g-list").css({
                "margin-left": -w_width + "px",
            })
            imgmove();
        }
        // 鼠标hover移除定时器
    $(".g-list").hover(function() {
        clearInterval(t);
    }, function() {
        t = setInterval(function() {
            i++;
            move();
        }, 3000)
    })
}

function Carousel_Y() {
    var i = 0,
        imgnum = $(".hotword-r").children().length,
        $imginner = $(".hotword-r");

    function move_Y() {
        //创建函数
        // 当点击到最后一张图时，将索引变成第2张
        if (i == imgnum) {
            $imginner.css({
                "margin-top": 0
            })
            i = 1;
        }
        $imginner.stop().animate({
            "margin-top": -i * 28 + "px"
        }, 500);
    }
    var t = setInterval(function() {
        //运行轮播
        i++;
        move_Y();
    }, 3000)
}

function btn_click() {
    $("#showbtn").on("click", function() {
        $(".hide").show();
        $("#showbtn").hide();
    })
    $("#hidebtn").on("click", function() {
        $(".hide").hide();
        $("#showbtn").show();
    })
    $(".main-nav ul li a").on("click", function() {
        $(".main-nav ul li a").removeClass("oncur");
        $(this).addClass("oncur");
    })
}

function ajax() {
    //var newsid = $(this).attr("class");
    $.ajax({
        url: './build/php/show.php',
        type: 'post',
        dataType: 'json',
        beforeSend: LoadFunction,
        success: succFunction
    })

    function LoadFunction() {
        $(".moremoremore").text('加载中...');
    }

    function succFunction(data) {
        $(".moremoremore").text('点击加载更多');
        inputData(data);
        // console.log(data[i].newstitle);
    }

    function inputData(data) {
        //循环输出
        for (i in data) {
            var dataInt = {
                newdata: [{
                    newstitle: data[i].newstitle,
                    newsimg: data[i].newsimg,
                    newscontent: data[i].newscontent,
                    newstime: data[i].newstime
                }]
            }
            $.each(dataInt.newdata, function(key, value) {
                var newbox = $('<div class="index-list-item">');
                var newsitem = $('<div class="index-list-main">');
                var imgbox = $('<div class="index-list-image">');
                var img = $('<img src="' + $(value).attr("newsimg") + '">');
                var newstext = $('<div class="index-list-main-text">');
                var title = $('<div class="index-list-main-title">').text($(value).attr("newstitle"));
                var content = $('<div class="index-list-main-abs">').text($(value).attr("newscontent"));
                var newsbottom = $('<div class="index-list-bottom">');
                var time = $('<div class="index-list-main-time">');
                var newstime = $('<div class="tip-time">').text($(value).attr("newstime"));
                $(".index-list").append(newbox.append(newsitem.append(imgbox.append(img)).append(newstext.append(title).append(content)).append(newsbottom.append(time.append(newstime)))));
            })
        }
    }
}

function btn_ajax() {
    //选择新闻类型
    $('.main-nav ul li a').on("click", function() {
            var newsid = $(this).attr("id") || {};
            console.log(newsid);
            $.ajax({
                url: './build/php/select.php',
                type: 'post',
                cache: 'false',
                data: { newsid },
                dataType: 'json',
                beforeSend: beforeCheck,
                error: errCheck, //错误执行方法
                success: succCheck //成功执行方法
            })

            function beforeCheck() {
                $('.index-list').empty();
            }

            function errCheck() {
                alert("Error!");
            }

            function succCheck(data) {
                inputData(data);
            }
        })
        // 点击加载更多
    $('.morewrp').on("click", function() {
        var newsid = $(this).attr("class");
        $.ajax({
            url: './build/php/show.php',
            type: 'post',
            dataType: 'json',
            beforeSend: LoadFunction,
            success: succFunction
        })

        function LoadFunction() {
            $(".moremoremore").text('加载中...');
        }

        function succFunction(data) {
            $(".moremoremore").text('点击加载更多');
            inputData(data);
            // console.log(data[i].newstitle);
        }
    })

    function inputData(data) {
        //循环输出
        for (i in data) {
            var dataInt = {
                newdata: [{
                    newstitle: data[i].newstitle,
                    newsimg: data[i].newsimg,
                    newscontent: data[i].newscontent,
                    newstime: data[i].newstime
                }]
            }
            $.each(dataInt.newdata, function(key, value) {
                var newbox = $('<div class="index-list-item">');
                var newsitem = $('<div class="index-list-main">');
                var imgbox = $('<div class="index-list-image">');
                var img = $('<img src="' + $(value).attr("newsimg") + '">');
                var newstext = $('<div class="index-list-main-text">');
                var title = $('<div class="index-list-main-title">').text($(value).attr("newstitle"));
                var content = $('<div class="index-list-main-abs">').text($(value).attr("newscontent"));
                var newsbottom = $('<div class="index-list-bottom">');
                var time = $('<div class="index-list-main-time">');
                var newstime = $('<div class="tip-time">').text($(value).attr("newstime"));
                $(".index-list").append(newbox.append(newsitem.append(imgbox.append(img)).append(newstext.append(title).append(content)).append(newsbottom.append(time.append(newstime)))));
            })
        }
    }
}

imgmove();
Carousel_Y();
btn_click();
ajax();
btn_ajax();
