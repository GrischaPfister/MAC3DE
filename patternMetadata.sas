/**
  @file         patternMetadata.sas
  
  @author       Grischa Pfister HMS
  @project      MAC3DE
  @type         SAS/Base program

  @since        0.1
  @version      0.4

  @brief        create metadata for pattern groups
  
  @outputTables
  @outputTable Work.Colors

  ## data model
  variable | type | description
  :--------|:----:|:-----------
  id       | N    | id for @b pattern group
  order    | N    | sort order for pattern statements
  color    | $    | color name (usually RGB)
    
*/

/** @cond */

Data Work.Colors;
  Length id 8 order 8 color $8;
  Input id order color;
  Cards;
1 1 red
1 2 blue
2 1 cx336699
3 1 cx336699
3 2 cx996633
;
Run;

/** @endcond */

/**
  @file  patternMetadata.sas
  
  @todo  more or different cholor schemes needed?
  @bug   only $8 color names allowed
  
  @warning  change of color schemes expected
*/