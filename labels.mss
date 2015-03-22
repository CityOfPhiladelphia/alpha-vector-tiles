// Alpha pattern colors // 

@ben-franklin-blue: #027ea4;
@bell-yellow: #f2ba13;
@white: #fff;
@ghost-gray: #f1f3f1;
@whitesmoke: #edf4f7;
@geyser: #dbe1e3;
@manatee: #9299A5;
@mine-shaft: #353535;
@black: #000000;

// Roads //

#road_label[zoom>=16] {
  text-name: @name;
  text-face-name: @sans;
  text-fill: @mine-shaft;
  text-halo-fill: #FFF;
  text-halo-radius: 2;
  text-placement: line;
  text-avoid-edges: true;
}

#poi_label [zoom>=18]{
  text-name: @name;
  text-face-name: @sans_italic;
  text-size: 9;
  text-wrap-width: 10;
  text-line-spacing: -2;
  text-fill: @mine-shaft;
  text-halo-fill: #FFF;
  text-halo-radius: 0.5; 
}

// Water //

#waterway_label {
  }

#water_label,#waterway_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @sans_italic;
    text-fill: lighten(@water, 80%);
    text-halo-fill: @manatee;
    text-halo-radius: 1;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
  [class='river'] {
  text-name: @name;
  text-fill: lighten(@water, 80%);
  text-size: 10;
  text-placement: line;
  text-face-name: @sans_italic;
  }
}

// Exceptions //

#place_label [type='city'][osm_id=1000000158518631] {
  text-name: @name;
  text-face-name: @sans;
  text-opacity: 0;
}

 #housenum_label[zoom>=18]{
  text-name: @house_num;
  text-face-name: @sans;
  text-size: 7;
  text-fill: @mine-shaft;
  text-halo-fill: #FFF;
  text-halo-radius: 0.5; 
}

// Places //

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @mine-shaft;
  text-size: 12;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 14;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 16;
  }
}

#country_label_line { line-color: fadeout(#66a,75%); }

#place_label[localrank<=2] {
  [type='city'][zoom<=15][osm_id=1000000158326597] {
    text-name: @name;
    text-face-name: 'Montserrat Bold';
    text-transform: uppercase;
    text-character-spacing: 3;
    text-fill: @mine-shaft;
    text-halo-fill: #FFF;
    text-halo-radius: 2;
    text-size: 16;
    text-opacity: 1;
    [zoom>=10] { text-size: 18; }
    [zoom>=12] { text-size: 20; }
    [zoom>=14] { text-dy: -35 }
  }
  [type='town'][zoom<=17] {
    text-name: @name;
    text-face-name: 'Montserrat Regular';
    text-fill: @mine-shaft;
    text-transform: uppercase;
    text-halo-fill: #FFF;
    text-halo-radius: 2;
    text-size: 14;
    [zoom>=10] { text-size: 14; }
    [zoom>=12] { text-size: 16; }
  }
  [type='village'] {
    text-name: @name;
    text-face-name: 'Montserrat Regular';
    text-fill: @mine-shaft;
    text-transform: uppercase;
    text-halo-fill: #FFF;
    text-halo-radius: 1;
    text-size: 12;
    [zoom>=12] { text-size: 14; }
    [zoom>=14] { text-size: 18; }
  }
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-name: @name;
    text-face-name: 'Montserrat Regular';
    text-fill: @mine-shaft;
    text-transform: uppercase;
    text-halo-fill: #FFF;
    text-halo-radius: 1;
    text-size: 10;
    [zoom>=14] { text-size: 12; }
    [zoom>=16] { text-size: 13; }
  }
}

 #philadelphiacurbedges201201 {
  text-name: ['OBJECTID'];
  text-face-name: @sans_italic;
  text-size: 8;
  text-fill: @ghost-gray;
}