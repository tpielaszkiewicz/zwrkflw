{
	"contents": {
		"8b657938-eb0a-491e-a98a-a98faf8c364a": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.pg.btp.requestapproval",
			"subject": "RequestApproval",
			"name": "RequestApproval",
			"documentation": "Request approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Draft submitted - workflow starts "
				},
				"69087a8e-a192-43a8-8b44-39b934a9aa2d": {
					"name": "Api call from request app"
				},
				"b6b518ca-0e02-48d7-8615-861f90e2ab97": {
					"name": "Api call from request app - restart"
				},
				"958d16e8-590d-4d06-94a2-1285e6563a5f": {
					"name": "Deleted / cancelled"
				},
				"2057c33e-f1fb-4d0c-b54f-dfe0ed17e919": {
					"name": "Api call from app to cancel / delete "
				},
				"a2d9ec19-35bb-462e-b7cf-002b0c21e36b": {
					"name": "Completed"
				},
				"31b70389-0005-47d3-a627-3e5eb29eeaad": {
					"name": "Api call from request app to complete"
				}
			},
			"activities": {
				"a8eca61e-f373-44ea-a164-464fba917ea9": {
					"name": "Approval task for Admin in my inbox"
				},
				"840d70aa-2bf7-4047-a421-e16bbe69d8e6": {
					"name": "ParallelGateway1"
				},
				"b609d96f-f498-460d-923e-3bc71bac8662": {
					"name": "Check approved / rejected - decision"
				},
				"1c968a66-cd61-47b6-b283-ee52d3f54057": {
					"name": "User task after rejection - dialog restart from my inbox "
				},
				"1eb74b22-d8f4-4496-afe8-d15a7701bebd": {
					"name": "Wait for restart from app or from user task"
				},
				"9ae6f03b-ebaf-4866-b14a-61fa60fecb83": {
					"name": "Service task - call save update on request object to change status and optionally some data  to In Review again"
				},
				"bba53e14-5d98-4b4a-a956-80b3fcf4dc97": {
					"name": "ParallelGateway3"
				},
				"173a0e60-14ae-4797-9280-40d8051aae6d": {
					"name": "Restart from app or from my inbox "
				},
				"5cc8e009-21c0-4a7b-9a03-44d9497284a3": {
					"name": "Service call - update the status based on decision"
				},
				"8450228d-6a45-48a6-a938-2c4f8cef53da": {
					"name": "Complete from my inbox "
				},
				"8361c1b0-d2dd-44ce-8f13-fca3816bf2ca": {
					"name": "Service call - update the status to completed"
				}
			},
			"gateways": {
				"186d5cc4-1f2d-40f0-96b1-b09a04283a40": {
					"name": "Decision coming from app or my inbox "
				},
				"d20fca06-1677-4865-bd81-fe02d4748229": {
					"name": "Completion from app or from my inbox"
				},
				"0ad47f90-307d-42fd-beff-43149df35856": {
					"name": "Decision coming from app or my inbox "
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"e162766f-cec4-4d76-8dce-759de3926505": {
					"name": "SequenceFlow4"
				},
				"15e29fe3-d827-45aa-9ba4-81d05ff0c68e": {
					"name": "SequenceFlow5"
				},
				"127c7749-7620-4a00-b18b-d6154221ac93": {
					"name": "Rejected"
				},
				"0a4ada08-698f-466b-a2c2-69cdf8095830": {
					"name": "SequenceFlow11"
				},
				"25ae400a-f3a1-408c-9aa9-e4f74d3c5d62": {
					"name": "SequenceFlow14"
				},
				"acc771c8-f57a-4e42-b13f-8d1c8c9dbebb": {
					"name": "SequenceFlow17"
				},
				"13c42bc5-449b-4c78-a808-a6fd764d1980": {
					"name": "SequenceFlow22"
				},
				"78b2c6e6-1d09-4351-bce8-6e7b343f370c": {
					"name": "SequenceFlow24"
				},
				"fbdd83fe-12dc-4c22-9122-bb23b66d9680": {
					"name": "SequenceFlow28"
				},
				"23ab112e-54b3-45b6-9929-ffd3f55b4cd7": {
					"name": "SequenceFlow29"
				},
				"6c624e5e-464a-4da7-bb5a-543fc6717ba7": {
					"name": "SequenceFlow30"
				},
				"9118c588-8d4e-4ce2-bf3c-eb4e8ee242f4": {
					"name": "SequenceFlow32"
				},
				"bca0313f-a1ae-4662-b1ff-53689bf5f8db": {
					"name": "SequenceFlow33"
				},
				"6d0a3cd1-ed57-4923-b220-cd009b3f2d2d": {
					"name": "SequenceFlow34"
				},
				"439a58a5-41c1-41bc-adf2-2fd351364887": {
					"name": "SequenceFlow35"
				},
				"70c26d44-e591-46e4-b395-20d86e8dd255": {
					"name": "SequenceFlow36"
				},
				"f6451ae4-6fb9-4bf4-b179-bf1aee39467e": {
					"name": "SequenceFlow38"
				},
				"e97c89fc-6599-4ab0-9270-49d6c9cf3070": {
					"name": "Approved -> Complete"
				},
				"47f553ed-86d7-4052-ab29-3886ecea324d": {
					"name": "SequenceFlow40"
				},
				"758d0090-7ba8-4601-a903-64dbe4e3c799": {
					"name": "SequenceFlow41"
				},
				"57c9ad3a-e298-48ff-91f2-9ad82a0cc9ab": {
					"name": "SequenceFlow42"
				},
				"39c15fae-c76a-490d-833f-7caa8a596cf0": {
					"name": "SequenceFlow43"
				},
				"6e2266f0-c85b-4c55-b16b-ef4566d8406b": {
					"name": "SequenceFlow44"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Draft submitted - workflow starts "
		},
		"a8eca61e-f373-44ea-a164-464fba917ea9": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"id": "usertask1",
			"name": "Approval task for Admin in my inbox"
		},
		"840d70aa-2bf7-4047-a421-e16bbe69d8e6": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "ParallelGateway1"
		},
		"b609d96f-f498-460d-923e-3bc71bac8662": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Check approved / rejected - decision"
		},
		"1c968a66-cd61-47b6-b283-ee52d3f54057": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"id": "usertask2",
			"name": "User task after rejection - dialog restart from my inbox "
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "840d70aa-2bf7-4047-a421-e16bbe69d8e6"
		},
		"e162766f-cec4-4d76-8dce-759de3926505": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "840d70aa-2bf7-4047-a421-e16bbe69d8e6",
			"targetRef": "bba53e14-5d98-4b4a-a956-80b3fcf4dc97"
		},
		"15e29fe3-d827-45aa-9ba4-81d05ff0c68e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "840d70aa-2bf7-4047-a421-e16bbe69d8e6",
			"targetRef": "69087a8e-a192-43a8-8b44-39b934a9aa2d"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"b159bd2b-4ed7-44ba-8cfb-df326ff8bd9b": {},
				"266f417e-f13f-4395-a3a1-3feb7d6fcc2c": {},
				"733e2fb2-d67e-4b0f-b047-3ac9435ae898": {},
				"37c81a07-03a7-4917-855e-13a1aba7ed6b": {},
				"2734ed33-f676-4230-9545-36ad5a057aa1": {},
				"cb1952ef-cc9a-4e3c-99c0-36d86c80a022": {},
				"abb3e927-7dd1-46c1-93f2-12daab13a838": {},
				"ed3d7aeb-937e-4790-88aa-b830c597c242": {},
				"a86633b6-4144-4ddf-b3fa-28008397a4ff": {},
				"4f0a6f9a-0d2f-4201-bf5d-e884ff1ff9d6": {},
				"60b851ed-7b04-4802-beed-c7947aef9bcc": {},
				"a245a54d-6705-44b4-869f-5b37430d5a14": {},
				"54509000-26c0-43ed-80bb-d365e259f17f": {},
				"f362656d-b318-421f-9064-a7a267ec0aac": {},
				"813cf0b9-2089-4a02-80f8-cd3ac8f7b152": {},
				"f740f2b7-abd2-4c2d-984d-a84297d90b3f": {},
				"d9c09472-fec4-43ae-91e2-566a4c30520f": {},
				"2dbc14dc-14c4-47f2-9008-74128ddcfae1": {},
				"79354b68-ba70-4002-8252-8bf92ecb3014": {},
				"b9ecba6c-3cfa-4836-9c00-969955a7a803": {},
				"6f440ce4-78c7-4a8a-932d-8d9e302f9fff": {},
				"a3241088-883e-4ad7-bd6d-ab05d0f9c6db": {},
				"b1ea3827-8fb0-4387-82d9-e6ca38e2e1b0": {},
				"fa4e74dd-95ba-42bc-a838-39bce6a50bb3": {},
				"05c005ab-7c4a-45b8-b656-044a00aa6a16": {},
				"8b4e85ee-5bd0-4ef0-81e8-b0a1d886a8e4": {},
				"c14b55af-9e7d-461e-b9b7-5b1b02ddf1e5": {},
				"de7e31ce-7ce5-4266-a866-ecd016efa826": {},
				"4b1a7877-3be4-475f-bc85-3a7c0863df5f": {},
				"2320f335-3818-44c9-9071-3f61006a7ded": {},
				"bda659ba-2a63-4b2a-be90-b62046854080": {},
				"5794691c-ad57-4788-b2e3-d6046ca81d0c": {},
				"c21fb563-b7d7-4bf9-9197-e3e8b6ba5142": {},
				"b804514d-ed96-4586-bf6c-9a9621c71c73": {},
				"62e6f37d-8940-454f-9929-1ed46c71ddc7": {},
				"5fb3c260-c622-4c2e-a6ae-6c30185eaeb7": {},
				"234b5f0d-b72c-473c-862c-e8e0f7314b08": {},
				"d0df5edb-3cef-4802-a0f2-d9ff7b5529ba": {},
				"657f7210-6898-47dc-840c-2d185c7c3c5a": {},
				"4e17546f-20d2-4975-8f4d-5af5e6f26df7": {},
				"829f596f-4b6f-47ab-9784-494507f0f7d2": {},
				"9a1821dd-76a8-496c-82de-2dc54c026ca0": {},
				"b7826a1e-44fc-4514-85dc-d0bebdd2554b": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -100,
			"y": 109,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-84,124 11,124",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "266f417e-f13f-4395-a3a1-3feb7d6fcc2c",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"b159bd2b-4ed7-44ba-8cfb-df326ff8bd9b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 193,
			"y": 84,
			"width": 128,
			"height": 79,
			"object": "a8eca61e-f373-44ea-a164-464fba917ea9"
		},
		"266f417e-f13f-4395-a3a1-3feb7d6fcc2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": -10,
			"y": 102,
			"object": "840d70aa-2bf7-4047-a421-e16bbe69d8e6"
		},
		"733e2fb2-d67e-4b0f-b047-3ac9435ae898": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "11,121 115,121",
			"sourceSymbol": "266f417e-f13f-4395-a3a1-3feb7d6fcc2c",
			"targetSymbol": "60b851ed-7b04-4802-beed-c7947aef9bcc",
			"object": "e162766f-cec4-4d76-8dce-759de3926505"
		},
		"37c81a07-03a7-4917-855e-13a1aba7ed6b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "11,123 11,-31 292,-31",
			"sourceSymbol": "266f417e-f13f-4395-a3a1-3feb7d6fcc2c",
			"targetSymbol": "d9c09472-fec4-43ae-91e2-566a4c30520f",
			"object": "15e29fe3-d827-45aa-9ba4-81d05ff0c68e"
		},
		"2734ed33-f676-4230-9545-36ad5a057aa1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 656,
			"y": 102,
			"object": "b609d96f-f498-460d-923e-3bc71bac8662"
		},
		"cb1952ef-cc9a-4e3c-99c0-36d86c80a022": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 412,
			"y": 373,
			"width": 173,
			"height": 89,
			"object": "1c968a66-cd61-47b6-b283-ee52d3f54057"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"messageeventdefinition": 2,
			"timereventdefinition": 1,
			"sequenceflow": 44,
			"startevent": 1,
			"intermediatemessageevent": 2,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"exclusivegateway": 3,
			"parallelgateway": 3
		},
		"1eb74b22-d8f4-4496-afe8-d15a7701bebd": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "Wait for restart from app or from user task"
		},
		"abb3e927-7dd1-46c1-93f2-12daab13a838": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 656,
			"y": 331,
			"object": "1eb74b22-d8f4-4496-afe8-d15a7701bebd"
		},
		"127c7749-7620-4a00-b18b-d6154221ac93": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "Rejected",
			"sourceRef": "b609d96f-f498-460d-923e-3bc71bac8662",
			"targetRef": "1eb74b22-d8f4-4496-afe8-d15a7701bebd"
		},
		"ed3d7aeb-937e-4790-88aa-b830c597c242": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "677,123 677,331.5",
			"sourceSymbol": "2734ed33-f676-4230-9545-36ad5a057aa1",
			"targetSymbol": "abb3e927-7dd1-46c1-93f2-12daab13a838",
			"object": "127c7749-7620-4a00-b18b-d6154221ac93"
		},
		"0a4ada08-698f-466b-a2c2-69cdf8095830": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "1eb74b22-d8f4-4496-afe8-d15a7701bebd",
			"targetRef": "1c968a66-cd61-47b6-b283-ee52d3f54057"
		},
		"a86633b6-4144-4ddf-b3fa-28008397a4ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "676,355.25 613,355.25 613,414.25 412.5,414.25",
			"sourceSymbol": "abb3e927-7dd1-46c1-93f2-12daab13a838",
			"targetSymbol": "cb1952ef-cc9a-4e3c-99c0-36d86c80a022",
			"object": "0a4ada08-698f-466b-a2c2-69cdf8095830"
		},
		"9ae6f03b-ebaf-4866-b14a-61fa60fecb83": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "Service task - call save update on request object to change status and optionally some data  to In Review again"
		},
		"4f0a6f9a-0d2f-4201-bf5d-e884ff1ff9d6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 144,
			"y": 356,
			"width": 226,
			"height": 106,
			"object": "9ae6f03b-ebaf-4866-b14a-61fa60fecb83"
		},
		"bba53e14-5d98-4b4a-a956-80b3fcf4dc97": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway3",
			"name": "ParallelGateway3"
		},
		"60b851ed-7b04-4802-beed-c7947aef9bcc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 94,
			"y": 98,
			"object": "bba53e14-5d98-4b4a-a956-80b3fcf4dc97"
		},
		"25ae400a-f3a1-408c-9aa9-e4f74d3c5d62": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "bba53e14-5d98-4b4a-a956-80b3fcf4dc97",
			"targetRef": "a8eca61e-f373-44ea-a164-464fba917ea9"
		},
		"a245a54d-6705-44b4-869f-5b37430d5a14": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "115,121.25 257,121.25",
			"sourceSymbol": "60b851ed-7b04-4802-beed-c7947aef9bcc",
			"targetSymbol": "b159bd2b-4ed7-44ba-8cfb-df326ff8bd9b",
			"object": "25ae400a-f3a1-408c-9aa9-e4f74d3c5d62"
		},
		"173a0e60-14ae-4797-9280-40d8051aae6d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Restart from app or from my inbox "
		},
		"54509000-26c0-43ed-80bb-d365e259f17f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 99,
			"y": 260,
			"object": "173a0e60-14ae-4797-9280-40d8051aae6d"
		},
		"acc771c8-f57a-4e42-b13f-8d1c8c9dbebb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "173a0e60-14ae-4797-9280-40d8051aae6d",
			"targetRef": "bba53e14-5d98-4b4a-a956-80b3fcf4dc97"
		},
		"f362656d-b318-421f-9064-a7a267ec0aac": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "117.5,281 117.5,139.5",
			"sourceSymbol": "54509000-26c0-43ed-80bb-d365e259f17f",
			"targetSymbol": "60b851ed-7b04-4802-beed-c7947aef9bcc",
			"object": "acc771c8-f57a-4e42-b13f-8d1c8c9dbebb"
		},
		"186d5cc4-1f2d-40f0-96b1-b09a04283a40": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Decision coming from app or my inbox "
		},
		"813cf0b9-2089-4a02-80f8-cd3ac8f7b152": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 555,
			"y": 98,
			"object": "186d5cc4-1f2d-40f0-96b1-b09a04283a40"
		},
		"13c42bc5-449b-4c78-a808-a6fd764d1980": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "186d5cc4-1f2d-40f0-96b1-b09a04283a40",
			"targetRef": "b609d96f-f498-460d-923e-3bc71bac8662"
		},
		"f740f2b7-abd2-4c2d-984d-a84297d90b3f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "576,121 677,121",
			"sourceSymbol": "813cf0b9-2089-4a02-80f8-cd3ac8f7b152",
			"targetSymbol": "2734ed33-f676-4230-9545-36ad5a057aa1",
			"object": "13c42bc5-449b-4c78-a808-a6fd764d1980"
		},
		"69087a8e-a192-43a8-8b44-39b934a9aa2d": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatemessageevent2",
			"name": "Api call from request app",
			"eventDefinitions": {
				"d602bd12-9437-488d-a523-76583a85bf30": {}
			}
		},
		"d602bd12-9437-488d-a523-76583a85bf30": {
			"classDefinition": "com.sap.bpm.wfs.MessageEventDefinition",
			"id": "messageeventdefinition2"
		},
		"d9c09472-fec4-43ae-91e2-566a4c30520f": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 276,
			"y": -44,
			"width": 32,
			"height": 32,
			"object": "69087a8e-a192-43a8-8b44-39b934a9aa2d"
		},
		"78b2c6e6-1d09-4351-bce8-6e7b343f370c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "69087a8e-a192-43a8-8b44-39b934a9aa2d",
			"targetRef": "186d5cc4-1f2d-40f0-96b1-b09a04283a40"
		},
		"2dbc14dc-14c4-47f2-9008-74128ddcfae1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "292,-28 574,-28 574,119",
			"sourceSymbol": "d9c09472-fec4-43ae-91e2-566a4c30520f",
			"targetSymbol": "813cf0b9-2089-4a02-80f8-cd3ac8f7b152",
			"object": "78b2c6e6-1d09-4351-bce8-6e7b343f370c"
		},
		"b6b518ca-0e02-48d7-8615-861f90e2ab97": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatemessageevent2",
			"name": "Api call from request app - restart",
			"eventDefinitions": {
				"6fb7e36b-b08c-4f72-a5c6-8121c2a5590e": {}
			}
		},
		"6fb7e36b-b08c-4f72-a5c6-8121c2a5590e": {
			"classDefinition": "com.sap.bpm.wfs.MessageEventDefinition",
			"id": "messageeventdefinition2"
		},
		"79354b68-ba70-4002-8252-8bf92ecb3014": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 347,
			"y": 265,
			"width": 32,
			"height": 32,
			"object": "b6b518ca-0e02-48d7-8615-861f90e2ab97"
		},
		"fbdd83fe-12dc-4c22-9122-bb23b66d9680": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "b6b518ca-0e02-48d7-8615-861f90e2ab97",
			"targetRef": "173a0e60-14ae-4797-9280-40d8051aae6d"
		},
		"b9ecba6c-3cfa-4836-9c00-969955a7a803": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "363,281 140.5,281",
			"sourceSymbol": "79354b68-ba70-4002-8252-8bf92ecb3014",
			"targetSymbol": "54509000-26c0-43ed-80bb-d365e259f17f",
			"object": "fbdd83fe-12dc-4c22-9122-bb23b66d9680"
		},
		"23ab112e-54b3-45b6-9929-ffd3f55b4cd7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "9ae6f03b-ebaf-4866-b14a-61fa60fecb83",
			"targetRef": "173a0e60-14ae-4797-9280-40d8051aae6d"
		},
		"6f440ce4-78c7-4a8a-932d-8d9e302f9fff": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "257,409 120,409 120,301.5",
			"sourceSymbol": "4f0a6f9a-0d2f-4201-bf5d-e884ff1ff9d6",
			"targetSymbol": "54509000-26c0-43ed-80bb-d365e259f17f",
			"object": "23ab112e-54b3-45b6-9929-ffd3f55b4cd7"
		},
		"6c624e5e-464a-4da7-bb5a-543fc6717ba7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "1c968a66-cd61-47b6-b283-ee52d3f54057",
			"targetRef": "9ae6f03b-ebaf-4866-b14a-61fa60fecb83"
		},
		"a3241088-883e-4ad7-bd6d-ab05d0f9c6db": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "498.5,413.74359130859375 369.1439514160156,413.74359130859375",
			"sourceSymbol": "cb1952ef-cc9a-4e3c-99c0-36d86c80a022",
			"targetSymbol": "4f0a6f9a-0d2f-4201-bf5d-e884ff1ff9d6",
			"object": "6c624e5e-464a-4da7-bb5a-543fc6717ba7"
		},
		"9118c588-8d4e-4ce2-bf3c-eb4e8ee242f4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "1eb74b22-d8f4-4496-afe8-d15a7701bebd",
			"targetRef": "b6b518ca-0e02-48d7-8615-861f90e2ab97"
		},
		"b1ea3827-8fb0-4387-82d9-e6ca38e2e1b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "677,352 613,352 613,284 378.5,284",
			"sourceSymbol": "abb3e927-7dd1-46c1-93f2-12daab13a838",
			"targetSymbol": "79354b68-ba70-4002-8252-8bf92ecb3014",
			"object": "9118c588-8d4e-4ce2-bf3c-eb4e8ee242f4"
		},
		"5cc8e009-21c0-4a7b-9a03-44d9497284a3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "Service call - update the status based on decision"
		},
		"fa4e74dd-95ba-42bc-a838-39bce6a50bb3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 390,
			"y": 84,
			"width": 132,
			"height": 78,
			"object": "5cc8e009-21c0-4a7b-9a03-44d9497284a3"
		},
		"bca0313f-a1ae-4662-b1ff-53689bf5f8db": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow33",
			"name": "SequenceFlow33",
			"sourceRef": "a8eca61e-f373-44ea-a164-464fba917ea9",
			"targetRef": "5cc8e009-21c0-4a7b-9a03-44d9497284a3"
		},
		"05c005ab-7c4a-45b8-b656-044a00aa6a16": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "257,123.25 390.5,123.25",
			"sourceSymbol": "b159bd2b-4ed7-44ba-8cfb-df326ff8bd9b",
			"targetSymbol": "fa4e74dd-95ba-42bc-a838-39bce6a50bb3",
			"object": "bca0313f-a1ae-4662-b1ff-53689bf5f8db"
		},
		"6d0a3cd1-ed57-4923-b220-cd009b3f2d2d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "5cc8e009-21c0-4a7b-9a03-44d9497284a3",
			"targetRef": "186d5cc4-1f2d-40f0-96b1-b09a04283a40"
		},
		"8b4e85ee-5bd0-4ef0-81e8-b0a1d886a8e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "456,121 555.5,121",
			"sourceSymbol": "fa4e74dd-95ba-42bc-a838-39bce6a50bb3",
			"targetSymbol": "813cf0b9-2089-4a02-80f8-cd3ac8f7b152",
			"object": "6d0a3cd1-ed57-4923-b220-cd009b3f2d2d"
		},
		"958d16e8-590d-4d06-94a2-1285e6563a5f": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Deleted / cancelled"
		},
		"c14b55af-9e7d-461e-b9b7-5b1b02ddf1e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1206,
			"y": -171,
			"width": 35,
			"height": 35,
			"object": "958d16e8-590d-4d06-94a2-1285e6563a5f"
		},
		"2057c33e-f1fb-4d0c-b54f-dfe0ed17e919": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatemessageevent2",
			"name": "Api call from app to cancel / delete ",
			"eventDefinitions": {
				"cd3fe33c-3c42-4535-9618-184c7c1cfdc5": {}
			}
		},
		"cd3fe33c-3c42-4535-9618-184c7c1cfdc5": {
			"classDefinition": "com.sap.bpm.wfs.MessageEventDefinition",
			"id": "messageeventdefinition2"
		},
		"de7e31ce-7ce5-4266-a866-ecd016efa826": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 276,
			"y": -179,
			"width": 32,
			"height": 32,
			"object": "2057c33e-f1fb-4d0c-b54f-dfe0ed17e919"
		},
		"439a58a5-41c1-41bc-adf2-2fd351364887": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "840d70aa-2bf7-4047-a421-e16bbe69d8e6",
			"targetRef": "2057c33e-f1fb-4d0c-b54f-dfe0ed17e919"
		},
		"4b1a7877-3be4-475f-bc85-3a7c0863df5f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-2,125 -2,-157 282,-157",
			"sourceSymbol": "266f417e-f13f-4395-a3a1-3feb7d6fcc2c",
			"targetSymbol": "de7e31ce-7ce5-4266-a866-ecd016efa826",
			"object": "439a58a5-41c1-41bc-adf2-2fd351364887"
		},
		"70c26d44-e591-46e4-b395-20d86e8dd255": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow36",
			"name": "SequenceFlow36",
			"sourceRef": "2057c33e-f1fb-4d0c-b54f-dfe0ed17e919",
			"targetRef": "958d16e8-590d-4d06-94a2-1285e6563a5f"
		},
		"2320f335-3818-44c9-9071-3f61006a7ded": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "292,-163.25 756.9990234375,-163.25 756.9990234375,-153.25 1206.5,-153.25",
			"sourceSymbol": "de7e31ce-7ce5-4266-a866-ecd016efa826",
			"targetSymbol": "c14b55af-9e7d-461e-b9b7-5b1b02ddf1e5",
			"object": "70c26d44-e591-46e4-b395-20d86e8dd255"
		},
		"a2d9ec19-35bb-462e-b7cf-002b0c21e36b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Completed"
		},
		"bda659ba-2a63-4b2a-be90-b62046854080": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1346,
			"y": 109,
			"width": 35,
			"height": 35,
			"object": "a2d9ec19-35bb-462e-b7cf-002b0c21e36b"
		},
		"d20fca06-1677-4865-bd81-fe02d4748229": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "Completion from app or from my inbox"
		},
		"5794691c-ad57-4788-b2e3-d6046ca81d0c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 864,
			"y": 98,
			"object": "d20fca06-1677-4865-bd81-fe02d4748229"
		},
		"8450228d-6a45-48a6-a938-2c4f8cef53da": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"id": "usertask1",
			"name": "Complete from my inbox "
		},
		"c21fb563-b7d7-4bf9-9197-e3e8b6ba5142": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 946,
			"y": 84,
			"width": 128,
			"height": 79,
			"object": "8450228d-6a45-48a6-a938-2c4f8cef53da"
		},
		"f6451ae4-6fb9-4bf4-b179-bf1aee39467e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow38",
			"name": "SequenceFlow38",
			"sourceRef": "d20fca06-1677-4865-bd81-fe02d4748229",
			"targetRef": "8450228d-6a45-48a6-a938-2c4f8cef53da"
		},
		"b804514d-ed96-4586-bf6c-9a9621c71c73": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "885,121.25 946.5,121.25",
			"sourceSymbol": "5794691c-ad57-4788-b2e3-d6046ca81d0c",
			"targetSymbol": "c21fb563-b7d7-4bf9-9197-e3e8b6ba5142",
			"object": "f6451ae4-6fb9-4bf4-b179-bf1aee39467e"
		},
		"8361c1b0-d2dd-44ce-8f13-fca3816bf2ca": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "Service call - update the status to completed"
		},
		"62e6f37d-8940-454f-9929-1ed46c71ddc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1088,
			"y": 84,
			"width": 132,
			"height": 78,
			"object": "8361c1b0-d2dd-44ce-8f13-fca3816bf2ca"
		},
		"e97c89fc-6599-4ab0-9270-49d6c9cf3070": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow39",
			"name": "Approved -> Complete",
			"sourceRef": "b609d96f-f498-460d-923e-3bc71bac8662",
			"targetRef": "d20fca06-1677-4865-bd81-fe02d4748229"
		},
		"5fb3c260-c622-4c2e-a6ae-6c30185eaeb7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "677,121 864.5,121",
			"sourceSymbol": "2734ed33-f676-4230-9545-36ad5a057aa1",
			"targetSymbol": "5794691c-ad57-4788-b2e3-d6046ca81d0c",
			"object": "e97c89fc-6599-4ab0-9270-49d6c9cf3070"
		},
		"47f553ed-86d7-4052-ab29-3886ecea324d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow40",
			"name": "SequenceFlow40",
			"sourceRef": "8450228d-6a45-48a6-a938-2c4f8cef53da",
			"targetRef": "8361c1b0-d2dd-44ce-8f13-fca3816bf2ca"
		},
		"234b5f0d-b72c-473c-862c-e8e0f7314b08": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1010,123.25 1088.5,123.25",
			"sourceSymbol": "c21fb563-b7d7-4bf9-9197-e3e8b6ba5142",
			"targetSymbol": "62e6f37d-8940-454f-9929-1ed46c71ddc7",
			"object": "47f553ed-86d7-4052-ab29-3886ecea324d"
		},
		"758d0090-7ba8-4601-a903-64dbe4e3c799": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "SequenceFlow41",
			"sourceRef": "8361c1b0-d2dd-44ce-8f13-fca3816bf2ca",
			"targetRef": "0ad47f90-307d-42fd-beff-43149df35856"
		},
		"d0df5edb-3cef-4802-a0f2-d9ff7b5529ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1154,126.5 1271,126.5",
			"sourceSymbol": "62e6f37d-8940-454f-9929-1ed46c71ddc7",
			"targetSymbol": "657f7210-6898-47dc-840c-2d185c7c3c5a",
			"object": "758d0090-7ba8-4601-a903-64dbe4e3c799"
		},
		"0ad47f90-307d-42fd-beff-43149df35856": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Decision coming from app or my inbox "
		},
		"657f7210-6898-47dc-840c-2d185c7c3c5a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1250,
			"y": 109,
			"object": "0ad47f90-307d-42fd-beff-43149df35856"
		},
		"57c9ad3a-e298-48ff-91f2-9ad82a0cc9ab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "0ad47f90-307d-42fd-beff-43149df35856",
			"targetRef": "a2d9ec19-35bb-462e-b7cf-002b0c21e36b"
		},
		"4e17546f-20d2-4975-8f4d-5af5e6f26df7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1271,128.25 1363.5,128.25",
			"sourceSymbol": "657f7210-6898-47dc-840c-2d185c7c3c5a",
			"targetSymbol": "bda659ba-2a63-4b2a-be90-b62046854080",
			"object": "57c9ad3a-e298-48ff-91f2-9ad82a0cc9ab"
		},
		"39c15fae-c76a-490d-833f-7caa8a596cf0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow43",
			"name": "SequenceFlow43",
			"sourceRef": "d20fca06-1677-4865-bd81-fe02d4748229",
			"targetRef": "31b70389-0005-47d3-a627-3e5eb29eeaad"
		},
		"829f596f-4b6f-47ab-9784-494507f0f7d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "885,119 885,-28 1080,-28",
			"sourceSymbol": "5794691c-ad57-4788-b2e3-d6046ca81d0c",
			"targetSymbol": "9a1821dd-76a8-496c-82de-2dc54c026ca0",
			"object": "39c15fae-c76a-490d-833f-7caa8a596cf0"
		},
		"31b70389-0005-47d3-a627-3e5eb29eeaad": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatemessageevent2",
			"name": "Api call from request app to complete",
			"eventDefinitions": {
				"e0bcd089-74f7-4407-8abd-ba17dd211975": {}
			}
		},
		"e0bcd089-74f7-4407-8abd-ba17dd211975": {
			"classDefinition": "com.sap.bpm.wfs.MessageEventDefinition",
			"id": "messageeventdefinition2"
		},
		"9a1821dd-76a8-496c-82de-2dc54c026ca0": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 1064,
			"y": -44,
			"width": 32,
			"height": 32,
			"object": "31b70389-0005-47d3-a627-3e5eb29eeaad"
		},
		"6e2266f0-c85b-4c55-b16b-ef4566d8406b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow44",
			"name": "SequenceFlow44",
			"sourceRef": "31b70389-0005-47d3-a627-3e5eb29eeaad",
			"targetRef": "0ad47f90-307d-42fd-beff-43149df35856"
		},
		"b7826a1e-44fc-4514-85dc-d0bebdd2554b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1080,-28 1269,-28 1269,130",
			"sourceSymbol": "9a1821dd-76a8-496c-82de-2dc54c026ca0",
			"targetSymbol": "657f7210-6898-47dc-840c-2d185c7c3c5a",
			"object": "6e2266f0-c85b-4c55-b16b-ef4566d8406b"
		}
	}
}