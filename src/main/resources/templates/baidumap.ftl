<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
    <meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
    <title>百度地图API自定义地图</title>
    <!--引用百度地图API-->
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=3aEy96AzATPOZGzTGdKzHLB3QsT2ixbu"></script>
  </head>
  
  <body>
    <!--百度地图容器-->
    <div style="width:600px;height:400px;font-size:12px" id="map"></div>
    </p>
  </body>
  <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
      createMap();//创建地图
      setMapEvent();//设置地图事件
      addMapControl();//向地图添加控件
      addMapOverlay();//向地图添加覆盖物
    }
    function createMap(){ 
      map = new BMap.Map("map"); 
      map.centerAndZoom(new BMap.Point(114.412657,30.482434),15);

        // 百度地图API功能
       // var map = new BMap.Map("allmap");
        //ar point = new BMap.Point();
        //map.centerAndZoom(point,12);
        // 创建地址解析器实例
        var myGeo = new BMap.Geocoder();
        var marker = null;
        // 将地址解析结果显示在地图上,并调整地图视野
        myGeo.getPoint("湖北省武汉市高新大道保利茉莉公馆", function(point){
            if (point) {
                map.centerAndZoom(point, 16);
                marker = new BMap.Marker(point);
                map.addOverlay(marker);
                var opts = {
                    width : 200,     // 信息窗口宽度
                    height: 100,     // 信息窗口高度
                    title : "光谷java实训基地" , // 信息窗口标题
                    enableMessage:true,//设置允许信息窗发送短息
                    message:"公交地铁均可直达,如未找到可以联系工作人员~"
                }
                var infoWindow = new BMap.InfoWindow("地址：湖北省武汉市高新大道保利茉莉公馆134号", opts);  // 创建信息窗口对象
                marker.addEventListener("click", function(){
                    map.openInfoWindow(infoWindow,point); //开启信息窗口
                });
            }
        }, "武汉市");
        // 覆盖区域图层测试
        map.addTileLayer(new BMap.PanoramaCoverageLayer());

        var stCtrl = new BMap.PanoramaControl(); //构造全景控件
        stCtrl.setOffset(new BMap.Size(20, 20));
        map.addControl(stCtrl);//添加全景控件
    }
    function setMapEvent(){
      map.enableScrollWheelZoom();
      map.enableKeyboard();
      map.enableDragging();
      map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
      target.addEventListener("click",function(){
        target.openInfoWindow(window);
      });
    }
    function addMapOverlay(){
    }
    //向地图添加控件
    function addMapControl(){
      var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
      scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
      map.addControl(scaleControl);
      var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
      map.addControl(navControl);
      var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
      map.addControl(overviewControl);
    }
    var map;
      initMap();
  </script>
</html>