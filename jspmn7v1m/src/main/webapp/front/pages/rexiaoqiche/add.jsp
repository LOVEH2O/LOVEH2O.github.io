<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
			background-image: url(http://codegen.caihongy.cn/20220305/3a36f390dfd14ce3be6e1035bf3845c8.png);
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
			margin: 0 auto;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		
		button, button:focus {
			outline: none;
		}
		
		.data-add-container .add .layui-select-title .layui-unselect {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(209, 209, 209, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.data-add-container .add .layui-form-item {
			display: flex;
			align-items: center;
			justify-content: center;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-form-label {
			margin: 0;
			position: inherit;
			background: transparent;
			border: 0;
		}
		.data-add-container .add .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-input-inline {
			margin: 0;
			flex: 1;
			display: flex;
		}
	</style>
	<body>


		<div id="app">
		
			<!-- 轮播图 -->
			<!-- <div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div> -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container">
		
				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">汽车名称：</label>
						<div class="layui-input-block">
							<input v-model="detail.qichemingcheng" type="text" :readonly="ro.qichemingcheng" name="qichemingcheng" id="qichemingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">汽车图片：</label>
						<div v-if="detail.qichetupian" class="layui-input-block">
							<img id="qichetupianImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :src="baseurl+detail.qichetupian">
							<input type="hidden" :value="detail.qichetupian" id="qichetupian" name="qichetupian" />
						</div>
						<div class="layui-input-block">
							<button v-if="!ro.qichetupian" type="button" class="layui-btn btn-theme" id="qichetupianUpload">
								<i class="layui-icon">&#xe67c;</i>上传汽车图片
							</button>
						</div>
					</div>
		            <div class="layui-form-item" pane>
		                <label class="layui-form-label">汽车品牌</label>
		                <div class="layui-input-block">
		                    <select name="qichepinpai" id="qichepinpai" lay-filter="qichepinpai"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in qichepinpai" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div class="layui-form-item" pane>
		                <label class="layui-form-label">汽车分类</label>
		                <div class="layui-input-block">
		                    <select name="qichefenlei" id="qichefenlei" lay-filter="qichefenlei"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in qichefenlei" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div class="layui-form-item" pane>
		                <label class="layui-form-label">天窗</label>
		                <div class="layui-input-block">
		                    <select name="tianchuang" id="tianchuang" lay-filter="tianchuang"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in tianchuang" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div class="layui-form-item" pane>
		                <label class="layui-form-label">换挡方式</label>
		                <div class="layui-input-block">
		                    <select name="huandangfangshi" id="huandangfangshi" lay-filter="huandangfangshi"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in huandangfangshi" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div class="layui-form-item" pane>
		                <label class="layui-form-label">座位</label>
		                <div class="layui-input-block">
		                    <select name="zuowei" id="zuowei" lay-filter="zuowei"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in zuowei" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">汽车颜色：</label>
						<div class="layui-input-block">
							<input v-model="detail.qicheyanse" type="text" :readonly="ro.qicheyanse" name="qicheyanse" id="qicheyanse" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">上市年份：</label>
						<div class="layui-input-block">
							<input v-model="detail.shangshinianfen" type="text" :readonly="ro.shangshinianfen" name="shangshinianfen" id="shangshinianfen" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">性能展示：</label>
						<div v-if="detail.xingnengzhanshi" class="layui-input-block">
							<video style="width: 100%;" :src="detail.xingnengzhanshi" controls="controls">
								您的浏览器不支持视频播放
							</video>
		                    <input type="hidden" :value="detail.xingnengzhanshi" id="xingnengzhanshi" name="xingnengzhanshi" />
						</div>
						<div class="layui-input-block">
							<button type="button" class="layui-btn btn-theme" id="xingnengzhanshiUpload">
								<i class="layui-icon">&#xe67c;</i>上传性能展示
							</button>
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">汽车价格：</label>
						<div class="layui-input-block">
							<input v-model="detail.qichejiage" type="text" :readonly="ro.qichejiage" name="qichejiage" id="qichejiage" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">数量：</label>
						<div class="layui-input-block">
							<input v-model="detail.shuliang" type="text" :readonly="ro.shuliang" name="shuliang" id="shuliang" autocomplete="off" class="layui-input">
						</div>
					</div>
		            
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">参数配置：</label>
						<div class="layui-input-block">
							<textarea name="canshupeizhi" id="canshupeizhi">请输入参数配置</textarea>
						</div>
					</div>
		
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        qichemingcheng : false,
                                        qichetupian : false,
                                        qichepinpai : false,
                                        qichefenlei : false,
                                        tianchuang : false,
                                        huandangfangshi : false,
                                        zuowei : false,
                                        qicheyanse : false,
                                        shangshinianfen : false,
                                        xingnengzhanshi : false,
                                        qichejiage : false,
                                        shuliang : false,
                                        canshupeizhi : false,
                                        thumbsupnum : false,
                                        crazilynum : false,
                                        clicktime : false,
                                        clicknum : false,
					},
                    detail: {
                        qichemingcheng: '',
                        qichetupian: '',
                        qichepinpai: '',
                        qichefenlei: '',
                        tianchuang: '',
                        huandangfangshi: '',
                        zuowei: '',
                        qicheyanse: '',
                        shangshinianfen: '',
                        xingnengzhanshi: '',
                        qichejiage: '',
                        shuliang: '',
                        canshupeizhi: '',
                        thumbsupnum: '',
                        crazilynum: '',
                        clicktime: '',
                        clicknum: '',
                    },
					qichepinpai: [],
					qichefenlei: '紧凑型车,中型车,中高级车,豪华车,商务车,越野车,跑车'.split(','),
					tianchuang: '有天窗,没天窗'.split(','),
					huandangfangshi: '手动挡,自动挡'.split(','),
					zuowei: '2座,4座,5座,7座,其他'.split(','),
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '100%',
						  	height: '250px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3000',
						  	indicator: 'none'
						  });
						
						})
					}
				});

				// 上传图片
				var qichetupianUpload = upload.render({
					//绑定元素
					elem: '#qichetupianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#qichetupian').val(url);
							jquery('#qichetupianImg').attr('src', http.baseurl +url)
							vue.detail.qichetupian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				http.request(`option/qichepinpai/qichepinpai`,'get',{},(res)=>{
					vue.qichepinpai = res.data
				});
                form.on('select(qichefenlei)', function (data) {
                    vue.detail.qichefenlei=data.value;
                });
                form.on('select(tianchuang)', function (data) {
                    vue.detail.tianchuang=data.value;
                });
                form.on('select(huandangfangshi)', function (data) {
                    vue.detail.huandangfangshi=data.value;
                });
                form.on('select(zuowei)', function (data) {
                    vue.detail.zuowei=data.value;
                });
                var xingnengzhanshiUpload = upload.render({
					//绑定元素
					elem: '#xingnengzhanshiUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'video',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#xingnengzhanshi').val(url);
							vue.detail.xingnengzhanshi = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var edit = tinymce.render({
                    elem: "#canshupeizhi",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                                        if(o=='qichemingcheng'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.qichemingcheng = true;
                                                continue;
                                        }
                                        if(o=='qichetupian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.qichetupian = true;
                                                continue;
                                        }
                                        if(o=='qichepinpai'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.qichepinpai = true;
                                                continue;
                                        }
                                        if(o=='qichefenlei'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.qichefenlei = true;
                                                continue;
                                        }
                                        if(o=='tianchuang'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.tianchuang = true;
                                                continue;
                                        }
                                        if(o=='huandangfangshi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.huandangfangshi = true;
                                                continue;
                                        }
                                        if(o=='zuowei'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.zuowei = true;
                                                continue;
                                        }
                                        if(o=='qicheyanse'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.qicheyanse = true;
                                                continue;
                                        }
                                        if(o=='shangshinianfen'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shangshinianfen = true;
                                                continue;
                                        }
                                        if(o=='xingnengzhanshi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xingnengzhanshi = true;
                                                continue;
                                        }
                                        if(o=='qichejiage'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.qichejiage = true;
                                                continue;
                                        }
                                        if(o=='shuliang'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shuliang = true;
                                                continue;
                                        }
                                        if(o=='canshupeizhi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.canshupeizhi = true;
                                                continue;
                                        }
                                        if(o=='thumbsupnum'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.thumbsupnum = true;
                                                continue;
                                        }
                                        if(o=='crazilynum'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.crazilynum = true;
                                                continue;
                                        }
                                        if(o=='clicktime'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.clicktime = true;
                                                jquery('#clicktime').val(obj[o]);
                                                continue;
                                        }
                                        if(o=='clicknum'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.clicknum = true;
                                                continue;
                                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.tianchuang){
                        layer.msg('天窗不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.qichejiage)){
                        layer.msg('汽车价格应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.shuliang)){
                        layer.msg('数量应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var canshupeizhi = tinymce.get('#canshupeizhi').getContent()
					data.canshupeizhi = canshupeizhi;
                    if(!isIntNumer(data.thumbsupnum)){
                        layer.msg('赞应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.crazilynum)){
                        layer.msg('踩应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('rexiaoqiche/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('rexiaoqiche' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('rexiaoqiche' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>