
// TASK 1: Update the agent code based on the instructions of Task 1

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : message(X) <- printMsg(X).
+!start              <- printMsg("Hello World").




// Include additional agent behavior
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
