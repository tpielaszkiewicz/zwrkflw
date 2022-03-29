$.context.status = "";

if ($.usertasks.usertask3.last.decision == "decision_reject") {
    $.context.status = "REJECTED IN STEP 1";
} else {
    $.context.status = "APPROVED IN STEP 1";
}
