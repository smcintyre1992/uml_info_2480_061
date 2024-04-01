<cftry>
    <cfset addEditFunctions = createObject("addedit") />
    <label for="isbn13">ISBN 13: </label>
    <div class="form-floating mb-3">
        <input type="text" id="isbn13" name="isbn13" class="form-
    control" value="" placeholder="Please Enter The ISBN13 of the
    book"/>
</div>
<div class="form-floating mb-3">
    <input type="number" id="weight" name="weight" step=".1" cl
    <label for="weight">Weight: </label>
</div>
    <div class="row">
        
        <div id="main" class="col-9">
          <cfoutput> #mainForm()#</cfoutput>
           
</div>
        <div id=”leftgutter” class="col-lg-3 order-first">
        
           <newLine():"Side Nav";
    
                       <cfoutput> #sideNav()#</cfoutput>
    
        </div>
    </div>
    <cfcatch type="any">
        <cfoutput>
            #cfcatch.Message#
        </cfoutput>
    </cfcatch>
</cftry>

<cffunction name="mainForm">

    <cfoutput>
        <form action="#cgi.script_name#?tool=addedit" method="post">
            <label for="isbn13">ISBN13:</label>
            <input type="text" id="isbn13" name="isbn13" value="" placeholder="ISBN13" /> 
            <label for=”title”>Book Title</label>
            <input type=”text” id=”title” name=”title” placeholder=”Book Title" 
            
            <button type="submit" class="btn btn-primary" style="width: 100%">Add Book</button>

        </form>
    </cfoutput> 
</cffunction>



<cffunction name="sideNav">

    <cfset allbooks = addEditFunctions.sideNavBooks()>
    <div>
       Book List
    </div>
    <cfoutput>
      <ul class="nav flex-column">
            <cfloop query="allbooks">
                <li class=”nav-item”>
                  <a class=”nav-link”>#trim(title)#</a>
                </li>
            </cfloop>
        </ul>
    </cfoutput>
</cffunction>

