(function(factory){if(typeof define==="function"&&define.amd){define("elgg/touch_punch",['jquery','jquery-ui/widgets/draggable'],factory)}else{factory(jQuery)}}/*!
 * jQuery UI Touch Punch 0.2.3
 *
 * Copyright 2011–2014, Dave Furfero
 * Dual licensed under the MIT or GPL Version 2 licenses.
 *
 * Depends:
 *  jquery.ui.widget.js
 *  jquery.ui.mouse.js
 */
(function($){$.support.touch='ontouchend' in document;if(!$.support.touch){return}
var mouseProto=$.ui.mouse.prototype,_mouseInit=mouseProto._mouseInit,_mouseDestroy=mouseProto._mouseDestroy,touchHandled;function simulateMouseEvent(event,simulatedType){if(event.originalEvent.touches.length>1){return}
event.preventDefault();var touch=event.originalEvent.changedTouches[0],simulatedEvent=document.createEvent('MouseEvents');simulatedEvent.initMouseEvent(simulatedType,!0,!0,window,1,touch.screenX,touch.screenY,touch.clientX,touch.clientY,!1,!1,!1,!1,0,null);event.target.dispatchEvent(simulatedEvent)}
mouseProto._touchStart=function(event){var self=this;if(touchHandled||!self._mouseCapture(event.originalEvent.changedTouches[0])){return}
touchHandled=!0;self._touchMoved=!1;simulateMouseEvent(event,'mouseover');simulateMouseEvent(event,'mousemove');simulateMouseEvent(event,'mousedown')};mouseProto._touchMove=function(event){if(!touchHandled){return}
this._touchMoved=!0;simulateMouseEvent(event,'mousemove')};mouseProto._touchEnd=function(event){if(!touchHandled){return}
simulateMouseEvent(event,'mouseup');simulateMouseEvent(event,'mouseout');if(!this._touchMoved){simulateMouseEvent(event,'click')}
touchHandled=!1};mouseProto._mouseInit=function(){var self=this;self.element.bind({touchstart:$.proxy(self,'_touchStart'),touchmove:$.proxy(self,'_touchMove'),touchend:$.proxy(self,'_touchEnd')});_mouseInit.call(self)};mouseProto._mouseDestroy=function(){var self=this;self.element.unbind({touchstart:$.proxy(self,'_touchStart'),touchmove:$.proxy(self,'_touchMove'),touchend:$.proxy(self,'_touchEnd')});_mouseDestroy.call(self)}}))