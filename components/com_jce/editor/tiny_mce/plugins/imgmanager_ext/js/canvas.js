/* Image Manager Extended - 2.0.20 | 20 August 2013 | http://www.joomlacontenteditor.net | Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved | GNU/GPL Version 2 - http://www.gnu.org/licenses/gpl-2.0.html */
(function($){$.support.canvas=!!document.createElement('canvas').getContext;function clamp(value,min,max){return Math.min(max,Math.max(min,value));}
$.widget("ui.canvas",{stack:[],options:{onfilterstart:$.noop,onfilterprogress:$.noop},_create:function(){this.canvas=document.createElement('canvas');this.context=this.canvas.getContext('2d');this.draw();},getContext:function(){return this.context;},getCanvas:function(){return this.canvas;},setSize:function(w,h){$.extend(this.options,{width:w,height:h});this.draw();},draw:function(el,w,h){el=el||$(this.element).get(0);var w=w||this.options.width||el.width,h=h||this.options.height||el.height;this.save();$(this.canvas).attr({width:w,height:h});this.context.drawImage(el,0,0,w,h);},free:function(n){n.getContext('2d').clearRect(0,0,0,0);$(n).remove();},clone:function(){return $(this.canvas).clone().get(0);},copy:function(){var copy=this.clone();copy.getContext('2d').drawImage(this.canvas,0,0);return copy;},clear:function(){var ctx=this.context;var w=$(this.element).width(),h=$(this.element).height();if(ctx){ctx.clearRect(0,0,w,h);}},clamp:function(v,min,max){if(v<min){v=min;}else if(v>max){v=max;}
return v;},resize:function(w,h,save){var ctx=this.context;w=parseInt(w),h=parseInt(h);var cw=this.canvas.width,ch=this.canvas.height;if(ctx){if(save){this.save();}
ctx.imageSmoothingEnabled=ctx.mozImageSmoothingEnabled=ctx.webkitImageSmoothingEnabled=true;var copy=this.copy();copy.getContext('2d').drawImage(this.canvas,0,0,w,h);$(this.canvas,copy).attr({width:w,height:h});ctx.drawImage(copy,0,0);this.free(copy);}},crop:function(w,h,x,y,save){var ctx=this.context;w=parseInt(w),h=parseInt(h),x=parseInt(x),y=parseInt(y);if(ctx){if(save){this.save();}
if(x<0)
x=0;if(x>this.canvas.width-1){x=this.canvas.width-1;}
if(y<0)
y=0;if(y>this.canvas.height-1){y=this.canvas.height-1;}
if(w<1)
w=1;if(x+w>this.canvas.width){w=this.canvas.width-x;}
if(h<1)
h=1;if(y+h>this.canvas.height){h=this.canvas.height-y;}
ctx.imageSmoothingEnabled=ctx.mozImageSmoothingEnabled=ctx.webkitImageSmoothingEnabled=true;var copy=this.copy();copy.getContext('2d').drawImage(this.canvas,0,0);$(this.canvas).attr({width:w,height:h});ctx.drawImage(copy,x,y,w,h,0,0,w,h);this.free(copy);}},rotate:function(angle,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height,cw,ch;if(angle<0){angle=angle+360;}
switch(angle){case 90:case 270:cw=h;ch=w;break;case 180:cw=w;ch=h;break;}
if(ctx){if(save){this.save();}
var copy=this.copy();$(this.canvas).attr({width:cw,height:ch});ctx.translate(cw/2,ch/2);ctx.rotate(angle*Math.PI/180);ctx.drawImage(copy,-w/2,-h/2);this.free(copy);}},flip:function(axis,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(ctx){if(save){this.save();}
var copy=this.copy();copy.getContext('2d').drawImage(this.canvas,0,0,w,h,0,0,w,h);ctx.clearRect(0,0,w,h);$(this.canvas).attr({width:w,height:h});if(axis=="horizontal"){ctx.scale(-1,1);ctx.drawImage(copy,-w,0,w,h);}else{ctx.scale(1,-1);ctx.drawImage(copy,0,-h,w,h);}
this.free(copy);}},grayscale:function(save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(save){this.save();}
this.filter(function(data){for(var i=0,len=data.length;i<len;i+=4){var v=0.299*data[i]+0.587*data[i+1]+0.114*data[i+2];data[i]=v;data[i+1]=v;data[i+2]=v;}});},colorize:function(values,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(save){this.save();}
function diff(dif,dest,src){return(dif*dest+(1-dif)*src);}
function toRGB(color){color=color.replace(new RegExp('[^0-9A-F]','gi'),'');r=parseInt(color.substring(0,2),16);g=parseInt(color.substring(2,4),16);b=parseInt(color.substring(4,6),16);return[r,g,b];}
var amount=values.shift();var color=values.shift();amount=Math.max(0,Math.min(1,amount/100));if(!color){color='#FFFFFF';}
if($.type(color,'string')){color=toRGB(color);}
this.filter(function(data){for(var i=0,len=data.length;i<len;i+=4){var r=data[i];var g=data[i+1];var b=data[i+2];data[i]=Math.min(255,Math.max(0,Math.round(r+color[0])));data[i+1]=Math.min(255,Math.max(0,Math.round(g+color[1])));data[i+2]=Math.min(255,Math.max(0,Math.round(b+color[2])));}});},sepia:function(amount,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(save){this.save();}
this.filter(function(data,start,end){for(var i=0,len=data.length;i<len;i+=4){var r=data[i];var g=data[i+1];var b=data[i+2];data[i]=r*0.393+g*0.769+b*0.189;data[i+1]=r*0.349+g*0.686+b*0.168;data[i+2]=r*0.272+g*0.534+b*0.131;}});},invert:function(save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(save){this.save();}
this.filter(function(data){for(var i=0,len=data.length;i<len;i+=4){data[i]=255-data[i];data[i+1]=255-data[i+1];data[i+2]=255-data[i+2];}});},threshold:function(threshold,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(save){this.save();}
threshold=parseInt(threshold)||128;this.filter(function(data,start,end){for(var i=0,len=data.length;i<len;i+=4){var r=data[i];var g=data[i+1];var b=data[i+2];var v=Math.round((r+g+b)/3)>=threshold?255:0;data[i]=v;data[i+1]=v;data[i+2]=v;}},threshold);},brightness:function(amount,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;amount=Math.min(100,Math.max(-100,amount));if(save){this.save();}
this.filter(function(data){for(var i=0,len=data.length;i<len;i+=4){var r=data[i];var g=data[i+1];var b=data[i+2];data[i]=Math.max(0,Math.min(255,Math.round(r+amount)));data[i+1]=Math.max(0,Math.min(255,Math.round(g+amount)));data[i+2]=Math.max(0,Math.min(255,Math.round(b+amount)));}});},contrast:function(amount,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;amount=Math.max(-100,Math.min(100,amount));var factor=1;if(amount>0){factor=1+(amount/100);}else{factor=(100-Math.abs(amount))/100;}
if(save){this.save();}
function n(x){return Math.max(0,Math.min(255,x));}
this.filter(function(data){for(var i=0,len=data.length;i<len;i+=4){var r=data[i];var g=data[i+1];var b=data[i+2];r=n(factor*(r-128)+128);g=n(factor*(g-128)+128);b=n(factor*(b-128)+128);data[i]=Math.min(255,Math.max(0,Math.round(r)));data[i+1]=Math.min(255,Math.max(0,Math.round(g)));data[i+2]=Math.min(255,Math.max(0,Math.round(b)));}});},saturate:function(v,save){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;v=parseFloat(v)/100;v=Math.max(-1,Math.min(1,v));if(save){this.save();}
this.filter(function(data){for(var i=0,len=data.length;i<len;i+=4){var r=data[i];var g=data[i+1];var b=data[i+2];var average=(r+g+b)/3;r+=Math.round((r-average)*v);g+=Math.round((g-average)*v);b+=Math.round((b-average)*v);data[i]=Math.min(255,Math.max(0,r));data[i+1]=Math.min(255,Math.max(0,g));data[i+2]=Math.min(255,Math.max(0,b));}});},desaturate:function(v,save){this.saturate(0-v,save);},blur:function(v,save){},filter:function(fn,amount,x,y,w,h){var self=this,ctx=this.context,rx,ry,size=480,imageData,rects=[],lastTime,startTime,rectIndex=0;x=x||0;y=y||0;w=w||this.canvas.width;h=h||this.canvas.height;for(ry=y;ry<h;ry+=size){for(rx=x;rx<w;rx+=size){rects.push({x:rx,y:ry,w:rx+size>w?w-rx:size,h:ry+size>h?h-ry:size});}}
lastTime=startTime=new Date().getTime();function processNext(){var rect=rects[rectIndex++],now;if(rect){imageData=ctx.getImageData(rect.x,rect.y,rect.w,rect.h);fn(imageData.data);ctx.putImageData(imageData,rect.x,rect.y);now=new Date().getTime();if(now-lastTime<1000){processNext();}else{lastTime=now;window.setTimeout(processNext,0);self._trigger('onfilterprogress',null,rectIndex/rects.length);}}else{self._trigger('onfilterprogress',null,1);return;}}
processNext();},save:function(){var ctx=this.context,w=this.canvas.width,h=this.canvas.height;if(!ctx){return;}
this.stack.push({width:w,height:h,data:ctx?ctx.getImageData(0,0,w,h):this.glfx.contents()});},restore:function(){var ctx=this.context,img=$(this.element).get(0);ctx.restore();ctx.drawImage(img,0,0);},undo:function(){var ctx=this.context,img=$(this.element).get(0);var props=this.stack.pop();$(this.canvas).attr({width:props.width,height:props.height});if(props.data){ctx.putImageData(props.data,0,0);}else{this.restore();}},load:function(){var ctx=this.context;var w=this.canvas.width,h=this.canvas.height;var data=ctx.getImageData(0,0,w,h);ctx.clearRect(0,0,w,h);ctx.putImageData(data,0,0);},getMime:function(s){var mime='image/jpeg';var ext=$.String.getExt(s);switch(ext){case'jpg':case'jpeg':mime='image/jpeg';break;case'png':mime='image/png';break;case'bmp':mime='image/bmp';break;}
return mime;},output:function(mime,quality,blob){mime=mime||this.getMime($(this.element).get(0).src);quality=parseInt(quality)||100;quality=Math.max(Math.min(quality,100),10);quality=quality/100;this.load();function dataURItoBlob(dataURI,mime){var byteString,i,arrayBuffer,intArray;if(dataURI.split(',')[0].indexOf('base64')>=0){byteString=atob(dataURI.split(',')[1]);}else{byteString=decodeURIComponent(dataURI.split(',')[1]);}
arrayBuffer=new ArrayBuffer(byteString.length),intArray=new Uint8Array(arrayBuffer);for(i=0;i<byteString.length;i+=1){intArray[i]=byteString.charCodeAt(i);}
return new Blob([arrayBuffer],{'type':mime});}
if(blob){return dataURItoBlob(this.canvas.toDataURL(mime,quality),mime);}
return this.canvas.toDataURL(mime,quality);},remove:function(){$(this.canvas).remove();this.destroy();}});})(jQuery);