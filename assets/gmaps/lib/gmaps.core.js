if(void 0==window.google&&void 0==window.google.maps)throw"Google Maps API is required. Please register the following JavaScript library http://maps.google.com/maps/api/js?sensor=true.";var extend_object=function(e,t){var o;if(e===t)return e;for(o in t)e[o]=t[o];return e},replace_object=function(e,t){var o;if(e===t)return e;for(o in t)void 0!=e[o]&&(e[o]=t[o]);return e},array_map=function(e,t){var o,n=Array.prototype.slice.call(arguments,2),i=[],a=e.length;if(Array.prototype.map&&e.map===Array.prototype.map)i=Array.prototype.map.call(e,function(e){return callback_params=n,callback_params.splice(0,0,e),t.apply(this,callback_params)});else for(o=0;o<a;o++)callback_params=n,callback_params=callback_params.splice(0,0,e[o]),i.push(t.apply(this,callback_params));return i},array_flat=function(e){var t,o=[];for(t=0;t<e.length;t++)o=o.concat(e[t]);return o},coordsToLatLngs=function(e,t){var o=e[0],n=e[1];return t&&(o=e[1],n=e[0]),new google.maps.LatLng(o,n)},arrayToLatLng=function(e,t){var o;for(o=0;o<e.length;o++)e[o].length>0&&"number"!=typeof e[o][0]?e[o]=arrayToLatLng(e[o],t):e[o]=coordsToLatLngs(e[o],t);return e},getElementById=function(e,t){var e=e.replace("#","");return"jQuery"in this&&t?$("#"+e,t)[0]:document.getElementById(e)},findAbsolutePosition=function(e){var t=0,o=0;if(e.offsetParent)do{t+=e.offsetLeft,o+=e.offsetTop}while(e=e.offsetParent);return[t,o]},GMaps=function(e){"use strict";var t=document;return function(e){e.zoom=e.zoom||15,e.mapType=e.mapType||"roadmap";var o,n=this,i=["bounds_changed","center_changed","click","dblclick","drag","dragend","dragstart","idle","maptypeid_changed","projection_changed","resize","tilesloaded","zoom_changed"],a=["mousemove","mouseout","mouseover"],s=["el","lat","lng","mapType","width","height","markerClusterer","enableNewStyle"],r=e.el||e.div,l=e.markerClusterer,p=google.maps.MapTypeId[e.mapType.toUpperCase()],m=new google.maps.LatLng(e.lat,e.lng),h=e.zoomControl||!0,c=e.zoomControlOpt||{style:"DEFAULT",position:"TOP_LEFT"},g=c.style||"DEFAULT",d=c.position||"TOP_LEFT",u=e.panControl||!0,f=e.mapTypeControl||!0,y=e.scaleControl||!0,v=e.streetViewControl||!0,w=w||!0,_={},x={zoom:this.zoom,center:m,mapTypeId:p},L={panControl:u,zoomControl:h,zoomControlOptions:{style:google.maps.ZoomControlStyle[g],position:google.maps.ControlPosition[d]},mapTypeControl:f,scaleControl:y,streetViewControl:v,overviewMapControl:w};if("string"==typeof e.el||"string"==typeof e.div?this.el=getElementById(r,e.context):this.el=r,void 0===this.el||null===this.el)throw"No element defined.";for(window.context_menu=window.context_menu||{},window.context_menu[n.el.id]={},this.controls=[],this.overlays=[],this.layers=[],this.singleLayers={},this.markers=[],this.polylines=[],this.routes=[],this.polygons=[],this.infoWindow=null,this.overlay_el=null,this.zoom=e.zoom,this.registered_events={},this.el.style.width=e.width||this.el.scrollWidth||this.el.offsetWidth,this.el.style.height=e.height||this.el.scrollHeight||this.el.offsetHeight,google.maps.visualRefresh=e.enableNewStyle,o=0;o<s.length;o++)delete e[s[o]];for(1!=e.disableDefaultUI&&(x=extend_object(x,L)),_=extend_object(x,e),o=0;o<i.length;o++)delete _[i[o]];for(o=0;o<a.length;o++)delete _[a[o]];this.map=new google.maps.Map(this.el,_),l&&(this.markerClusterer=l.apply(this,[this.map]));var C=function(e,t){var o="",i=window.context_menu[n.el.id][e];for(var a in i)if(i.hasOwnProperty(a)){var s=i[a];o+='<li><a id="'+e+"_"+a+'" href="#">'+s.title+"</a></li>"}if(getElementById("gmaps_context_menu")){var r=getElementById("gmaps_context_menu");r.innerHTML=o;var l=r.getElementsByTagName("a"),p=l.length;for(a=0;a<p;a++){var m=l[a];google.maps.event.clearListeners(m,"click"),google.maps.event.addDomListenerOnce(m,"click",function(o){o.preventDefault(),i[this.id.replace(e+"_","")].action.apply(n,[t]),n.hideContextMenu()},!1)}var h=findAbsolutePosition.apply(this,[n.el]),c=h[0]+t.pixel.x-15,g=h[1]+t.pixel.y-15;r.style.left=c+"px",r.style.top=g+"px",r.style.display="block"}};this.buildContextMenu=function(e,t){if("marker"===e){t.pixel={};var o=new google.maps.OverlayView;o.setMap(n.map),o.draw=function(){var n=o.getProjection(),i=t.marker.getPosition();t.pixel=n.fromLatLngToContainerPixel(i),C(e,t)}}else C(e,t)},this.setContextMenu=function(e){window.context_menu[n.el.id][e.control]={};var o,i=t.createElement("ul");for(o in e.options)if(e.options.hasOwnProperty(o)){var a=e.options[o];window.context_menu[n.el.id][e.control][a.name]={title:a.title,action:a.action}}i.id="gmaps_context_menu",i.style.display="none",i.style.position="absolute",i.style.minWidth="100px",i.style.background="white",i.style.listStyle="none",i.style.padding="8px",i.style.boxShadow="2px 2px 6px #ccc",t.body.appendChild(i);var s=getElementById("gmaps_context_menu");google.maps.event.addDomListener(s,"mouseout",function(e){e.relatedTarget&&this.contains(e.relatedTarget)||window.setTimeout(function(){s.style.display="none"},400)},!1)},this.hideContextMenu=function(){var e=getElementById("gmaps_context_menu");e&&(e.style.display="none")};for(var b=function(t,o){google.maps.event.addListener(t,o,function(t){void 0==t&&(t=this),e[o].apply(this,[t]),n.hideContextMenu()})},T=0;T<i.length;T++)(k=i[T])in e&&b(this.map,k);for(T=0;T<a.length;T++){var k=a[T];k in e&&b(this.map,k)}google.maps.event.addListener(this.map,"rightclick",function(t){e.rightclick&&e.rightclick.apply(this,[t]),void 0!=window.context_menu[n.el.id].map&&n.buildContextMenu("map",t)}),this.refresh=function(){google.maps.event.trigger(this.map,"resize")},this.fitZoom=function(){var e,t=[],o=this.markers.length;for(e=0;e<o;e++)t.push(this.markers[e].getPosition());this.fitLatLngBounds(t)},this.fitLatLngBounds=function(e){for(var t=e.length,o=new google.maps.LatLngBounds,n=0;n<t;n++)o.extend(e[n]);this.map.fitBounds(o)},this.setCenter=function(e,t,o){this.map.panTo(new google.maps.LatLng(e,t)),o&&o()},this.getElement=function(){return this.el},this.zoomIn=function(e){e=e||1,this.zoom=this.map.getZoom()+e,this.map.setZoom(this.zoom)},this.zoomOut=function(e){e=e||1,this.zoom=this.map.getZoom()-e,this.map.setZoom(this.zoom)};var z,P=[];for(z in this.map)"function"!=typeof this.map[z]||this[z]||P.push(z);for(o=0;o<P.length;o++)!function(e,t,o){e[o]=function(){return t[o].apply(t,arguments)}}(this,this.map,P[o])}}();