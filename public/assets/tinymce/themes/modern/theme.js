tinymce.ThemeManager.add("modern",function(e){function t(){function t(t){var i,r=[];if(t)return m(t.split(/[ ,]/),function(t){function n(){var n=e.selection;"bullist"==a&&n.selectorChanged("ul > li",function(e,n){for(var i,r=n.parents.length;r--&&(i=n.parents[r].nodeName,"OL"!=i&&"UL"!=i););t.active("UL"==i)}),"numlist"==a&&n.selectorChanged("ol > li",function(e,n){for(var i,r=n.parents.length;r--&&(i=n.parents[r].nodeName,"OL"!=i&&"UL"!=i););t.active("OL"==i)}),t.settings.stateSelector&&n.selectorChanged(t.settings.stateSelector,function(e){t.active(e)},!0),t.settings.disabledStateSelector&&n.selectorChanged(t.settings.disabledStateSelector,function(e){t.disabled(e)})}var a;"|"==t?i=null:u.has(t)?(t={type:t},c.toolbar_items_size&&(t.size=c.toolbar_items_size),r.push(t),i=null):(i||(i={type:"buttongroup",items:[]},r.push(i)),e.buttons[t]&&(a=t,t=e.buttons[a],t.type=t.type||"button",c.toolbar_items_size&&(t.size=c.toolbar_items_size),t=u.create(t),i.items.push(t),e.initialized?n():e.on("init",n)))}),n.push({type:"toolbar",layout:"flow",items:r}),!0}for(var n=[],i=1;10>i&&t(c["toolbar"+i]);i++);return n.length||t(c.toolbar||h),n}function n(){function t(t){var n;return"|"==t?{text:"|"}:n=e.menuItems[t]}function n(n){var i,r,a,o,s;if(s=tinymce.makeMap((c.removed_menuitems||"").split(/[ ,]/)),c.menu?(r=c.menu[n],o=!0):r=f[n],r){i={text:r.title},a=[],m((r.items||"").split(/[ ,]/),function(e){var n=t(e);n&&!s[e]&&a.push(t(e))}),o||m(e.menuItems,function(e){e.context==n&&("before"==e.separator&&a.push({text:"|"}),e.prependToContext?a.unshift(e):a.push(e),"after"==e.separator&&a.push({text:"|"}))});for(var l=0;l<a.length;l++)"|"==a[l].text&&(0===l||l==a.length-1)&&a.splice(l,1);if(i.menu=a,!i.menu.length)return null}return i}var i,r=[],a=[];if(c.menu)for(i in c.menu)a.push(i);else for(i in f)a.push(i);for(var o=c.menubar?c.menubar.split(/[ ,]/):a,s=0;s<o.length;s++){var l=o[s];l=n(l),l&&r.push(l)}return r}function i(t){function n(e){var n=t.find(e)[0];n&&n.focus()}e.shortcuts.add("Alt+F9","",function(){n("menubar")}),e.shortcuts.add("Alt+F10","",function(){n("toolbar")}),e.shortcuts.add("Alt+F11","",function(){n("elementpath")}),t.on("cancel",function(){e.focus()})}function r(t,n){function i(e){return{width:e.clientWidth,height:e.clientHeight}}var r,a,o,s;r=e.getContainer(),a=e.getContentAreaContainer().firstChild,o=i(r),s=i(a),t=Math.max(c.min_width||100,t),n=Math.max(c.min_height||100,n),t=Math.min(c.max_width||65535,t),n=Math.min(c.max_height||65535,n),d.css(r,"width",t+(o.width-s.width)),d.css(a,"width",t),d.css(a,"height",n),e.fire("ResizeEditor")}function a(t,n){var i=e.getContentAreaContainer();l.resizeTo(i.clientWidth+t,i.clientHeight+n)}function o(){function r(){m&&m.moveRel&&m.visible()&&!m._fixed&&m.moveRel(e.getBody(),["tl-bl","bl-tl"])}function a(){m&&(m.show(),r(),d.addClass(e.getBody(),"mce-edit-focus"))}function o(){m&&(m.hide(),d.removeClass(e.getBody(),"mce-edit-focus"),document.activeElement&&-1==document.activeElement.className.indexOf("mce-content-body")&&d.setStyle(document.body,"padding-top",0))}function s(){return m?(m.visible()||a(),void 0):(m=l.panel=u.create({type:f?"panel":"floatpanel",classes:"tinymce tinymce-inline",layout:"flex",direction:"column",autohide:!1,autofix:!0,fixed:!!f,border:1,items:[c.menubar===!1?null:{type:"menubar",border:"0 0 1 0",items:n()},c.toolbar===!1?null:{type:"panel",name:"toolbar",layout:"stack",items:t()}]}),m.renderTo(f||document.body).reflow(),i(m),a(),e.on("nodeChange",r),e.on("activate",a),e.on("deactivate",o),void 0)}var m,f;return c.fixed_toolbar_container&&(f=d.select(c.fixed_toolbar_container)[0]),c.content_editable=!0,e.on("focus",s),e.on("blur",o),e.on("remove",function(){m&&(m.remove(),m=null)}),{}}function s(a){var o,s,m;return o=l.panel=u.create({type:"panel",classes:"tinymce",style:"visibility: hidden",layout:"stack",border:1,items:[c.menubar===!1?null:{type:"menubar",border:"0 0 1 0",items:n()},c.toolbar===!1?null:{type:"panel",layout:"stack",items:t()},{type:"panel",name:"iframe",layout:"stack",classes:"edit-area",html:"",border:"1 0 0 0"}]}),c.resize!==!1&&(s={type:"resizehandle",direction:c.resize,onResizeStart:function(){var t=e.getContentAreaContainer().firstChild;m={width:t.clientWidth,height:t.clientHeight}},onResize:function(e){r(m.width+e.deltaX,m.height+e.deltaY)}}),c.statusbar!==!1&&o.add({type:"panel",name:"statusbar",classes:"statusbar",layout:"flow",border:"1 0 0 0",items:[{type:"elementpath"},s]}),o.renderBefore(a.targetNode).reflow(),c.width&&tinymce.DOM.setStyle(o.getEl(),"width",c.width),e.on("remove",function(){o.remove(),o=null}),i(o),{iframeContainer:o.find("#iframe")[0].getEl(),editorContainer:o.getEl()}}var l=this,c=e.settings,u=tinymce.ui.Factory,m=tinymce.each,d=tinymce.DOM,f={file:{title:"File",items:"newdocument"},edit:{title:"Edit",items:"undo redo | cut copy paste | selectall"},insert:{title:"Insert",items:"|"},view:{title:"View",items:"visualaid |"},format:{title:"Format",items:"bold italic underline strikethrough superscript subscript | formats | removeformat"},table:{title:"Table"},tools:{title:"Tools"}},h="undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image";l.renderUI=function(t){var n=c.skin!==!1?c.skin||"lightgray":!1;return n&&(tinymce.Env.documentMode<=7?tinymce.DOM.loadCSS(tinymce.baseURL+"/skins/"+n+"/skin.ie7.min.css"):tinymce.DOM.loadCSS(tinymce.baseURL+"/skins/"+n+"/skin.min.css"),e.contentCSS.push(tinymce.baseURL+"/skins/"+n+"/content"+(e.inline?".inline":"")+".min.css")),e.on("ProgressState",function(e){l.throbber=l.throbber||new tinymce.ui.Throbber(l.panel.getEl("body")),e.state?l.throbber.show(e.time):l.throbber.hide()}),c.inline?o(t):s(t)},l.resizeTo=r,l.resizeBy=a});