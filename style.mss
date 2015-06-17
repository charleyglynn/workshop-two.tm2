// Fonts //
@font1: 'Biro Script reduced Regular';
@font2: 'DoodlePenLimited Regular';

// Colours //

@water: rgb(237, 245, 246);
@foreshore: #f6f3c9;
@woodland: rgb(238, 246, 237);
@building: rgb(248, 238, 226);
@black-biro: #0d0d0e;
@blue-biro: #02125d;
@red-biro: #6f0707;
@green-biro: #073911;

// Style //

Map {
  background-image: url("img/linedpaper.png");
  font-directory: url("fonts/");
}

#tidalwater {
  polygon-fill: @water;
  comp-op: multiply;
}

#foreshore {
  polygon-fill: @foreshore;
  polygon-opacity: 0.4;
  comp-op: multiply;
}

#functionalsite {
  polygon-opacity: 0.2;
  [FEATCODE=15809]{polygon-fill: #d7d7c6;}
  [FEATCODE=15810]{polygon-fill: #f2d3ae;}
  [FEATCODE=15811]{polygon-fill: #f2aeae;}
  [FEATCODE=15812]{polygon-fill: #aef2e6;}
}

#woodland {
  polygon-fill: @woodland;
  comp-op: multiply;
  [zoom>15]{line-width: 1;
  line-color: @green-biro;
  line-opacity: 0.2;
  line-geometry-transform:skewX(1);
  line-geometry-transform:skewY(1.2);
  line-smooth: 1;}
}

#surfacewaterarea {
  polygon-fill: @water;
  comp-op: multiply;
  line-width: 1.2;
  line-color: @blue-biro;
  line-opacity: 0.4;
  line-smooth: 1.5;
}

#tidalboundary {
  line-width: 1;
  line-color: @blue-biro;
  line-opacity: 0.3;
  line-smooth: 3;
}

#surfacewaterline {
  line-width: 1.5;
  line-color: @blue-biro;
  line-opacity: 0.4;
  line-smooth: 2;
}

#building {
  polygon-fill: @building;
  comp-op: multiply;
  polygon-smooth: 0.3;
}

#importantbuilding {
  polygon-fill: @building;
  comp-op: multiply;
  polygon-smooth: 0.3;
  [zoom>14]{line-color: @black-biro;
  line-width: 1.3;
  line-opacity: 0.3;
  line-smooth:0.5;
  line-color: @black-biro;}
}

#road {
  a/line-color: @black-biro;
  a/line-opacity: 0.3;
  b/line-color: @black-biro;
  b/line-opacity: 0.4;
  b/line-smooth:0.5;
  [zoom>14]{
  c/line-color: @black-biro;
  c/line-opacity: 0.4;
  c/line-smooth:1.5;
  c/line-offset: -1;}
  [zoom>15]{
  c/line-color: @black-biro;
  d/line-opacity: 0.3;
  d/line-smooth:2.5;
  d/line-offset: 2;}
}

#railwaytrack {
  e/line-width: 2;
  e/line-color: @red-biro;
  e/line-opacity: 0.6;
  e/line-smooth:1;
  f/line-width: 2;
  f/line-color: @red-biro;
  f/line-opacity: 0.4;
  f/line-smooth:2;
}

#railwaytunnel {
  line-width: 2;
  line-dasharray: 8,4;
  line-color: @red-biro;
  line-opacity: 0.4;
}

#railwaystation [zoom>=15]{
  marker-file: url("img/station.svg");
  marker-opacity: 0.9;
  [zoom>16]{text-name: [DISTNAME];
  text-face-name: @font1;
  text-fill: @black-biro;  
  text-size: 25;
  text-dx: 17;
  text-dy: -10;
  text-halo-fill: white;
  text-halo-radius: 2;
  text-orientation: 15;
  }
}

#namedplace [HTMLNAME='Salisbury Crags'],
  [HTMLNAME='Corstorphine Hill'],
  [HTMLNAME='Broomhills Cottages']{
  point-file: url("img/coffee-stain.png");
  point-ignore-placement: true; 
  point-opacity: 0.6;
  point-comp-op: multiply;
}

#namedplace {
  text-name: [HTMLNAME];
  text-face-name: @font2;
  [FEATCODE=15801]{text-fill: @blue-biro;
  text-orientation: 4;}
  [FEATCODE=15802]{text-fill: @black-biro;}
  [FEATCODE=15803]{text-fill: @green-biro;
  text-orientation: 7;}
  [FEATCODE=15804]{text-fill: lighten(@blue-biro,20);}
  [FEATCODE=15805]{text-fill: lighten(@black-biro,30);}
  [FONTHEIGHT='Small']{text-size: 12;}
  [FONTHEIGHT='Medium']{text-size: 16;}
  [FONTHEIGHT='Large']{text-size: 30;}
  text-halo-fill: white;
  text-halo-radius: 2;
  text-halo-opacity: 0.8;
  text-orientation: [ORIENTATIO];
}

#functionalsite-labels [zoom>=16]{
  text-name: [DISTNAME];
  text-face-name: @font1;
  text-fill: @red-biro;  
  text-size: 18;
  text-orientation: 7;
  text-wrap-width: 100;
  text-line-spacing: -15;
  text-halo-fill: white;
  text-halo-radius: 2;
  text-halo-opacity: 0.4;
}

/*#roadlabels [zoom>=15]{
  text-name: [DISTNAME];
  text-face-name: @font1;;
  text-fill: @black-biro;  
  text-size: 16;
  [zoom>=18]{text-size: 18;}
  text-placement: line;
  text-halo-fill: white;
  text-halo-radius: 2;
  text-halo-opacity: 0.6;
  text-avoid-edges: true;
  text-min-padding: 20;
}*/