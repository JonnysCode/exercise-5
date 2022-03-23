
// TASK 1: Update the agent code based on the instructions of Task 1

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

/*      france is the focused terminal output
+!start : message(X)
   <- ?focused(france, gui, ArtId);
      printMsg(X)[artifact_id(ArtId)].
*/

// print in all focused terminals 
+!start : message(X)
   <- for ( numMsg(_)[artifact_name(Name)] &
            focused(_,Name[artifact_type("display.GUIConsole")],ArtId) ) {
          printMsg(X)[artifact_id(ArtId)]
      }.
      
+!start : true       <- .print("hello world!").




// Include additional agent behavior
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
