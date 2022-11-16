/**
  @file         wrapper.sas
  
  @author       Grischa Pfister HMS
  @project      MAC3DE
  @type         SAS/Base program

  @since        0.1
  @version      0.4

  @brief        create metadata for pattern groups
  
  @uses  createBarChart.sas
  
  @change 15.11.2022 GP 
    header added to file
  @change 15.11.2022 GP
    important change to code - all deleted
  @change 16.11.2022 gp
    GIT repository created and program added
  
*/
/** @cond */
  Options 
  mcompilenote=all
  sasautos=(sasautos "S:\workshop\MAC3DE")
;

%Global path;
%Let path = 
%Include "s:\workshop\mac3de\patternsMetadata.sas";

%createBarChart(sashelp.class, name, age, sex,1);


/** @endcond */