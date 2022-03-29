$.context.status = "";

if ($.usertasks.usertask4.last.decision == "decision_reject_2") {
    $.context.status = "REJECTED IN STEP 2";
} else {
    $.context.status = "APPROVED IN STEP 2";
}
