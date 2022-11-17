/**
  @file         barchart.sas
  
  @author       Grischa Pfister HMS
  @project      MAC3DE
  @type         SAS Macro
  @macro        %%barchart
  
  @since        0.1
  @version      0.4

  @brief        create a bar chart
  @details      creates a bar chart depending on the parameters given.
  
  @param[in]    table       table to be processed
  @param[in]    var         variable for midpoints
  @param[in]    sumvar      variable for summation
  @param[in]    byvar       by processing (forces sorting)
  @param[in]    patternId   color scheme ID
  
  @return       void        no return value


    # examples for usage
    ## example 1 - all parameters are filled
    @code
      %barchart(table,var,sumvar,byvar,patternId);
    @endcode

    ## example 2 - minimal parameters needed
    @code
      %barchart(table,var);
    @endcode
  
  @mainpage This is the barchart group of macros
  @par target description
    create a group of macros to demonstrate macro programming techniques
    
    techniques shown are:
    + modularization
    + scope of variables 
        + %%Global
        + %%Local
        + call by value
        + call by reference
    + ...
    
    <table>
    <tr>
      <th> version </th>
      <th> changed by </th>
      <th> date </th>
      <th> description</th>
     </tr>
     <tr>
       <td> 0.1 </td>
       <td> Grischa Pfister</td>
       <td> 15.11.2022 </td>
       <td> initial creation</td>
      </tr>
    </table>
*/

/** @cond */

%Macro barchart(table,var,sumvar,byvar,patternId);

  %* GP 15.11.2022
        Recoding der Statemets in die korrekte Syntax fuer GCHART
  *;
  %If ( &sumvar Ne ) %Then %Let sumvar = sumvar = &sumvar;
  %If ( &byVar Ne ) %Then %Let patternId = patternid = By;

  %* GP 15.11.2022
        BarChart zusammensetzen 
  *;
  Proc Gchart data=&table;
    &byvar
    Hbar &var / 
      &sumvar
      &patternId
    ;
    Run;
  Quit;

%Mend;

/** @endcond */

/**
  @file  barchart.sas
  @todo  test different calls with customer
  @todo  check if additional parameters are needed
  
  @bug   color scheme is still hardcoded, parameter missing
  @bug   some other bug is always there
  
  @warning what about HBARs ?
*/