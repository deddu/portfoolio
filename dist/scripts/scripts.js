(function(){"use strict";angular.module("portfoolioApp",["ui.knob","ngCookies","ngResource","ngSanitize","shopsService","publicationsService","skillsService"]).config(["$routeProvider",function(a){return a.when("/",{templateUrl:"views/landing.html",controller:"MainCtrl"}).when("/portfolio",{templateUrl:"views/main.html",controller:"MainCtrl"}).when("/knowhow",{templateUrl:"views/knowhow.html",controller:"KnowhowCtrl"}).when("/landing",{templateUrl:"views/landing.html",controller:"LandingCtrl"}).when("/publications",{templateUrl:"views/publications.html",controller:"PublicationsCtrl"}).otherwise({redirectTo:"/"})}]).run(["$rootScope",function(a){return a.$on("$viewContentLoaded",function(){return $(document).foundation()})}])}).call(this),function(){"use strict";var a;a=angular.module("portfoolioApp"),a.controller("MainCtrl",["$scope","ShopsService",function(a,b){var c;return a.choose=function(a){return a[Math.floor(Math.random()*a.length)]},a.prev=function(a,b){return a[(a.indexOf(b)-1+a.length)%a.length]},a.next=function(a,b){return a[(a.indexOf(b)+1+a.length)%a.length]},c=!0,b.query(function(b){return a.shops=b,c=!1}),a.link=c?{name:"Chematica",url:"http://www.chematica.net",thumbnail:"../images/chematicanet.png",description:"Northwestern University automation of retrosynthesis"}:a.choose(a.shops),a.gimmeOne=function(){return a.link=a.choose(a.shops)},a.gimmePrev=function(){return a.link=a.prev(a.shops,a.link)},a.gimmeNext=function(){return a.link=a.next(a.shops,a.link)}}])}.call(this),function(){"use strict";angular.module("shopsService",["ngResource"]).factory("ShopsService",["$resource",function(a){return a("./data/shops.json")}]),angular.module("publicationsService",["ngResource"]).factory("PublicationsService",["$resource",function(a){return a("./data/publications.json")}])}.call(this),function(){"use strict";angular.module("skillsService",["ngResource"]).factory("SkillsService",["$resource",function(a){return a("./data/skills.json")}])}.call(this),function(){"use strict";var a=[].indexOf||function(a){for(var b=0,c=this.length;c>b;b++)if(b in this&&this[b]===a)return b;return-1};angular.module("portfoolioApp").controller("KnowhowCtrl",["$scope","SkillsService",function(b,c){var d;return b.range=function(a){return new Array(a)},d=function(a){var b,c,d,e,f,g;for(c={},b=e=0,f=a.length;f>=0?f>e:e>f;b=f>=0?++e:--e)c[a[b]]=a[b];g=[];for(b in c)d=c[b],g.push(d);return g},b.catselected=[],b.typeselected=[],b.fields=[],c.query(function(a){var c;return b.skills=a,b.fields=function(){var b,d,e;for(e=[],b=0,d=a.length;d>b;b++)c=a[b],e.push({category:c.category,type:c.type});return e}(),b.catfields=d(function(){var a,d,e,f;for(e=b.fields,f=[],a=0,d=e.length;d>a;a++)c=e[a],f.push(c.category);return f}()),b.typefields=d(function(){var a,d,e,f;for(e=b.fields,f=[],a=0,d=e.length;d>a;a++)c=e[a],f.push(c.type);return f}()),b.catselected=d(function(){var a,d,e,f;for(e=b.fields,f=[],a=0,d=e.length;d>a;a++)c=e[a],f.push(c.category);return f}()),b.typeselected=d(function(){var a,d,e,f;for(e=b.fields,f=[],a=0,d=e.length;d>a;a++)c=e[a],f.push(c.type);return f}())}),b.is_selected=function(b,c){return a.call(c,b)>=0?"active":""},b.toggle_selected=function(b,c){return a.call(c,b)>=0?c.splice(c.indexOf(b),1):c.push(b)},b.getColor=function(a){var c;return c=Math.floor(255*b.typefields.indexOf(a)/b.typefields.length),"rgba(123,123,"+c+",1)"},b.matchCategory=function(c){var d;return d=c.category,a.call(b.catselected,d)>=0?!0:!1},b.matchType=function(c){var d;return d=c.type,a.call(b.typeselected,d)>=0?!0:!1},b.knobOptions={width:100,height:100,fgColor:"rgb(53,121,164)",displayInput:!0,readOnly:!0}}])}.call(this),function(){"use strict";angular.module("portfoolioApp").controller("LandingCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this),function(){"use strict";angular.module("portfoolioApp").controller("PublicationsCtrl",["$scope","PublicationsService",function(a,b){return a.pubs=[],b.query(function(b){return a.pubs=b})}])}.call(this);