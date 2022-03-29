{
	"contents": {
		"c1dc090d-0032-4dbb-b003-4abd36c0a48c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.pg.myworkflow",
			"subject": "My Workflow for (${context.requestId})",
			"businessKey": "${context.requestId}",
			"name": "MyWorkflow",
			"documentation": "My Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"58745846-7e7a-47d5-94d1-28d3d719fcbf": {
					"name": "ScriptTask1"
				},
				"a36c08f3-7255-4407-b9e8-f1c24f81fe57": {
					"name": "Assign and Approve Equipment"
				},
				"16491adf-f7b1-4f79-b6ae-e945e3601ce2": {
					"name": "Additional approval"
				},
				"f1cc4617-8719-4695-8377-e7b0a7493f71": {
					"name": "ExclusiveGateway3"
				},
				"152480ca-04f5-4741-b3d0-292ef8f750e6": {
					"name": "ExclusiveGateway4"
				},
				"e5e732df-56d3-48b9-8697-9e2e6f895c10": {
					"name": "Set status"
				},
				"32f7c424-1927-4081-9eca-6fe5a8e7ce31": {
					"name": "Set status"
				},
				"e6b8460e-1d11-40c1-9c3e-4628a0de4b83": {
					"name": "Set status"
				},
				"3a991fe9-5a3f-469e-9479-11b79e1b6a9e": {
					"name": "Set status"
				},
				"5fbddf25-66a3-4ea5-a209-89a5bc3167e7": {
					"name": "ParallelGateway5"
				},
				"b1112b91-b9f4-4e2a-89cf-4f8e88f595ca": {
					"name": "Mail - rejected"
				},
				"3ea42cd8-fc50-4525-be52-2715771d6aaa": {
					"name": "Additional approval"
				},
				"981ecbfb-e536-425c-ba41-1a818e18bbd5": {
					"name": "Approval"
				},
				"abfad32c-6d1e-4897-ab00-9e862c9b1363": {
					"name": "Approved mail "
				},
				"e4062985-933c-43f1-9343-271da49098ab": {
					"name": "ParallelGateway6"
				},
				"9f74e42a-78f8-44ee-a6ae-c15b412afbdf": {
					"name": "ParallelGateway7"
				},
				"114b2fb9-b01b-42ba-9535-bcb1de18020f": {
					"name": "ParallelGateway8"
				},
				"2595a3b6-a7b1-4399-b998-c9658b54fe5f": {
					"name": "ServiceTask3"
				},
				"8dbe03d5-0467-4280-95c4-620544350c56": {
					"name": "ExclusiveGateway5"
				}
			},
			"sequenceFlows": {
				"63dc1e09-86f4-4ed9-9dda-65eeba768ae1": {
					"name": "SequenceFlow12"
				},
				"c1c76ce6-9e3d-438d-a298-51b2652f862e": {
					"name": "SequenceFlow13"
				},
				"61361c2a-09e0-487c-a99c-f3e58793881d": {
					"name": "SequenceFlow17"
				},
				"88516f60-84cf-4aa8-bf8e-f081008c7f3b": {
					"name": "SequenceFlow18"
				},
				"a36be327-1318-42bd-b40a-b47c7e29af4d": {
					"name": "SequenceFlow24"
				},
				"a8538924-9283-432a-80ad-2643227cdd1c": {
					"name": "SequenceFlow32"
				},
				"5240ceeb-c5d7-451b-9a6f-bf15dc5dde40": {
					"name": "SequenceFlow41"
				},
				"0aa8eeee-75e8-4cd8-9e8f-b81d37e9f156": {
					"name": "SequenceFlow42"
				},
				"c0c3e0ec-582e-4300-b6cf-a8f685a318c6": {
					"name": "SequenceFlow48"
				},
				"6b14f4c7-3e2e-4e8d-ad3b-4d4f8d2b3864": {
					"name": "SequenceFlow49"
				},
				"2e9a40f5-f034-4243-a32a-e1a8a8f91327": {
					"name": "SequenceFlow59"
				},
				"d64d2d25-79de-43e5-811f-06f144e08198": {
					"name": "SequenceFlow60"
				},
				"7ce43ae4-3e40-4e2c-9a90-f2380178e9de": {
					"name": "SequenceFlow61"
				},
				"a7b5f436-112d-44da-b8ed-df2c140c6774": {
					"name": "SequenceFlow62"
				},
				"7b13ffee-d782-4d40-977f-93d19f0d125d": {
					"name": "SequenceFlow63"
				},
				"d3811f58-1319-4c1a-ab2b-f4be11cd45ae": {
					"name": "SequenceFlow64"
				},
				"c6249cef-8dec-45fc-ba3a-45a87cf2e5a9": {
					"name": "SequenceFlow65"
				},
				"7209927a-29a5-41ad-96d5-e50aa4e0527b": {
					"name": "SequenceFlow66"
				},
				"efd26dab-d251-4337-8e5b-39bc771a1f78": {
					"name": "SequenceFlow67"
				},
				"6ff9112d-36b0-40ec-9286-6d602c0cc401": {
					"name": "SequenceFlow68"
				},
				"df04e562-79b7-4ae6-ba7d-5779c4f31d84": {
					"name": "SequenceFlow75"
				},
				"b44c166a-ffeb-4fe9-a6a0-d5a6c09f1c89": {
					"name": "SequenceFlow76"
				},
				"89a9f50a-3a91-4204-979d-630ca99a1ac1": {
					"name": "SequenceFlow77"
				},
				"53b45e59-e9ff-44d7-8bc0-b80a692a9cb2": {
					"name": "SequenceFlow78"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"8a9210d0-7a2f-4044-b164-3ec7a03cb4ed": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"58745846-7e7a-47d5-94d1-28d3d719fcbf": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/scriptStepImplementation.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"a36c08f3-7255-4407-b9e8-f1c24f81fe57": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Assign and Approve Contract for ${context.name} ${context.surname} (${context.employeeId}))",
			"description": "The manager assigns and approves contract and relocation of the newly onboarded employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/MyWorkflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Assign and Approve Equipment",
			"dueDateRef": "02b295ad-ebd3-4373-8cb4-c0e1e9509bb2"
		},
		"16491adf-f7b1-4f79-b6ae-e945e3601ce2": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Additional approval",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/MyWorkflow/SecondApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "secondapprovalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "Additional approval"
		},
		"f1cc4617-8719-4695-8377-e7b0a7493f71": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "ExclusiveGateway3",
			"documentation": "Doc",
			"default": "63dc1e09-86f4-4ed9-9dda-65eeba768ae1"
		},
		"152480ca-04f5-4741-b3d0-292ef8f750e6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "ExclusiveGateway4",
			"default": "61361c2a-09e0-487c-a99c-f3e58793881d"
		},
		"e5e732df-56d3-48b9-8697-9e2e6f895c10": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/setStatusStep1.js",
			"id": "scripttask2",
			"name": "Set status"
		},
		"32f7c424-1927-4081-9eca-6fe5a8e7ce31": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/setStatusStep2.js",
			"id": "scripttask3",
			"name": "Set status"
		},
		"e6b8460e-1d11-40c1-9c3e-4628a0de4b83": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/setStatusStep1.js",
			"id": "scripttask4",
			"name": "Set status"
		},
		"3a991fe9-5a3f-469e-9479-11b79e1b6a9e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/setStatusStep2.js",
			"id": "scripttask5",
			"name": "Set status"
		},
		"5fbddf25-66a3-4ea5-a209-89a5bc3167e7": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway5",
			"name": "ParallelGateway5"
		},
		"b1112b91-b9f4-4e2a-89cf-4f8e88f595ca": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask3",
			"name": "Mail - rejected",
			"mailDefinitionRef": "b40f8d12-1e61-4e54-a29e-5c137f721628"
		},
		"3ea42cd8-fc50-4525-be52-2715771d6aaa": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask4",
			"name": "Additional approval",
			"mailDefinitionRef": "c6c7f7bb-9331-400a-b1f2-97e726b540e7"
		},
		"981ecbfb-e536-425c-ba41-1a818e18bbd5": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask5",
			"name": "Approval",
			"mailDefinitionRef": "2c4f9c6a-6025-4754-aaf0-93a0e439d15d"
		},
		"abfad32c-6d1e-4897-ab00-9e862c9b1363": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask6",
			"name": "Approved mail ",
			"mailDefinitionRef": "41c3b50c-ef42-4a05-a9d1-10b141c0425c"
		},
		"e4062985-933c-43f1-9343-271da49098ab": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway6",
			"name": "ParallelGateway6"
		},
		"9f74e42a-78f8-44ee-a6ae-c15b412afbdf": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway7",
			"name": "ParallelGateway7"
		},
		"114b2fb9-b01b-42ba-9535-bcb1de18020f": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway8",
			"name": "ParallelGateway8"
		},
		"2595a3b6-a7b1-4399-b998-c9658b54fe5f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "zmywrkflw-app-srv",
			"path": "/requestor/Requests(ID=${info.businessKey},IsActiveEntity=true)/RequestorService.actionApprove",
			"httpMethod": "POST",
			"responseVariable": "${context.response}",
			"headers": [{
				"name": "content-type",
				"value": "application/json"
			}],
			"id": "servicetask3",
			"name": "ServiceTask3",
			"principalPropagationRef": "a36c08f3-7255-4407-b9e8-f1c24f81fe57"
		},
		"63dc1e09-86f4-4ed9-9dda-65eeba768ae1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "f1cc4617-8719-4695-8377-e7b0a7493f71",
			"targetRef": "2595a3b6-a7b1-4399-b998-c9658b54fe5f"
		},
		"c1c76ce6-9e3d-438d-a298-51b2652f862e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision == \"decision_reject\"}",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "f1cc4617-8719-4695-8377-e7b0a7493f71",
			"targetRef": "e5e732df-56d3-48b9-8697-9e2e6f895c10"
		},
		"61361c2a-09e0-487c-a99c-f3e58793881d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "152480ca-04f5-4741-b3d0-292ef8f750e6",
			"targetRef": "3a991fe9-5a3f-469e-9479-11b79e1b6a9e"
		},
		"88516f60-84cf-4aa8-bf8e-f081008c7f3b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask4.last.decision == \"decision_reject_2\"}",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "152480ca-04f5-4741-b3d0-292ef8f750e6",
			"targetRef": "32f7c424-1927-4081-9eca-6fe5a8e7ce31"
		},
		"a36be327-1318-42bd-b40a-b47c7e29af4d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "3a991fe9-5a3f-469e-9479-11b79e1b6a9e",
			"targetRef": "58745846-7e7a-47d5-94d1-28d3d719fcbf"
		},
		"a8538924-9283-432a-80ad-2643227cdd1c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "5fbddf25-66a3-4ea5-a209-89a5bc3167e7"
		},
		"5240ceeb-c5d7-451b-9a6f-bf15dc5dde40": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "SequenceFlow41",
			"sourceRef": "5fbddf25-66a3-4ea5-a209-89a5bc3167e7",
			"targetRef": "a36c08f3-7255-4407-b9e8-f1c24f81fe57"
		},
		"0aa8eeee-75e8-4cd8-9e8f-b81d37e9f156": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "5fbddf25-66a3-4ea5-a209-89a5bc3167e7",
			"targetRef": "981ecbfb-e536-425c-ba41-1a818e18bbd5"
		},
		"c0c3e0ec-582e-4300-b6cf-a8f685a318c6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow48",
			"name": "SequenceFlow48",
			"sourceRef": "b1112b91-b9f4-4e2a-89cf-4f8e88f595ca",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6b14f4c7-3e2e-4e8d-ad3b-4d4f8d2b3864": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow49",
			"name": "SequenceFlow49",
			"sourceRef": "58745846-7e7a-47d5-94d1-28d3d719fcbf",
			"targetRef": "abfad32c-6d1e-4897-ab00-9e862c9b1363"
		},
		"2e9a40f5-f034-4243-a32a-e1a8a8f91327": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow59",
			"name": "SequenceFlow59",
			"sourceRef": "abfad32c-6d1e-4897-ab00-9e862c9b1363",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d64d2d25-79de-43e5-811f-06f144e08198": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow60",
			"name": "SequenceFlow60",
			"sourceRef": "e4062985-933c-43f1-9343-271da49098ab",
			"targetRef": "f1cc4617-8719-4695-8377-e7b0a7493f71"
		},
		"7ce43ae4-3e40-4e2c-9a90-f2380178e9de": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow61",
			"name": "SequenceFlow61",
			"sourceRef": "981ecbfb-e536-425c-ba41-1a818e18bbd5",
			"targetRef": "e4062985-933c-43f1-9343-271da49098ab"
		},
		"a7b5f436-112d-44da-b8ed-df2c140c6774": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow62",
			"name": "SequenceFlow62",
			"sourceRef": "a36c08f3-7255-4407-b9e8-f1c24f81fe57",
			"targetRef": "e4062985-933c-43f1-9343-271da49098ab"
		},
		"7b13ffee-d782-4d40-977f-93d19f0d125d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow63",
			"name": "SequenceFlow63",
			"sourceRef": "9f74e42a-78f8-44ee-a6ae-c15b412afbdf",
			"targetRef": "3ea42cd8-fc50-4525-be52-2715771d6aaa"
		},
		"d3811f58-1319-4c1a-ab2b-f4be11cd45ae": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow64",
			"name": "SequenceFlow64",
			"sourceRef": "9f74e42a-78f8-44ee-a6ae-c15b412afbdf",
			"targetRef": "16491adf-f7b1-4f79-b6ae-e945e3601ce2"
		},
		"c6249cef-8dec-45fc-ba3a-45a87cf2e5a9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow65",
			"name": "SequenceFlow65",
			"sourceRef": "e6b8460e-1d11-40c1-9c3e-4628a0de4b83",
			"targetRef": "9f74e42a-78f8-44ee-a6ae-c15b412afbdf"
		},
		"7209927a-29a5-41ad-96d5-e50aa4e0527b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow66",
			"name": "SequenceFlow66",
			"sourceRef": "114b2fb9-b01b-42ba-9535-bcb1de18020f",
			"targetRef": "152480ca-04f5-4741-b3d0-292ef8f750e6"
		},
		"efd26dab-d251-4337-8e5b-39bc771a1f78": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow67",
			"name": "SequenceFlow67",
			"sourceRef": "3ea42cd8-fc50-4525-be52-2715771d6aaa",
			"targetRef": "114b2fb9-b01b-42ba-9535-bcb1de18020f"
		},
		"6ff9112d-36b0-40ec-9286-6d602c0cc401": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow68",
			"name": "SequenceFlow68",
			"sourceRef": "16491adf-f7b1-4f79-b6ae-e945e3601ce2",
			"targetRef": "114b2fb9-b01b-42ba-9535-bcb1de18020f"
		},
		"df04e562-79b7-4ae6-ba7d-5779c4f31d84": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow75",
			"name": "SequenceFlow75",
			"sourceRef": "2595a3b6-a7b1-4399-b998-c9658b54fe5f",
			"targetRef": "e6b8460e-1d11-40c1-9c3e-4628a0de4b83"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"4c88cdbc-edbd-4b8c-bc87-edb199a4c572": {},
				"9212eba4-cdf6-4a72-bb45-761ecf272f8f": {},
				"0d979260-e021-4c24-90dd-d7cde7a41dff": {},
				"f247f2a7-76bb-491f-be0f-42d2d78b552d": {},
				"82a08cf0-ce3a-4902-a73d-ebb78b8434cd": {},
				"11c1e54e-a393-4ce7-89d5-bae85341553f": {},
				"3af66cb9-ea5c-4e79-91e1-7ae7429dc810": {},
				"9180c6c0-4419-41ab-a595-03afa562dd60": {},
				"fc561480-d93c-4bd6-b409-b4c12920e076": {},
				"c69c39ea-9122-46f3-a355-eb21c1d03652": {},
				"43e2adcf-853e-47ad-adff-aa4347390d46": {},
				"54663cec-22ec-47ad-b702-e0761ab02ec2": {},
				"54406f92-7de0-4a41-8b67-59b70799bd69": {},
				"4e8bce05-c077-486c-b2ba-e5f9485cbc4f": {},
				"73b93434-13e4-4a7e-8981-c827504b7b37": {},
				"cf540788-cc4d-4642-aee8-ef9b4e3bc1e4": {},
				"0b393a5d-34df-481a-beb2-1fa2a798be4d": {},
				"beebbc93-e6e8-4220-a673-3151e6ad627b": {},
				"e5791b59-962a-4a37-938f-7e377a559dbf": {},
				"cac59a4c-7a7e-4e4b-abf7-3b8d4e6ab4bc": {},
				"31a1d130-5a20-436b-8585-9cbcba918c7f": {},
				"0b846f4d-f27e-493b-853e-5f3c929ec51e": {},
				"75520119-5173-4d19-9c3c-3efa8a654176": {},
				"9b768e40-0e57-4ba8-8d1b-9df944e0a254": {},
				"04b4be2e-cada-4687-966f-0b0c8ba95501": {},
				"f9226a91-7c27-47cd-981c-c3f98b94cb25": {},
				"bd9d715c-473a-4efd-aa25-6cf79a2089cc": {},
				"00e21a6f-bcbb-4b3b-b263-2e5bfd95a76c": {},
				"221ef8e6-dc36-451a-8d82-54e044460047": {},
				"6b9348bf-2f97-4bab-8db2-de4ccfdbdda0": {},
				"2da19026-64ee-4c48-9975-749c999a52a2": {},
				"99d2fcfe-21f6-419f-9602-b889ca34f85c": {},
				"645915df-ce3e-4853-b912-303c2252d5ff": {},
				"21df9725-6057-454c-9f5f-71505daaee88": {},
				"a4dec405-fd4a-4d29-aaa4-ed9c4f070df8": {},
				"a874617d-0b4b-4719-b2ae-383ca5dc8fbc": {},
				"3aa9a3b9-6fa7-4363-9a92-6a7652135941": {},
				"7ed4d410-1fce-49d4-90d0-7a7269d37f3a": {},
				"865f81dd-ddb3-43ac-b332-f19c6486dea7": {},
				"48c76654-d132-4726-b1b9-7384064f08ca": {},
				"7f9fc2f3-5e45-4c5c-9b3a-32ded400e818": {},
				"17846c4d-4ceb-4ad5-9dcf-f5b8561c371f": {},
				"b4c48132-8efe-4408-9ec1-ea5d867d146c": {}
			}
		},
		"8a9210d0-7a2f-4044-b164-3ec7a03cb4ed": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflow/initialContext.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -86,
			"y": 207,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1161,
			"y": 188.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"4c88cdbc-edbd-4b8c-bc87-edb199a4c572": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 872,
			"y": 194,
			"width": 100,
			"height": 60,
			"object": "58745846-7e7a-47d5-94d1-28d3d719fcbf"
		},
		"9212eba4-cdf6-4a72-bb45-761ecf272f8f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 79,
			"y": 198,
			"width": 73,
			"height": 60,
			"object": "a36c08f3-7255-4407-b9e8-f1c24f81fe57"
		},
		"0d979260-e021-4c24-90dd-d7cde7a41dff": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 547,
			"y": 194,
			"width": 78,
			"height": 55,
			"object": "16491adf-f7b1-4f79-b6ae-e945e3601ce2"
		},
		"f247f2a7-76bb-491f-be0f-42d2d78b552d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 233,
			"y": 207,
			"object": "f1cc4617-8719-4695-8377-e7b0a7493f71"
		},
		"82a08cf0-ce3a-4902-a73d-ebb78b8434cd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "254,226 347,226",
			"sourceSymbol": "f247f2a7-76bb-491f-be0f-42d2d78b552d",
			"targetSymbol": "7ed4d410-1fce-49d4-90d0-7a7269d37f3a",
			"object": "63dc1e09-86f4-4ed9-9dda-65eeba768ae1"
		},
		"11c1e54e-a393-4ce7-89d5-bae85341553f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "250,228 250,495 554,495",
			"sourceSymbol": "f247f2a7-76bb-491f-be0f-42d2d78b552d",
			"targetSymbol": "c69c39ea-9122-46f3-a355-eb21c1d03652",
			"object": "c1c76ce6-9e3d-438d-a298-51b2652f862e"
		},
		"3af66cb9-ea5c-4e79-91e1-7ae7429dc810": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 702,
			"y": 198,
			"object": "152480ca-04f5-4741-b3d0-292ef8f750e6"
		},
		"9180c6c0-4419-41ab-a595-03afa562dd60": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "723,221.5 802,221.5",
			"sourceSymbol": "3af66cb9-ea5c-4e79-91e1-7ae7429dc810",
			"targetSymbol": "54406f92-7de0-4a41-8b67-59b70799bd69",
			"object": "61361c2a-09e0-487c-a99c-f3e58793881d"
		},
		"fc561480-d93c-4bd6-b409-b4c12920e076": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "723,219 723,302.5 836,302.5 836,395",
			"sourceSymbol": "3af66cb9-ea5c-4e79-91e1-7ae7429dc810",
			"targetSymbol": "43e2adcf-853e-47ad-adff-aa4347390d46",
			"object": "88516f60-84cf-4aa8-bf8e-f081008c7f3b"
		},
		"c69c39ea-9122-46f3-a355-eb21c1d03652": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 504,
			"y": 465,
			"width": 100,
			"height": 60,
			"object": "e5e732df-56d3-48b9-8697-9e2e6f895c10"
		},
		"43e2adcf-853e-47ad-adff-aa4347390d46": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 786,
			"y": 365,
			"width": 100,
			"height": 60,
			"object": "32f7c424-1927-4081-9eca-6fe5a8e7ce31"
		},
		"54663cec-22ec-47ad-b702-e0761ab02ec2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 414,
			"y": 191,
			"width": 59,
			"height": 55,
			"object": "e6b8460e-1d11-40c1-9c3e-4628a0de4b83"
		},
		"54406f92-7de0-4a41-8b67-59b70799bd69": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 768,
			"y": 194,
			"width": 68,
			"height": 60,
			"object": "3a991fe9-5a3f-469e-9479-11b79e1b6a9e"
		},
		"4e8bce05-c077-486c-b2ba-e5f9485cbc4f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "802,224 922,224",
			"sourceSymbol": "54406f92-7de0-4a41-8b67-59b70799bd69",
			"targetSymbol": "4c88cdbc-edbd-4b8c-bc87-edb199a4c572",
			"object": "a36be327-1318-42bd-b40a-b47c7e29af4d"
		},
		"73b93434-13e4-4a7e-8981-c827504b7b37": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-70,225.5 26,225.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "cf540788-cc4d-4642-aee8-ef9b4e3bc1e4",
			"object": "a8538924-9283-432a-80ad-2643227cdd1c"
		},
		"cf540788-cc4d-4642-aee8-ef9b4e3bc1e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 5,
			"y": 207,
			"object": "5fbddf25-66a3-4ea5-a209-89a5bc3167e7"
		},
		"0b393a5d-34df-481a-beb2-1fa2a798be4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "26,228 115.5,228",
			"sourceSymbol": "cf540788-cc4d-4642-aee8-ef9b4e3bc1e4",
			"targetSymbol": "9212eba4-cdf6-4a72-bb45-761ecf272f8f",
			"object": "5240ceeb-c5d7-451b-9a6f-bf15dc5dde40"
		},
		"beebbc93-e6e8-4220-a673-3151e6ad627b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "26,228 26,181.5 116,181.5 116,124",
			"sourceSymbol": "cf540788-cc4d-4642-aee8-ef9b4e3bc1e4",
			"targetSymbol": "75520119-5173-4d19-9c3c-3efa8a654176",
			"object": "0aa8eeee-75e8-4cd8-9e8f-b81d37e9f156"
		},
		"e5791b59-962a-4a37-938f-7e377a559dbf": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1021,
			"y": 416,
			"width": 100,
			"height": 60,
			"object": "b1112b91-b9f4-4e2a-89cf-4f8e88f595ca"
		},
		"cac59a4c-7a7e-4e4b-abf7-3b8d4e6ab4bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1071,446 1148,446 1148,319.5 1178.5,319.5 1178.5,223",
			"sourceSymbol": "e5791b59-962a-4a37-938f-7e377a559dbf",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c0c3e0ec-582e-4300-b6cf-a8f685a318c6"
		},
		"31a1d130-5a20-436b-8585-9cbcba918c7f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "922,224 1059,224",
			"sourceSymbol": "4c88cdbc-edbd-4b8c-bc87-edb199a4c572",
			"targetSymbol": "9b768e40-0e57-4ba8-8d1b-9df944e0a254",
			"object": "6b14f4c7-3e2e-4e8d-ad3b-4d4f8d2b3864"
		},
		"0b846f4d-f27e-493b-853e-5f3c929ec51e": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 554,
			"y": 79,
			"width": 100,
			"height": 60,
			"object": "3ea42cd8-fc50-4525-be52-2715771d6aaa"
		},
		"75520119-5173-4d19-9c3c-3efa8a654176": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 66,
			"y": 96,
			"width": 100,
			"height": 60,
			"object": "981ecbfb-e536-425c-ba41-1a818e18bbd5"
		},
		"9b768e40-0e57-4ba8-8d1b-9df944e0a254": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1009,
			"y": 194,
			"width": 100,
			"height": 60,
			"object": "abfad32c-6d1e-4897-ab00-9e862c9b1363"
		},
		"04b4be2e-cada-4687-966f-0b0c8ba95501": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1059,224 1135.25,224 1135.25,206 1178.5,206",
			"sourceSymbol": "9b768e40-0e57-4ba8-8d1b-9df944e0a254",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "2e9a40f5-f034-4243-a32a-e1a8a8f91327"
		},
		"f9226a91-7c27-47cd-981c-c3f98b94cb25": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 186,
			"y": 207,
			"object": "e4062985-933c-43f1-9343-271da49098ab"
		},
		"bd9d715c-473a-4efd-aa25-6cf79a2089cc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "207,228 260,228",
			"sourceSymbol": "f9226a91-7c27-47cd-981c-c3f98b94cb25",
			"targetSymbol": "f247f2a7-76bb-491f-be0f-42d2d78b552d",
			"object": "d64d2d25-79de-43e5-811f-06f144e08198"
		},
		"00e21a6f-bcbb-4b3b-b263-2e5bfd95a76c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,122 206,122 206,219",
			"sourceSymbol": "75520119-5173-4d19-9c3c-3efa8a654176",
			"targetSymbol": "f9226a91-7c27-47cd-981c-c3f98b94cb25",
			"object": "7ce43ae4-3e40-4e2c-9a90-f2380178e9de"
		},
		"221ef8e6-dc36-451a-8d82-54e044460047": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "115.5,228 190,228",
			"sourceSymbol": "9212eba4-cdf6-4a72-bb45-761ecf272f8f",
			"targetSymbol": "f9226a91-7c27-47cd-981c-c3f98b94cb25",
			"object": "a7b5f436-112d-44da-b8ed-df2c140c6774"
		},
		"6b9348bf-2f97-4bab-8db2-de4ccfdbdda0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 490,
			"y": 198,
			"object": "9f74e42a-78f8-44ee-a6ae-c15b412afbdf"
		},
		"2da19026-64ee-4c48-9975-749c999a52a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "511,219 511,109 554.5,109",
			"sourceSymbol": "6b9348bf-2f97-4bab-8db2-de4ccfdbdda0",
			"targetSymbol": "0b846f4d-f27e-493b-853e-5f3c929ec51e",
			"object": "7b13ffee-d782-4d40-977f-93d19f0d125d"
		},
		"99d2fcfe-21f6-419f-9602-b889ca34f85c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "511,220.25 547.5,220.25",
			"sourceSymbol": "6b9348bf-2f97-4bab-8db2-de4ccfdbdda0",
			"targetSymbol": "0d979260-e021-4c24-90dd-d7cde7a41dff",
			"object": "d3811f58-1319-4c1a-ab2b-f4be11cd45ae"
		},
		"645915df-ce3e-4853-b912-303c2252d5ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "443.5,217.5 481.75,217.5 481.75,225.5 497,225.5",
			"sourceSymbol": "54663cec-22ec-47ad-b702-e0761ab02ec2",
			"targetSymbol": "6b9348bf-2f97-4bab-8db2-de4ccfdbdda0",
			"object": "c6249cef-8dec-45fc-ba3a-45a87cf2e5a9"
		},
		"21df9725-6057-454c-9f5f-71505daaee88": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 638,
			"y": 198,
			"object": "114b2fb9-b01b-42ba-9535-bcb1de18020f"
		},
		"a4dec405-fd4a-4d29-aaa4-ed9c4f070df8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "659,219 702.5,219",
			"sourceSymbol": "21df9725-6057-454c-9f5f-71505daaee88",
			"targetSymbol": "3af66cb9-ea5c-4e79-91e1-7ae7429dc810",
			"object": "7209927a-29a5-41ad-96d5-e50aa4e0527b"
		},
		"a874617d-0b4b-4719-b2ae-383ca5dc8fbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "604,105 670,105 670,168.75 662,168.75 662,204",
			"sourceSymbol": "0b846f4d-f27e-493b-853e-5f3c929ec51e",
			"targetSymbol": "21df9725-6057-454c-9f5f-71505daaee88",
			"object": "efd26dab-d251-4337-8e5b-39bc771a1f78"
		},
		"3aa9a3b9-6fa7-4363-9a92-6a7652135941": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,221 645,221",
			"sourceSymbol": "0d979260-e021-4c24-90dd-d7cde7a41dff",
			"targetSymbol": "21df9725-6057-454c-9f5f-71505daaee88",
			"object": "6ff9112d-36b0-40ec-9286-6d602c0cc401"
		},
		"7ed4d410-1fce-49d4-90d0-7a7269d37f3a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 297,
			"y": 194,
			"width": 100,
			"height": 60,
			"object": "2595a3b6-a7b1-4399-b998-c9658b54fe5f"
		},
		"865f81dd-ddb3-43ac-b332-f19c6486dea7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "347,221.25 443.5,221.25",
			"sourceSymbol": "7ed4d410-1fce-49d4-90d0-7a7269d37f3a",
			"targetSymbol": "54663cec-22ec-47ad-b702-e0761ab02ec2",
			"object": "df04e562-79b7-4ae6-ba7d-5779c4f31d84"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 6,
			"hubapireference": 1,
			"sequenceflow": 78,
			"startevent": 1,
			"endevent": 2,
			"usertask": 5,
			"servicetask": 3,
			"scripttask": 5,
			"mailtask": 6,
			"exclusivegateway": 5,
			"parallelgateway": 9,
			"referencedsubflow": 2
		},
		"02b295ad-ebd3-4373-8cb4-c0e1e9509bb2": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT30M",
			"id": "timereventdefinition2"
		},
		"c6c7f7bb-9331-400a-b1f2-97e726b540e7": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "tpielaszkiewicz@gmail.com",
			"subject": "Additional approval for ${info.businessKey}",
			"text": "Please log in to SAP BTP to provide additional approval to request ${info.businessKey}.\n\nThis is common mailbox example ",
			"id": "maildefinition3"
		},
		"2c4f9c6a-6025-4754-aaf0-93a0e439d15d": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "tpielaszkiewicz@gmail.com",
			"subject": "Approval for ${info.businessKey} request ",
			"text": "Please log in to SAP BTP to provide  approval to request ${info.businessKey}.\n\nThis is common mailbox example ",
			"id": "maildefinition4"
		},
		"b40f8d12-1e61-4e54-a29e-5c137f721628": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition5",
			"to": "${info.startedBy}",
			"subject": "Request rejected ${info.businessKey}",
			"text": "Request has been rejected ${info.businessKey}",
			"id": "maildefinition5"
		},
		"41c3b50c-ef42-4a05-a9d1-10b141c0425c": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition6",
			"to": "${info.startedBy}",
			"subject": "Request approved ${info.businessKey}",
			"text": "Request approved ${info.businessKey}",
			"id": "maildefinition6"
		},
		"8dbe03d5-0467-4280-95c4-620544350c56": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "ExclusiveGateway5"
		},
		"48c76654-d132-4726-b1b9-7384064f08ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 918,
			"y": 472,
			"object": "8dbe03d5-0467-4280-95c4-620544350c56"
		},
		"b44c166a-ffeb-4fe9-a6a0-d5a6c09f1c89": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow76",
			"name": "SequenceFlow76",
			"sourceRef": "32f7c424-1927-4081-9eca-6fe5a8e7ce31",
			"targetRef": "8dbe03d5-0467-4280-95c4-620544350c56"
		},
		"7f9fc2f3-5e45-4c5c-9b3a-32ded400e818": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "836,395 902.25,395 902.25,479 939,479",
			"sourceSymbol": "43e2adcf-853e-47ad-adff-aa4347390d46",
			"targetSymbol": "48c76654-d132-4726-b1b9-7384064f08ca",
			"object": "b44c166a-ffeb-4fe9-a6a0-d5a6c09f1c89"
		},
		"89a9f50a-3a91-4204-979d-630ca99a1ac1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow77",
			"name": "SequenceFlow77",
			"sourceRef": "e5e732df-56d3-48b9-8697-9e2e6f895c10",
			"targetRef": "8dbe03d5-0467-4280-95c4-620544350c56"
		},
		"17846c4d-4ceb-4ad5-9dcf-f5b8561c371f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "554,495 761.25,495 761.25,564 939,564 939,513.5",
			"sourceSymbol": "c69c39ea-9122-46f3-a355-eb21c1d03652",
			"targetSymbol": "48c76654-d132-4726-b1b9-7384064f08ca",
			"object": "89a9f50a-3a91-4204-979d-630ca99a1ac1"
		},
		"53b45e59-e9ff-44d7-8bc0-b80a692a9cb2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow78",
			"name": "SequenceFlow78",
			"sourceRef": "8dbe03d5-0467-4280-95c4-620544350c56",
			"targetRef": "b1112b91-b9f4-4e2a-89cf-4f8e88f595ca"
		},
		"b4c48132-8efe-4408-9ec1-ea5d867d146c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "939,493 990.5,493 990.5,446 1021.5,446",
			"sourceSymbol": "48c76654-d132-4726-b1b9-7384064f08ca",
			"targetSymbol": "e5791b59-962a-4a37-938f-7e377a559dbf",
			"object": "53b45e59-e9ff-44d7-8bc0-b80a692a9cb2"
		}
	}
}