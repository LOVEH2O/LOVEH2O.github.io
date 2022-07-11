
var projectName = '汽车销售系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '热销汽车',
	url: './pages/rexiaoqiche/list.jsp'
}, 

{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmn7v1m/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"汽车品牌","menuJump":"列表","tableName":"qichepinpai"}],"menu":"汽车品牌管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除","查看评论","入库"],"menu":"热销汽车","menuJump":"列表","tableName":"rexiaoqiche"}],"menu":"热销汽车管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看","修改","删除","报表"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","修改","删除","审核","支付"],"menu":"汽车退订","menuJump":"列表","tableName":"qichetuiding"}],"menu":"汽车退订管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","修改","删除","报表"],"menu":"进车信息","menuJump":"列表","tableName":"jinchexinxi"}],"menu":"进车信息管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"在线客服","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","立即订购"],"menu":"热销汽车列表","menuJump":"列表","tableName":"rexiaoqiche"}],"menu":"热销汽车模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-full","buttons":["删除","支付","查看","汽车退订"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","删除"],"menu":"汽车退订","menuJump":"列表","tableName":"qichetuiding"}],"menu":"汽车退订管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","立即订购"],"menu":"热销汽车列表","menuJump":"列表","tableName":"rexiaoqiche"}],"menu":"热销汽车模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
