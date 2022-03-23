
// TASK 1: Update the agent code based on the instructions of Task 1

/* Initial beliefs and rules */

/* Initial goals */

msg(fr,"Bonjour").
msg(br,"Bom dia").
msg(it,"Buon giorno").
msg(us,"Good morning").

!start.

/*
+!start : country(X)  & msg(X, Y) <- .print(Y).
*/

+!start : country(X)  & msg(X, M)
   <- for ( focused(_, gui, ArtId) ) {
          printMsg(M)[artifact_id(ArtId)]
      }.

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }
