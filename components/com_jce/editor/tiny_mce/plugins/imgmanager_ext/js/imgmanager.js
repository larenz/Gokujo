/* Image Manager Extended - 2.0.20 | 20 August 2013 | http://www.joomlacontenteditor.net | Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved | GNU/GPL Version 2 - http://www.gnu.org/licenses/gpl-2.0.html */
(function(){tinyMCEPopup.requireLangPack();$.support.canvas=!!document.createElement('canvas').getContext;var ImageManagerDialog={settings:{},mode:0,init:function(){var ed=tinyMCEPopup.editor,n=ed.selection.getNode(),self=this,br,el;$('button#insert').click(function(e){self.insert();e.preventDefault();});tinyMCEPopup.resizeToInnerSize();tinyMCEPopup.restoreSelection();this.mode=$.Cookie.get('wf_imgmanager_ext_mode')||this.settings.view_mode;var src=ed.convertURL(ed.dom.getAttrib(n,'src'));src=decodeURIComponent(src);TinyMCE_Utils.fillClassList('classlist');$.each(this.settings.attributes,function(k,v){if(!parseFloat(v)){$('#attributes-'+k).hide();}});$.Plugin.init({selectChange:function(){ImageManagerDialog.updateStyles();},alerts:this.settings.alerts});$('#onmouseover, #onmouseout').focus(function(){$('#onmouseover, #onmouseout').removeClass('focus');$(this).addClass('focus');});$('#width, #height').change(function(){var a=this,b=$(this).is('#width')?'#height':'#width';self.setDimensions(a,b,'#constrain');});WFPopups.setup();$('#popup_list').change(function(){var selected=WFFileBrowser.getSelectedItems(),s=selected.length;if(s==1){self.selectFile();}
if(s>1){self.selectMultiple();}});if(n.nodeName=='IMG'){$('#insert').button('option','label',tinyMCEPopup.getLang('update','Update',true));$('#src').val(src);var w=this.getAttrib(n,'width'),h=this.getAttrib(n,'height');$('#width').val(w).data('tmp',w);$('#height').val(h).data('tmp',h);$('#alt').val(ed.dom.getAttrib(n,'alt'));$('#title').val(ed.dom.getAttrib(n,'title'));$.each(['top','right','bottom','left'],function(){$('#margin_'+this).val(ImageManagerDialog.getAttrib(n,'margin-'+this));});$('#border_width').val(function(){var v=self.getAttrib(n,'border-width');if($('option[value="'+v+'"]',this).length==0){$(this).append(new Option(v,v));}
return v;});$('#border_style').val(this.getAttrib(n,'border-style'));$('#border_color').val(this.getAttrib(n,'border-color'));if(!$('#border').is(':checked')){$.each(['border_width','border_style','border_color'],function(i,k){$('#'+k).val(self.settings.defaults[k]).change();});}
$('#align').val(this.getAttrib(n,'align'));$('#classes').val(ed.dom.getAttrib(n,'class'));$('#classlist').val(ed.dom.getAttrib(n,'class'));$('#style').val(ed.dom.getAttrib(n,'style'));$('#id').val(ed.dom.getAttrib(n,'id'));$('#dir').val(ed.dom.getAttrib(n,'dir'));$('#lang').val(ed.dom.getAttrib(n,'lang'));$('#usemap').val(ed.dom.getAttrib(n,'usemap'));$('#insert').button('option','label',ed.getLang('update','Update'));$('#longdesc').val(ed.convertURL(ed.dom.getAttrib(n,'longdesc')));$('#onmouseout').val(src);$.each(['onmouseover','onmouseout'],function(){v=ed.dom.getAttrib(n,this);v=$.trim(v);v=v.replace(/^\s*this.src\s*=\s*\'([^\']+)\';?\s*$/,'$1');v=ed.convertURL(v);$('#'+this).val(v);});br=n.nextSibling;if(br&&br.nodeName=='BR'&&br.style.clear){$('#clear').val(br.style.clear);}
if(popup=WFPopups.getPopup(n)){$('#popup_src').val(popup.src);}}else{this.setDefaults();}
$('#margin_top, #margin_right, #margin_bottom, #margin_left').change(function(){self.setMargins();});$('#margin_check').click(function(){self.setMargins();});$('#align, #clear, #border_width, #border_styles, #border_color').change(function(){self.updateStyles();});$('#border').click(function(){self.setBorder();});WFFileBrowser.init($('#src'),{onFileClick:function(e,file){self.selectFile(file);},onFileInsert:function(e,file){self.selectFile(file);},onBeforeBuildList:function(){self.onBeforeBuildList();},onAfterBuildList:function(){self.onAfterBuildList();},onPaste:function(){self.onAfterBuildList();},onInit:function(){$('#show-details').click(function(e){if(self.mode==='images'){self._createPreviewThumbnails();self._createBrowserSlider();}else{$('#browser-list-resize').hide();}
if(!$('#browser').hasClass('full-width')){$('#browser-list-resize').hide();$('li.file.thumbnail-preview','#item-list').width(50).height(50);}});},onSelectItems:function(items){var $list=$('li.file.selected','#item-list');if($list.length==1){if($('#src').is(':disabled')){self.selectFile($list[0]);}}},onRemoveItems:function(items){var $list=$('li.file.selected','#item-list');if($list.length==1){if($('#src').is(':disabled')){self.selectFile($list[0]);}}},createThumbnail:function(){self._createThumbnail();},editImage:function(){self._editImage();},deleteThumbnail:function(){self._deleteThumbnail();},switchMode:function(){self.switchMode();},selectMultiple:function(){self.selectMultiple();},onUploadOpen:function(){self._getUploadOptions();},onUpload:function(event,data){var s=self.settings.defaults;if($('#upload_resize_state').is(':checked')){var w=$('#upload_resize_width').val(),h=$('#upload_resize_height').val();if(w||h){data.resize={width:parseInt(w),height:parseInt(h),quality:parseInt(s.resize_quality)||100};}}},onUploadFile:function(event,file){},onFileDetails:function(){$('#info-thumbnail').remove();},onListSort:function(){self._createPreviewThumbnails();},onMaximise:function(){self._createPreviewThumbnails();},onUploadComplete:function(){if($.isFunction(WFFileBrowser.addListItem)){var selected=$('#item-list li.file.selected').map(function(){return{name:$(this).attr('title')};});WFFileBrowser.load($.makeArray(selected));}},upload:{required:['multipart','jpgresize','pngresize'],canvasResize:false}});this.setMode();this.setBorder();this.setMargins(true);this.updateStyles();if(!$.support.canvas){$('div.button.image_editor','#browser-buttons').remove();}},setDefaults:function(){return $.Plugin.setDefaults(this.settings.defaults);},refresh:function(){WFFileBrowser.refresh();},insert:function(){var ed=tinyMCEPopup.editor,t=this;AutoValidator.validate(document);if($('#src').val()===''){$.Dialog.alert(tinyMCEPopup.getLang('imgmanager_ext_dlg.no_src','Please enter a url for the image'));return false;}
if($('#alt:enabled').val()===''){$.Dialog.confirm(tinyMCEPopup.getLang('imgmanager_ext_dlg.missing_alt'),function(state){if(state){t.insertAndClose();}},{width:300,height:200});}else{this.insertAndClose();}},insertAndClose:function(){var ed=tinyMCEPopup.editor,self=this,v,args={},el,br='';this.updateStyles();tinyMCEPopup.restoreSelection();if(tinymce.isWebKit)
ed.getWin().focus();if(!ed.settings.inline_styles){args={vspace:$('#margin_top').val()||$('#margin_bottom').val(),hspace:$('#margin_left').val()||$('#margin_right').val(),border:$('#border_width').val(),align:$('#align').val()};var img=$('#sample');var style=ed.dom.parseStyle($(img).attr('style'));tinymce.each(['margin','float','border','vertical-align'],function(s){delete style[s];});$('#style').val(ed.dom.serializeStyle(style));}else{args={vspace:'',hspace:'',border:'',align:''};}
$.each(['src','width','height','alt','title','classes','style','id','dir','lang','usemap','longdesc'],function(i,k){v=$('#'+k+':enabled').val();if(k=='width'||k=='height'){if(self.settings.always_include_dimensions){v=$('#'+k).val();}else{v=$('#'+k+'.edited').val()||'';}}
if(k=='src'&&v){v=$.String.buildURI(v);}
if(k=='classes'){k='class';}
args[k]=v;});args.onmouseover=args.onmouseout='';var files=WFFileBrowser.getSelectedItems();if(!files.length){files.push($('#src').val());}
var popups=[];function _insert(el,args){if(el&&el.nodeName=='IMG'){ed.dom.setAttribs(el,args);if(br&&br.nodeName=='BR'){if($('#clear').is(':disabled')||$('#clear').val()===''){ed.dom.remove(br);}
if(!$('#clear').is(':disabled')&&$('#clear').val()!==''){ed.dom.setStyle(br,'clear',$('#clear').val());}}else{if(!$('#clear').is(':disabled')&&$('#clear').val()!==''){br=ed.dom.create('br');ed.dom.setStyle(br,'clear',$('#clear').val());ed.dom.insertAfter(br,el);}}}else{ed.execCommand('mceInsertContent',false,'<img id="__mce_tmp" src="" />',{skip_undo:1});var el=ed.dom.get('__mce_tmp');if(!$('#clear').is(':disabled')&&$('#clear').val()!==''){br=ed.dom.create('br');ed.dom.setStyle(br,'clear',$('#clear').val());ed.dom.insertAfter(br,el);}
ed.dom.setAttrib(el,'id','');ed.dom.setAttribs(el,args);}
el.removeAttribute('data-popup-src');popups.push({'el':el,'src':args['data-popup-src'],'title':''});}
var complete=false,w=args.width,h=args.height;el=ed.selection.getNode();br=el.nextSibling;$.each(files,function(i,file){if(files.length>1){$.extend(args,{src:$.String.path(WFFileBrowser.getBaseDir(),$(file).attr('id')),alt:$.String.stripExt($(file).attr('title')).replace(/_/g,' ')});var fw=$(file).data('width');var fh=$(file).data('height');if(WFPopups.isEnabled()){args['data-popup-src']=args.src;if($(file).hasClass('thumbnail')){var src=$(file).data('thumbnail-src'),fw=$(file).data('thumbnail-width'),fh=$(file).data('thumbnail-height');if(src){$.extend(args,{src:src});}}}
if(w||h){$.extend(args,$.Plugin.sizeToFit({width:fw,height:fh},{width:w||fw,height:h||fh}));}
_insert(el,args);}else{var over=$('#onmouseover').val(),out=$('#onmouseout').val();if(over&&out){args.onmouseover="this.src='"+ed.convertURL(over)+"';";args.onmouseout="this.src='"+ed.convertURL(out)+"';";}
if(WFPopups.isEnabled()){args['data-popup-src']=$('#popup_src').val();}
_insert(el,args);}
if(i==files.length-1){complete=true;}});var link;$.each(popups,function(i,o){var args={'popup_src':o.src,'title':o.title};if(i){tinymce.each(ed.dom.select('img[data-mce-popup]'),function(n){var link=ed.dom.getParent(n,'a');if(link){o.el=link.nextSibling;}});}
ed.dom.setAttrib(o.el,'data-mce-popup',1);ed.selection.select(o.el);WFPopups.createPopup(o.el,args);});ed.dom.setAttrib(ed.dom.select('img[data-mce-popup]'),'data-mce-popup',null);ed.undoManager.add();if(complete){tinyMCEPopup.close();}},getAttrib:function(e,at){var ed=tinyMCEPopup.editor,v,v2;switch(at){case'width':case'height':return ed.dom.getAttrib(e,at)||ed.dom.getStyle(e,at)||'';break;case'align':if(v=ed.dom.getAttrib(e,'align')){return v;}
if(v=ed.dom.getStyle(e,'float')){return v;}
if(v=ed.dom.getStyle(e,'vertical-align')){return v;}
break;case'margin-top':case'margin-bottom':if(v=ed.dom.getStyle(e,at)){if(/auto|inherit/.test(v)){return v;}
return parseInt(v.replace(/[^-0-9]/g,''));}
if(v=ed.dom.getAttrib(e,'vspace')){return parseInt(v.replace(/[^-0-9]/g,''));}
break;case'margin-left':case'margin-right':if(v=ed.dom.getStyle(e,at)){if(/auto|inherit/.test(v)){return v;}
return parseInt(v.replace(/[^-0-9]/g,''));}
if(v=ed.dom.getAttrib(e,'hspace')){return parseInt(v.replace(/[^-0-9]/g,''));}
break;case'border-width':case'border-style':case'border-color':v='';tinymce.each(['top','right','bottom','left'],function(n){s=at.replace(/-/,'-'+n+'-');sv=ed.dom.getStyle(e,s);if(sv!==''||(sv!=v&&v!=='')){v='';}
if(sv){v=sv;}});if(v!==''){$('#border').prop('checked',true);}
if((at=='border-width'||at=='border-style')&&v===''){v='inherit';}
if(at=='border-color'){v=$.String.toHex(v);}
if(at=='border-width'){if(/[0-9][a-z]/.test(v)){v=parseFloat(v);}}
return v;break;}},setMargins:function(init){var x=0,s=false;var v=$('#margin_top').val();var $elms=$('#margin_right, #margin_bottom, #margin_left');if(init){$elms.each(function(){if($(this).val()===v){x++;}});s=(x==$elms.length);$elms.prop('disabled',s).prev('label').toggleClass('disabled',s);$('#margin_check').prop('checked',s);}else{s=$('#margin_check').is(':checked');$elms.each(function(){if(s){$(this).val(v);}
$(this).prop('disabled',s).prev('label').toggleClass('disabled',s);});$('#margin_top').val(v);this.updateStyles();}},setBorder:function(){var s=$('#border').is(':checked');$('#border~:input, #border~span, #border~label').attr('disabled',!s).toggleClass('disabled',!s);this.updateStyles();},setClasses:function(v){return $.Plugin.setClasses(v);},setDimensions:function(a,b,c){var w=$(a).val();if(w&&$(b).val()){if($(c).is(':checked, .checked')){var tw=$(a).data('tmp'),h=$(b).val();if(tw){var temp=((h/tw)*w).toFixed(0);$(b).val(temp).data('tmp',temp).addClass('edited');}}}
$(a).data('tmp',w).addClass('edited');},setStyles:function(){var self=this,ed=tinyMCEPopup,$img=$('#sample');$img.attr('style',$('#style').val());$.each(['top','right','bottom','left'],function(i,k){var v=ed.dom.getStyle($img.get(0),'margin-'+k);if(v.indexOf('px')!=-1){v=parseInt(v);}
$('#margin_'+k).val(v);});this.setMargins(true);var border=false;$.each(['width','color','style'],function(i,k){var v=ed.dom.getStyle($img.get(0),'border-'+k);if(v==''){$.each(['top','right','bottom','left'],function(i,n){var sv=ed.dom.getStyle($img.get(0),'border-'+n+'-'+k);if(sv!==''||(sv!=v&&v!=='')){v='';}
if(sv){v=sv;}});}
if(v!==''){border=true;}
if(k=='width'){v=/[0-9][a-z]/.test(v)?parseInt(v):v;}
if(k=='color'){v=$.String.toHex(v);}
if(border){$('#border').attr('checked','checked');$('#border_'+k).val(v);$('#border~:input, #border~span, #border~label').attr('disabled',false).toggleClass('disabled',false);if(k=='color'){$('#border_'+k).trigger('pick');}}});$('#align').val($img.css('float')||$img.css('vertical-align')||'');},updateStyles:function(){var ed=tinyMCEPopup,st,v,br,img=$('#sample');$(img).attr('style',$('#style').val());$(img).attr('dir',$('#dir').val());$(img).css('float','');$(img).css('vertical-align','');v=$('#align').val();if(v=='left'||v=='right'){if(ed.editor.settings.inline_styles){$('#clear').attr('disabled',false);}
$(img).css('float',v);}else{$(img).css('vertical-align',v);$('#clear').attr('disabled',true);}
v=$('#clear:enabled').val();if(v){if(!$('#sample-br').get(0)){$(img).after('<br id="sample-br" />');}
$('#sample-br').css('clear',v);}else{$('#sample-br').remove();}
$.each(['width','color','style'],function(i,k){if($('#border').is(':checked')){v=$('#border_'+k).val();}else{v='';}
if(v==='inherit'){v='';}
if(k=='width'&&/[^a-z]/i.test(v)){v+='px';}
$(img).css('border-'+k,v);});$.each(['top','right','bottom','left'],function(i,k){v=$('#margin_'+k).val();$(img).css('margin-'+k,/[^a-z]/i.test(v)?v+'px':v);});var styles=ed.dom.parseStyle($(img).attr('style'));function compressBorder(n){var s=[];$.each(n,function(i,k){k='border-'+k,v=styles[k];if(v=='none'){delete styles[k];return;}
if(v){s.push(styles[k]);delete styles[k];}});if(s.length){styles.border=s.join(' ');}}
compressBorder(['width','style','color','image']);for(k in styles){if(k.indexOf('-moz-')>=0||k.indexOf('-webkit-')>=0){delete styles[k];}}
$('#style').val(ed.dom.serializeStyle(styles,'img'));},_setPopupSrc:function(file){var self=this,ed=tinyMCEPopup.editor;var src=$.String.path(WFFileBrowser.getBaseDir(),$(file).attr('id'));if($(file).hasClass('thumbnail')){$.Dialog.confirm(ed.getLang('imgmanager_ext_dlg.use_thumbnail','Use associated thumbnail for popup link?'),function(state){if(state){var data={src:$(file).data('thumbnail-src'),width:$(file).data('thumbnail-width'),height:$(file).data('thumbnail-height')};$('#popup_src').val(src);$('#src').val(data.src);var name=$.String.stripExt($(file).attr('title'));name=name.replace('_',' ','g');$('#alt').val(name);if(!data.width||!data.height){$('#width').parent().append('<span class="loader"/>');$('<img/>').attr('src',$.URL.toAbsolute(data.src)).load(function(){var w=this.width,h=this.height;$('#width').val(w).data('tmp',w);$('#height').val(h).data('tmp',h);$('#width~span.loader').remove();});}else{$('#width').val(data.width).data('tmp',data.width);$('#height').val(data.height).data('tmp',data.height);}}});}else{$('#popup_src').val(src);}},selectFile:function(file){var self=this,ed=tinyMCEPopup.editor;var selected=WFFileBrowser.getSelectedItems();if(selected.length==1){file=file||selected[0];}
$('#alt, #src, #onmouseover, #onmouseout, #popup_src').removeProp('disabled').removeAttr('aria-disabled');if($('#item-list').data('sortable')){$('#item-list').sortable('destroy');}
$('li.file.selected','#item-list').removeClass('move');var name=$(file).attr('title');var src=$(file).data('url');if(!$('#rollover_tab').is('.ui-tabs-hide')){if($('#onmouseout').val()===''){$('#onmouseout').val(src);}else{$('#onmouseover').val(src);}}else if(!$('#popups_tab').is('.ui-tabs-hide')&&!!WFPopups.isEnabled()){this._setPopupSrc(file);}else{name=$.String.stripExt(name);name=name.replace(/_/g,' ');$('#alt').val(name);$('#onmouseout').val(src);$('#src').val(src);if(!$(file).data('width')||!$(file).data('height')){var img=new Image();img.onload=function(){$.each(['width','height'],function(i,k){$('#'+k).val(img[k]).data('tmp',img[k]);});};img.src=src;}else{$.each(['width','height'],function(i,k){$('#'+k).val($(file).data(k)).data('tmp',$(file).data(k));});}}
$('#sample').attr({'src':$(file).data('preview')}).attr($.Plugin.sizeToFit({width:$(file).data('width'),height:$(file).data('height')},{width:80,height:60}));},_selectMultiple:function(){var selected=WFFileBrowser.getSelectedItems(),popups=!!WFPopups.isEnabled();var file=selected[0];var name=$.String.stripExt($(file).attr('title'));name=name.replace(/_/g,' ');$('#alt').val(name);if(popups&&$(file).hasClass('thumbnail')){$.each(['width','height'],function(i,k){$('#'+k).val($(file).data('thumbnail-'+k)).data('tmp',$(file).data('thumbnail-'+k));});}else{if(!$(file).data('width')||!$(file).data('height')){var img=new Image();img.onload=function(){$.each(['width','height'],function(i,k){$('#'+k).val(img[k]).data('tmp',img[k]);});};img.src=src;}else{$.each(['width','height'],function(i,k){$('#'+k).val($(file).data(k)).data('tmp',$(file).data(k));});}}},selectMultiple:function(){var self=this,defaults=this.settings.defaults;$('#alt, #src, #onmouseover, #onmouseout, #popup_src').prop('disabled',true).attr('aria-disabled',true);var popups=!!WFPopups.isEnabled();this._selectMultiple();$('#popup_src').prop('disabled',popups).attr('aria-disabled',popups).val(function(){return popups?tinyMCEPopup.getLang('imgmanager_ext.select_multiple','Multiple Image Selection'):'';});$('#src').val(tinyMCEPopup.getLang('imgmanager_ext.select_multiple','Multiple Image Selection'));$('#item-list').sortable({items:"li.file.selected",axis:self.mode=='images'?false:'y',placeholder:"ui-state-highlight",start:function(event,ui){$(ui.placeholder).css({width:$(ui.item).width(),height:$(ui.item).height()});if(self.mode=='images'){$(ui.placeholder).addClass('file thumbnail-preview thumbnail-loaded');}
$('li.file','#item-list').not('.selected, .ui-state-highlight').addClass('ui-state-disabled');},stop:function(){$('li','#item-list').removeClass('ui-state-disabled');self._selectMultiple();}}).disableSelection();$('li.file.selected','#item-list').addClass('move');},onBeforeBuildList:function(){if(this.mode==='images'){$('li.file','#item-list').hide();}},onAfterBuildList:function(){if(this.mode==='images'){this.togglePreviewThumbnails();}},_loadPreviewThumbnail:function(item){var self=this,id=$(item).attr('id');var src=$(item).data('preview');if($(item).data('thumbnail')){src=$.String.path($.Plugin.getURI(),$(item).data('thumbnail'));}
var img=new Image();var x=0;$(item).addClass('thumbnail-loading');$(img).load(function(){var v=$('#browser-list-resize').slider('value')*5;var span=$('span.thumbnail',item).get(0);if(!span){span=$('<span/>').addClass('thumbnail').prependTo(item);}
if($.support.backgroundSize){$(span).css('background-image','url("'+img.src+'")');if(img.width>55||img.height>55){$(span).addClass('resize');}}else{if(tinymce.isIE){$(span).css('background-image','none');$(span).get(0).runtimeStyle.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+img.src+"',sizingMethod='scale')";}}
$(item).removeClass('thumbnail-loading').addClass('thumbnail-loaded').css({width:v,height:v});});$(img).bind('error.local',function(){$(item).removeClass('thumbnail-loading').addClass('thumbnail-error');});if(this.settings.canEdit&&this.settings.cache_enable&&!$(item).data('thumbnail')){var args={'action':'thumbnail','img':$(item).attr('id')};var fields=$(':input','form').serializeArray();$.each(fields,function(i,field){args[field.name]=field.value;});src=tinyMCEPopup.getParam('site_url')+'index.php?option=com_jce&view=editor&layout=plugin&plugin=imgmanager_ext&'+$.param(args);$(img).unbind('error.local').bind('error.server',function(){$(this).unbind('error.server').bind('error.local',function(){$(item).removeClass('thumbnail-loading').addClass('thumbnail-error');});src=$(item).data('preview');if($(item).data('thumbnail')){src=$.String.path($.Plugin.getURI(),$(item).data('thumbnail'));}
img.src=src;});}
img.src=src;},_createPreviewThumbnails:function(force){var self=this;var area=$('#browser-list').height()+$('#browser-list').scrollTop();var selector=!force?'.thumbnail-loading, .thumbnail-loaded, .thumbnail-error':'.thumbnail-loading';$('#item-list li.file').not(selector).each(function(){var pos=$(this).position();if(pos.top<area){self._loadPreviewThumbnail(this);}});},togglePreviewThumbnails:function(force){var self=this,$list=$('li.file','#item-list'),s=this.mode==='images';$list.toggleClass('thumbnail-preview',s);$('#browser-list-resize','div.full-width').toggle(s);$('span',$list).not('span.checkbox').attr('aria-hidden',s);$('span.thumbnail',$list).attr('aria-hidden',!s);if(s){$('#item-list').bind('click.item-list-images',function(e){var n=e.target;if($(n).is('li.file, span.thumbnail')){e.stopImmediatePropagation();var file=$(n).is('li.file')?n:$(n).parent('li.file');self.selectFile(file);}});if($('#browser').hasClass('full-width')){self._createBrowserSlider();}
this._createPreviewThumbnails(force);$('#browser-list').bind('scroll.browser-list',function(e){self._createPreviewThumbnails();});if($('#item-list').data('sortable')){$('#item-list').sortable('option','axis',false);}}else{$('#browser-list').unbind('scroll.browser-list');$('#item-list').unbind('click.item-list-images');$('#browser-list-resize').hide();$list.removeAttr('style');if($('#item-list').data('sortable')){$('#item-list').sortable('option','axis','y');}}},_createBrowserSlider:function(){if(!document.getElementById('browser-list-resize')){$('ul.limit-right','#browser-list-limit').before('<div id="browser-list-resize" class="slider"><span class="slider-image-left" /><span class="slider-image-right" /></div>');$('#browser-list-resize').slider({min:11,max:22,slide:function(event,ui){var v=ui.value*5;$('#item-list li.file.thumbnail-preview').css({width:v,height:v});}});}
var v=$('#browser-list-resize').show().slider('value')*5;$('#item-list li.file.thumbnail-preview').width(v).height(v);},setMode:function(){$('#view_mode').toggleClass('images',(this.mode==='images'));},switchMode:function(){this.mode=(this.mode==='images')?'list':'images';$('#view_mode').toggleClass('images',(this.mode==='images'));$.Cookie.set('wf_imgmanager_ext_mode',this.mode);this.togglePreviewThumbnails(true);},_deleteThumbnail:function(){var item=WFFileBrowser.getSelectedItems(0);$.Dialog.confirm(tinyMCEPopup.getLang('imgmanager_ext_dlg.delete_thumbnail','Delete Thumbnail?'),function(state){if(state){var id=$(item).attr('id');WFFileBrowser.status(tinyMCEPopup.getLang('imgmanager_ext_dlg.delete_thumbnail_message','Deleting Thumbnail...'),'load');$.JSON.request('deleteThumbnail',[id],function(o){if(o.error.length){WFFileBrowser.error(o.error);}
WFFileBrowser.load(id);});}});},_createThumbnail:function(){var self=this;var item=WFFileBrowser.getSelectedItems(0);$.Dialog.dialog(tinyMCEPopup.getLang('imgmanager_ext_dlg.create_thumbnail','Create Thumbnail'),'',{text:tinyMCEPopup.getLang('dlg.name','Name'),id:'thumbnail-create-dialog',width:680,height:420,dialogClass:'thumbnail',onOpen:function(){$('#thumbnail-create-dialog').thumbnail({src:$(item).data('preview')+'?'+new Date().getTime(),values:self.settings.defaults,toDataURL:self.settings.image_engine=='canvas'});},buttons:[{text:$.Plugin.translate('save','Save'),click:function(){var data=$('#thumbnail-create-dialog').thumbnail('save');var args={json:[$(item).attr('id')]};$.merge(args.json,[data.width,data.height,data.quality,data.sx,data.sy,data.sw,data.sh]);WFFileBrowser.status(tinyMCEPopup.getLang('imgmanager_ext_dlg.create_thumbnail_message','Creating Thumbnail...'),'load');$.JSON.request('createThumbnail',args,function(o){if(o.error&&o.error.length){WFFileBrowser.error(o.error);}
WFFileBrowser.load($(item).attr('id'));},self);$(this).dialog('close');}}]});},_editImage:function(){var self=this;var item=WFFileBrowser.getSelectedItems(0);var ed=tinyMCEPopup.editor,vp=tinymce.DOM.getViewPort();var iw=parseFloat($(item).data('width')),ih=parseFloat($(item).data('height'));var ww=Math.min(vp.w-40,Math.max(640,Math.min(iw,1024))+345);var wh=Math.min(vp.h-60,Math.max(480,Math.min(ih,768))+60);var src=$(item).attr('id');var win=ed.windowManager.open({url:ed.getParam('site_url')+'index.php?option=com_jce&view=editor&layout=plugin&plugin=imgmanager_ext&dialog=editor',width:ww,height:wh,min_width:ww,min_height:wh,close_previous:false,inline:true},{src:src,width:iw,height:ih,base:WFFileBrowser.getBaseDir(),save:function(item){WFFileBrowser.load({name:item});},scope:this});},_getUploadOptions:function(){var self=this,s=this.settings.defaults;$resize=$('<div class="row" id="upload_resize_options">'+'<input id="upload_resize_state" name="upload_resize_state" type="checkbox" checked="checked" value="1" /><label for="upload_resize" title="'+tinyMCEPopup.getLang('imgmanager_ext_dlg.upload_resize_tip','Resize')+'" class="hastip">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.resize','Resize')+'</label>'+'<label for="upload_resize_width">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.width','Width')+'</label>'+'<input type="text" id="upload_resize_width" name="upload_resize_width" class="width" value="" /> px'+'<label for="upload_resize_height">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.height','Height')+'</label>'+'<input type="text" id="upload_resize_height" name="upload_resize_height" value="" class="height" /> px'+'<div id="upload_resize_constrain" class="constrain"><span class="checkbox checked" aria-checked="true" role="checkbox"></span></div>'+'</div>');$thumbnail=$('<div class="row" id="upload_thumbnail_options">'+'<input id="upload_thumbnail_state" name="upload_thumbnail_state" type="checkbox" checked="checked" value="1" /><label for="upload_thumbnail" title="'+tinyMCEPopup.getLang('imgmanager_ext_dlg.upload_thumbnail_tip','Thumbnail')+'" class="hastip">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.thumbnail','Thumbnail')+'</label>'+'<label for="upload_thumbnail_width">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.width','Width')+'</label>'+'<input type="text" id="upload_thumbnail_width" name="upload_thumbnail_width" class="width" value="" /> px'+'<label for="upload_thumbnail_height">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.height','Height')+'</label>'+'<input type="text" id="upload_thumbnail_height" name="upload_thumbnail_height" value="" class="height" /> px'+'<input type="checkbox" id="upload_thumbnail_crop" name="upload_thumbnail_crop" value="" />'+'<label for="upload_thumbnail_crop" title="'+tinyMCEPopup.getLang('imgmanager_ext_dlg.upload_thumbnail_crop_tip','Crop To Fit')+'" class="hastip">'+tinyMCEPopup.getLang('imgmanager_ext_dlg.upload_thumbnail_crop','Crop To Fit')+'</label>'+'<div id="upload_thumbnail_constrain" class="constrain"><span class="checkbox checked" aria-checked="true" role="checkbox"></span></div>'+'</div>');$('<div id="upload-transform"/>').insertAfter('#upload-queue-block').hide();var rw=s.upload_resize_width;var rh=s.upload_resize_height;var tw=s.thumbnail_width;var th=s.thumbnail_height;if(tw===''&&th===''){tw=120,th=90;}
if(rw===''&&rh===''){rw=640,rh=480;}
if(!!s.upload_resize){$('#upload-transform').append($resize);$('#upload_resize_width').val(rw).data('tmp',rw).change(function(){var w=$(this).val(),$height=$('#upload_resize_height');if(w&&$height.val()){if($('#upload_resize_constrain span.checkbox').is('.checked')){var tw=$(this).data('tmp'),h=$height.val();if(tw){var temp=((h/tw)*w).toFixed(0);$height.val(temp).data('tmp',temp);}}}
$(this).data('tmp',w);});$('#upload_resize_height').val(rh).data('tmp',rh).change(function(){var h=$(this).val(),$width=$('#upload_resize_width');if(h&&$width.val()){if($('#upload_resize_constrain span.checkbox').is('.checked')){var th=$(this).data('tmp'),w=$width.val();if(th){var temp=((w/th)*h).toFixed(0);$width.val(temp).data('tmp',temp);}}}
$(this).data('tmp',h);});$('#upload_resize_state').prop('checked',!!parseInt(s.upload_resize_state)).click(function(){this.value=this.checked?1:0;});}
if(!!s.upload_thumbnail&&this.settings.canEdit){$('#upload-transform').append($thumbnail);$('#upload_thumbnail_width').val(tw).data('tmp',tw).change(function(){var w=$(this).val(),$height=$('#upload_thumbnail_height');if(w&&$height.val()){if($('#upload_thumbnail_constrain span.checkbox').is('.checked')){var tw=$(this).data('tmp'),h=$height.val();if(tw){var temp=((h/tw)*w).toFixed(0);$height.val(temp).data('tmp',temp);}}}
$(this).data('tmp',w);});$('#upload_thumbnail_height').val(th).data('tmp',th).change(function(){var h=$(this).val(),$width=$('#upload_thumbnail_width');if(h&&$width.val()){if($('#upload_thumbnail_constrain span.checkbox').is('.checked')){var th=$(this).data('tmp'),w=$width.val();if(th){var temp=((w/th)*h).toFixed(0);$width.val(temp).data('tmp',temp);}}}
$(this).data('tmp',h);});$('#upload_thumbnail_state').prop('checked',!!parseInt(s.upload_thumbnail_state)).val(parseInt(s.upload_thumbnail_state)).click(function(){this.value=this.checked?1:0;});$('#upload_thumbnail_crop').prop('checked',!!parseInt(s.upload_thumbnail_crop)).val(parseInt(s.upload_thumbnail_crop)).click(function(){this.value=this.checked?1:0;});}
if(s.upload_resize||(s.upload_thumbnail&&this.settings.canEdit)){$('#upload-transform').show();$('label.hastip','#upload-transform').tips();$('span.checkbox','#upload-transform').click(function(){$(this).toggleClass('checked').attr('aria-checked',$(this).is('.checked'));});$('div.constrain','#upload-transform').each(function(){var w=$(this).siblings('input:text').get(1).offsetLeft-$(this).siblings('input:text').get(0).offsetLeft;$(this).css({'width':w,'margin-left':$(this).siblings('input:text:first').width()/2});});}
$('#upload-body').parent().dialog('option','position','center').dialog('option','width',520);}};window.ImageManagerDialog=ImageManagerDialog;tinyMCEPopup.onInit.add(ImageManagerDialog.init,ImageManagerDialog);})();