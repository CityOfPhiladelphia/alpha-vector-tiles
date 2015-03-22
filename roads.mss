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

// Roads & Railways //

#tunnel { opacity: 0.4;
    line-dasharray: 4,2;  
    [type='subway'] { [zoom>=18] {
      line-width: 7;
      line-color: @manatee;
      line-dasharray: 2,2; }
    }
  }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    line-color: @manatee;
    line-width: 0.5;
    [class='motorway'],
    [class='main'] {
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
      [zoom>=18] { line-width: 7; }
      [zoom>=20] { line-width: 9; }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=14] { line-width: 1; }
      [zoom>=16] { line-width: 2; }
    }
    [class='street_limited'] { line-dasharray: 4,1; }
    [class='path'] { [zoom>=18] {
      line-width: 7;
      line-color: @whitesmoke;
      line-dasharray: 2,2; }
    }
  }
}

 #road { [class='major_rail'], [class='minor_rail'] {
  ::line, ::hatch { line-color: @manatee; 
    line-opacity: 0.5; }
  ::line { line-width: 0.8; }
  ::hatch {
    line-width: 4;
    line-dasharray: 1, 24; 
    line-width: 1;
    } 
  }
}