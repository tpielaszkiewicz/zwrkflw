// read from existing workflow context 
var salary = $.context.salary; 
var employeeId = $.context.employeeId; 
var equipmentType = $.context.equipmentType;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks; // usertask1.last;
// var userTaskSubject = lastUserTask1.subject;
// var userTaskProcessor = lastUserTask1.processor;
// var userTaskCompletedAt = lastUserTask1.completedAt;

// var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var newNodeDetails = {
		productDetails: employeeId + " / " + equipmentType  + " / " + salary,
		workflowStep: taskDefinitionId //,
        // lastUserTask: lastUserTask1
};

// write 'product' node to workflow context
$.context.newNode = newNodeDetails;
// $.context.userMessage = userTaskStatusMessage;
