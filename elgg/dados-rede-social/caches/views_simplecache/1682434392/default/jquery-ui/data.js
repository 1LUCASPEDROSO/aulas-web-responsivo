/*!
 * jQuery UI :data 1.13.2
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 */
(function(factory){"use strict";if(typeof define==="function"&&define.amd){define("jquery-ui/data",["jquery","./version"],factory)}else{factory(jQuery)}})(function($){"use strict";return $.extend($.expr.pseudos,{data:$.expr.createPseudo?$.expr.createPseudo(function(dataName){return function(elem){return!!$.data(elem,dataName)}}):function(elem,i,match){return!!$.data(elem,match[3])}})})