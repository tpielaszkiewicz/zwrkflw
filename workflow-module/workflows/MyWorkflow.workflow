{
	"contents": {
		"c1dc090d-0032-4dbb-b003-4abd36c0a48c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.pg.myworkflow",
			"subject": "MyWorkflow",
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
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"ae7b0cb2-5279-452e-95b6-ba5f3da5c3b2": {
					"name": "SequenceFlow5"
				},
				"63f7e1d0-23ed-4ed1-a551-f53191f59747": {
					"name": "SequenceFlow6"
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
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "a36c08f3-7255-4407-b9e8-f1c24f81fe57"
		},
		"ae7b0cb2-5279-452e-95b6-ba5f3da5c3b2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "58745846-7e7a-47d5-94d1-28d3d719fcbf",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"63f7e1d0-23ed-4ed1-a551-f53191f59747": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "a36c08f3-7255-4407-b9e8-f1c24f81fe57",
			"targetRef": "58745846-7e7a-47d5-94d1-28d3d719fcbf"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"4c88cdbc-edbd-4b8c-bc87-edb199a4c572": {},
				"bc7a8901-0808-4385-bb30-155fe237d2f4": {},
				"9212eba4-cdf6-4a72-bb45-761ecf272f8f": {},
				"24c932fa-2833-421c-9c56-93d1e2580e64": {}
			}
		},
		"8a9210d0-7a2f-4044-b164-3ec7a03cb4ed": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflow/initialContext.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 41,
			"y": 212,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 607,
			"y": 210.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "57,228 259,228",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "9212eba4-cdf6-4a72-bb45-761ecf272f8f",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4c88cdbc-edbd-4b8c-bc87-edb199a4c572": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 387,
			"y": 198,
			"width": 100,
			"height": 60,
			"object": "58745846-7e7a-47d5-94d1-28d3d719fcbf"
		},
		"bc7a8901-0808-4385-bb30-155fe237d2f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "437,228 624.5,228",
			"sourceSymbol": "4c88cdbc-edbd-4b8c-bc87-edb199a4c572",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "ae7b0cb2-5279-452e-95b6-ba5f3da5c3b2"
		},
		"9212eba4-cdf6-4a72-bb45-761ecf272f8f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 209,
			"y": 198,
			"width": 100,
			"height": 60,
			"object": "a36c08f3-7255-4407-b9e8-f1c24f81fe57"
		},
		"24c932fa-2833-421c-9c56-93d1e2580e64": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "259,228 437,228",
			"sourceSymbol": "9212eba4-cdf6-4a72-bb45-761ecf272f8f",
			"targetSymbol": "4c88cdbc-edbd-4b8c-bc87-edb199a4c572",
			"object": "63f7e1d0-23ed-4ed1-a551-f53191f59747"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 1,
			"scripttask": 1
		},
		"02b295ad-ebd3-4373-8cb4-c0e1e9509bb2": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT30M",
			"id": "timereventdefinition2"
		}
	}
}