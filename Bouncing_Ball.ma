//Maya ASCII 2020 scene
//Name: Bouncing_Ball.ma
//Last modified: Fri, Sep 03, 2021 01:54:46 AM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "UUID" "DBC3C812-4900-8788-4953-22AA7F69A4B9";
createNode transform -s -n "persp";
	rename -uid "E31FE4CC-4596-9F65-16F4-A3B7E129F19B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.114590682769368 15.311248374754479 -2.6119684029089569 ;
	setAttr ".r" -type "double3" -11.138352729589643 95.799999999940439 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "80BC286E-48C0-95CA-F2B6-E6A1EFF2E1DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 50.363259958502873;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FDD905BE-43EC-4B93-4AF2-B5A736A3B05B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8E6BF14A-404F-2B8F-08D4-1DA0B1368CFF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "94A4616A-49F7-4026-97CC-0FB795254810";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1E1F86BE-4AD9-B52E-A1DD-87A136ED813C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "DFC03F9B-48AF-1239-8651-B29C9657679C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 5.1463658016635634 0.92455479148898245 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "21A04BC0-4081-8F0C-937A-0EBFB57CE24C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 67.071014235716632;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Bloop_ultimate_ball_rig:BALL_RIG";
	rename -uid "CA00DF8A-4362-770B-1BB6-A9A698F17C81";
createNode transform -n "Bloop_ultimate_ball_rig:GEO" -p "Bloop_ultimate_ball_rig:BALL_RIG";
	rename -uid "80C31E3D-4103-8A4F-0998-B4B2AE8A9835";
createNode transform -n "Bloop_ultimate_ball_rig:rotate_geo" -p "Bloop_ultimate_ball_rig:GEO";
	rename -uid "AE3C36FE-46C3-E6F7-3B85-90A37202331E";
createNode transform -n "Bloop_ultimate_ball_rig:ball_model_001:Ball_mesh" -p "Bloop_ultimate_ball_rig:rotate_geo";
	rename -uid "F334A52F-4B08-0196-2615-FB93C11A84D0";
createNode mesh -n "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShape" -p "Bloop_ultimate_ball_rig:ball_model_001:Ball_mesh";
	rename -uid "E25786E9-4710-A32F-20B3-5DB7E879FB84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
createNode mesh -n "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed" 
		-p "Bloop_ultimate_ball_rig:ball_model_001:Ball_mesh";
	rename -uid "A1D3CE94-48A3-FD2E-A4D7-0889900B7D45";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
createNode orientConstraint -n "Bloop_ultimate_ball_rig:GEO_orientConstraint1" -p
		 "Bloop_ultimate_ball_rig:GEO";
	rename -uid "4BFE87DE-4539-05F0-630A-128625896DDB";
	addAttr -ci true -k true -sn "w0" -ln "ball_real_rotate_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -747.05036900891412 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Bloop_ultimate_ball_rig:CTRL" -p "Bloop_ultimate_ball_rig:BALL_RIG";
	rename -uid "5FE684DB-46F5-D642-1175-BBBADDE2404B";
createNode transform -n "Bloop_ultimate_ball_rig:ball_placement_ctrl" -p "Bloop_ultimate_ball_rig:CTRL";
	rename -uid "05261AF0-48CF-228B-D8D4-4D93FE5DC378";
createNode nurbsCurve -n "Bloop_ultimate_ball_rig:ball_placement_ctrlShape" -p "Bloop_ultimate_ball_rig:ball_placement_ctrl";
	rename -uid "AC1440B6-43CD-7006-2E73-6D856B898466";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9460457917458629 1.1916093749278722e-16 -1.9460457917458589
		-2.1456153969613992e-16 1.1515759933753766e-16 -1.8806663181207
		-1.9460457917458605 1.1916093749278732e-16 -1.9460457917458605
		-1.8806663181207 3.3369791272355661e-32 -5.4497004843501026e-16
		-1.9460457917458616 -1.1916093749278725e-16 1.94604579174586
		-5.6668146495620097e-16 -1.1515759933753768e-16 1.8806663181207008
		1.9460457917458589 -1.1916093749278732e-16 1.9460457917458616
		1.8806663181207 -6.185137124608954e-32 1.0101095481432341e-15
		1.9460457917458629 1.1916093749278722e-16 -1.9460457917458589
		-2.1456153969613992e-16 1.1515759933753766e-16 -1.8806663181207
		-1.9460457917458605 1.1916093749278732e-16 -1.9460457917458605
		;
createNode transform -n "Bloop_ultimate_ball_rig:ball_move_ctrl" -p "Bloop_ultimate_ball_rig:ball_placement_ctrl";
	rename -uid "2B2CF12E-400D-1AF5-E071-3AA002558166";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Bloop_ultimate_ball_rig:ball_move_ctrlShape" -p "Bloop_ultimate_ball_rig:ball_move_ctrl";
	rename -uid "4EE09F3E-477F-6500-29ED-66B0D4F8708C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.97454455268509921 5.9673643353614689e-17 -0.97454455268509765
		-1.5723775213568042e-16 8.4391275746897049e-17 -1.3782141235440872
		-0.97454455268509788 5.9673643353614726e-17 -0.97454455268509788
		-1.3782141235440872 2.4454480408431031e-32 -3.9937197280811414e-16
		-0.97454455268509843 -5.9673643353614702e-17 0.97454455268509788
		-4.1528281281377495e-16 -8.4391275746897049e-17 1.3782141235440877
		0.97454455268509765 -5.9673643353614739e-17 0.97454455268509821
		1.3782141235440872 -4.5326718828628651e-32 7.402414942853217e-16
		0.97454455268509921 5.9673643353614689e-17 -0.97454455268509765
		-1.5723775213568042e-16 8.4391275746897049e-17 -1.3782141235440872
		-0.97454455268509788 5.9673643353614726e-17 -0.97454455268509788
		;
createNode transform -n "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrl" -p "Bloop_ultimate_ball_rig:ball_move_ctrl";
	rename -uid "851DD3C3-4B36-F14B-7FB1-9CAE39F4D08F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrlShape" -p
		 "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrl";
	rename -uid "87CD5F52-49E2-8DA4-7488-9C96C682BEB1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.866826849696539 0.86682684969653756 -1.3939638903448478e-16
		-1.3985805467959815e-16 1.2258782870699887 -1.9713626391840474e-16
		-0.86682684969653812 0.86682684969653812 -1.3939638903448483e-16
		-1.2258782870699887 3.5522885853963768e-16 -5.7125157323636913e-32
		-0.86682684969653845 -0.86682684969653789 1.3939638903448478e-16
		-3.693810522799161e-16 -1.2258782870699891 1.9713626391840476e-16
		0.86682684969653756 -0.86682684969653823 1.3939638903448483e-16
		1.2258782870699887 -6.5842161934831664e-16 1.0588227191107976e-31
		0.866826849696539 0.86682684969653756 -1.3939638903448478e-16
		-1.3985805467959815e-16 1.2258782870699887 -1.9713626391840474e-16
		-0.86682684969653812 0.86682684969653812 -1.3939638903448483e-16
		;
createNode transform -n "Bloop_ultimate_ball_rig:ball_top_ctrl" -p "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrl";
	rename -uid "7A35F6D4-46FB-4D4B-B6AC-6E9C01765D88";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".rp" -type "double3" 0 0.99999999999999989 -2.4651903288156619e-32 ;
	setAttr ".sp" -type "double3" 0 0.99999999999999989 -3.6977854932234928e-32 ;
createNode nurbsCurve -n "Bloop_ultimate_ball_rig:ball_top_ctrlShape" -p "Bloop_ultimate_ball_rig:ball_top_ctrl";
	rename -uid "1AB0CDB7-477B-ECDE-642D-75A458E7ABBC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[1:10]" -type "double3" 0 -0.19841426301760812 0 
		0 0 0 0 -0.19841426301760823 0 0 0 0 0 -0.19841426301760823 0 0 0 0 0 -0.19841426301760823 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "Bloop_ultimate_ball_rig:locator1" -p "Bloop_ultimate_ball_rig:ball_top_ctrl";
	rename -uid "366380A1-4BA8-F7CC-4093-D08277ED664E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.99999999999999989 -3.6977854932234928e-32 ;
createNode locator -n "Bloop_ultimate_ball_rig:locatorShape1" -p "Bloop_ultimate_ball_rig:locator1";
	rename -uid "EE3E146E-41BE-8D8F-1CEB-E7904E2296CC";
	setAttr -k off ".v";
createNode transform -n "Bloop_ultimate_ball_rig:cluster1Handle" -p "Bloop_ultimate_ball_rig:locator1";
	rename -uid "CC8D4F9E-404B-1EBF-3881-338879C0D94B";
	setAttr ".t" -type "double3" 0 -1 0 ;
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
createNode clusterHandle -n "Bloop_ultimate_ball_rig:cluster1HandleShape" -p "Bloop_ultimate_ball_rig:cluster1Handle";
	rename -uid "0DF1287E-4632-F9F7-C782-139F156AE961";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 1 0 ;
createNode transform -n "Bloop_ultimate_ball_rig:ball_bottom_ctrl" -p "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrl";
	rename -uid "6243D1FB-49DB-85FD-8D48-B3BFAE9B9F0D";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".rp" -type "double3" 0 -1 0 ;
	setAttr ".sp" -type "double3" 0 -1 0 ;
createNode nurbsCurve -n "Bloop_ultimate_ball_rig:ball_bottom_ctrlShape" -p "Bloop_ultimate_ball_rig:ball_bottom_ctrl";
	rename -uid "13E316AD-444F-3E2F-1927-01B318B8A6C8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.44227347083175439 -1.0992071315088039 -0.44227347083175383
		8.3507919803344599e-17 -0.900792868491196 -0.62546914072808824
		0.44227347083175406 -1.0992071315088039 -0.44227347083175406
		0.62546914072808812 -0.900792868491196 -2.4390673141246388e-16
		0.44227347083175417 -1.0992071315088039 0.44227347083175383
		2.0061542843663004e-16 -0.90079286849119589 0.62546914072808812
		-0.44227347083175378 -1.0992071315088039 0.44227347083175406
		-0.62546914072808812 -0.90079286849119589 2.7327927317740088e-16
		-0.44227347083175439 -1.0992071315088039 -0.44227347083175383
		8.3507919803344599e-17 -0.900792868491196 -0.62546914072808824
		0.44227347083175406 -1.0992071315088039 -0.44227347083175406
		;
createNode transform -n "Bloop_ultimate_ball_rig:locator2" -p "Bloop_ultimate_ball_rig:ball_bottom_ctrl";
	rename -uid "A4DB8B62-44B1-AF40-FFB6-92BD27AE3347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1 0 ;
createNode locator -n "Bloop_ultimate_ball_rig:locatorShape2" -p "Bloop_ultimate_ball_rig:locator2";
	rename -uid "20FDB591-417B-B109-1ACA-49BA212A0C14";
	setAttr -k off ".v";
createNode transform -n "Bloop_ultimate_ball_rig:cluster2Handle" -p "Bloop_ultimate_ball_rig:locator2";
	rename -uid "83F76DF0-409B-39F2-29F1-C8BDF1374AC6";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".rp" -type "double3" 0 -1 0 ;
	setAttr ".sp" -type "double3" 0 -1 0 ;
createNode clusterHandle -n "Bloop_ultimate_ball_rig:cluster2HandleShape" -p "Bloop_ultimate_ball_rig:cluster2Handle";
	rename -uid "02CAC79B-4F05-6893-F98A-22AC44550E7B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 -1 0 ;
createNode transform -n "Bloop_ultimate_ball_rig:ball_rotate_ctrl" -p "Bloop_ultimate_ball_rig:ball_placement_ctrl";
	rename -uid "88217DF2-4B78-BBD2-B455-4392DB072F8C";
createNode nurbsCurve -n "Bloop_ultimate_ball_rig:ball_rotate_ctrlShape" -p "Bloop_ultimate_ball_rig:ball_rotate_ctrl";
	rename -uid "30BBD973-4BDB-8D03-349C-0B9601FFDD7E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.76073886543995117 4.6581820827401188e-17 -0.76073886543995006
		-1.5609643481854931e-16 8.3778717864858571e-17 -1.3682102941548313
		-0.76073886543995051 4.6581820827401212e-17 -0.76073886543995051
		-1.3682102941548313 2.6380979175768661e-32 -4.3437545672837787e-16
		-0.76073886543995073 -4.6581820827401188e-17 0.76073886543995028
		-4.1226846378287368e-16 -8.3778717864858571e-17 1.3682102941548313
		0.76073886543995006 -4.6581820827401225e-17 0.76073886543995051
		1.3682102941548313 -4.2893710078683886e-32 6.969660746043181e-16
		0.76073886543995117 4.6581820827401188e-17 -0.76073886543995006
		-1.5609643481854931e-16 8.3778717864858571e-17 -1.3682102941548313
		-0.76073886543995051 4.6581820827401212e-17 -0.76073886543995051
		;
createNode pointConstraint -n "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1" 
		-p "Bloop_ultimate_ball_rig:ball_rotate_ctrl";
	rename -uid "0D16EF54-4DA3-343B-CB1E-D2BD9F151ABA";
	addAttr -ci true -k true -sn "w0" -ln "ball_move_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Bloop_ultimate_ball_rig:RIG" -p "Bloop_ultimate_ball_rig:BALL_RIG";
	rename -uid "81C8E790-47E8-8143-2E18-4E93D091AF48";
createNode transform -n "Bloop_ultimate_ball_rig:ffd1Lattice" -p "Bloop_ultimate_ball_rig:RIG";
	rename -uid "512D791F-4024-D06C-0634-068D13168E7D";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode lattice -n "Bloop_ultimate_ball_rig:ffd1LatticeShape" -p "Bloop_ultimate_ball_rig:ffd1Lattice";
	rename -uid "2A4364AC-4D10-2518-CF46-24BAAE530E25";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".td" 2;
createNode lattice -n "Bloop_ultimate_ball_rig:ffd1LatticeShapeOrig" -p "Bloop_ultimate_ball_rig:ffd1Lattice";
	rename -uid "ABB5F580-4BC3-D390-7AA6-70AE45455ED3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".td" 2;
	setAttr ".cc" -type "lattice" 2 2 2 8 -0.5 -0.5 -0.5 0.5 -0.5
		 -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5 ;
createNode transform -n "Bloop_ultimate_ball_rig:ffd1Base" -p "Bloop_ultimate_ball_rig:RIG";
	rename -uid "35AAE924-42F2-DFA0-E19F-2BB127AA069B";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode baseLattice -n "Bloop_ultimate_ball_rig:ffd1BaseShape" -p "Bloop_ultimate_ball_rig:ffd1Base";
	rename -uid "B21C6222-40F8-BAEA-3E17-06ABCA369C19";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "Bloop_ultimate_ball_rig:distanceDimension1" -p "Bloop_ultimate_ball_rig:RIG";
	rename -uid "7AA7FBF8-4DFE-F462-FBAB-09952D8D3528";
	setAttr ".v" no;
createNode distanceDimShape -n "Bloop_ultimate_ball_rig:distanceDimensionShape1" 
		-p "Bloop_ultimate_ball_rig:distanceDimension1";
	rename -uid "1D4ED6EA-468B-885A-570C-06B2CDB57571";
	setAttr -k off ".v";
createNode transform -n "motionTrail1Handle";
	rename -uid "8E224553-431D-2B49-E4BB-1A8452BC7378";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail1HandleShape" -p "motionTrail1Handle";
	rename -uid "EDE2AD1F-4D14-44F8-A5DE-C3997C83DF25";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail2Handle";
	rename -uid "77E232C1-4DEF-3F16-FB6D-81907EB0710E";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail2HandleShape" -p "motionTrail2Handle";
	rename -uid "60660F30-4956-C998-253B-A48DB80B3C37";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail3Handle";
	rename -uid "65B2DEFE-4C42-6EC6-ABF7-9C869DC895F6";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail3HandleShape" -p "motionTrail3Handle";
	rename -uid "5A49F793-43F4-84B2-40B0-B5BAC9910459";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail4Handle";
	rename -uid "5E5ACE17-4F74-D455-A142-9B81B1293E84";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail4HandleShape" -p "motionTrail4Handle";
	rename -uid "AFA0FB4B-43C4-85A0-D8A3-4C8988F66FE4";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail5Handle";
	rename -uid "1C3EF8C6-439C-FA7F-B40E-9FB79857F660";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail5HandleShape" -p "motionTrail5Handle";
	rename -uid "460E4A82-4DF5-B582-3843-57910D3EA6B7";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail6Handle";
	rename -uid "BE5A8BB4-44E2-780C-AA64-E5AD0D5616A9";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail6HandleShape" -p "motionTrail6Handle";
	rename -uid "71E2E311-4396-58F4-9028-DB8EA14BE5D2";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail7Handle";
	rename -uid "4BAF33B6-489E-59E1-9DB8-76B4CD22B45B";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail7HandleShape" -p "motionTrail7Handle";
	rename -uid "EAC3AD1E-46E9-34F3-E38C-5AB72C9AD127";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode transform -n "motionTrail8Handle";
	rename -uid "2F867E9A-4C77-8DFB-4517-D08B11683376";
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".r";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode motionTrailShape -n "motionTrail8HandleShape" -p "motionTrail8Handle";
	rename -uid "396B5A40-4A36-8057-CF7D-03B5782822B3";
	setAttr -k off ".v";
	setAttr ".sf" yes;
instanceable -a 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5EA13F75-4C2F-A3C3-547D-738BF97E31FA";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "98C10E23-4D9C-39D4-5775-958547DCF372";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A2A4EBD1-4C1E-8011-049D-BA8330EDEC83";
createNode displayLayerManager -n "layerManager";
	rename -uid "9C0C8BA9-4EC0-6D13-D549-DB9F847DB565";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "887EF64E-4F0B-8BE3-B179-ADACE78B371D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "57F74C4F-457F-3AD6-1A7C-E79530B13991";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "07DB4267-48F9-74C5-63D5-DBBECE2A567D";
	setAttr ".g" yes;
createNode script -n "Bloop_ultimate_ball_rig:uiConfigurationScriptNode";
	rename -uid "738A4FA4-4BBE-E983-EC17-CFA7BEE0043B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 716\n            -height 181\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 716\n            -height 181\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 716\n            -height 181\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1439\n            -height 406\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n"
		+ "                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1439\\n    -height 406\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1439\\n    -height 406\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "Bloop_ultimate_ball_rig:sceneConfigurationScriptNode";
	rename -uid "89E114A2-4C9F-141C-22CD-3398AC8210E5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 64 -ast 1 -aet 64 ";
	setAttr ".st" 6;
createNode ffd -n "Bloop_ultimate_ball_rig:ffd1";
	rename -uid "0BDB2453-4E63-1FEF-434E-3297A3FF563D";
	setAttr ".lo" yes;
	setAttr ".ot" 1;
createNode tweak -n "Bloop_ultimate_ball_rig:tweak1";
	rename -uid "F135E950-492F-0353-2EEF-58B7EDC24419";
createNode objectSet -n "Bloop_ultimate_ball_rig:ffd1Set";
	rename -uid "7D5824BC-475C-6A8D-CB69-7BAAA21820BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Bloop_ultimate_ball_rig:ffd1GroupId";
	rename -uid "583ABC97-4738-0AC2-E948-3CBA375ED7B0";
	setAttr ".ihi" 0;
createNode groupParts -n "Bloop_ultimate_ball_rig:ffd1GroupParts";
	rename -uid "D437A5D5-4F8E-0228-5A00-62A6A117F93D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "Bloop_ultimate_ball_rig:tweakSet1";
	rename -uid "51B7EE84-4FA5-E693-CD5C-E7A6EA12A628";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Bloop_ultimate_ball_rig:groupId3";
	rename -uid "EBE9A432-4444-54A0-1E03-FB9635851C29";
	setAttr ".ihi" 0;
createNode groupParts -n "Bloop_ultimate_ball_rig:groupParts3";
	rename -uid "05E0B716-4DFB-25EA-5A56-4BAA48E7A177";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode cluster -n "Bloop_ultimate_ball_rig:cluster1";
	rename -uid "2E265E97-418F-5695-2864-EAA1A55DAE3F";
	setAttr ".gm[0]" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 0 0 1;
	setAttr ".ait" 0;
createNode tweak -n "Bloop_ultimate_ball_rig:tweak3";
	rename -uid "ED8756AE-446C-CA5E-4410-8CAEDAAEDDAE";
createNode objectSet -n "Bloop_ultimate_ball_rig:cluster1Set";
	rename -uid "1B1B9F35-4DAA-0993-AC0D-9D9F36C368AB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Bloop_ultimate_ball_rig:cluster1GroupId";
	rename -uid "33D58EBE-4EF1-BE34-DE61-E28F33F57B9D";
	setAttr ".ihi" 0;
createNode groupParts -n "Bloop_ultimate_ball_rig:cluster1GroupParts";
	rename -uid "1733D695-4B01-BBD7-247E-9FB9BABD5345";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "pt[0:1][1][0]" "pt[0:1][1][1]";
createNode objectSet -n "Bloop_ultimate_ball_rig:tweakSet3";
	rename -uid "C5E9FFAD-43EA-54D3-C2E4-0D9AF3181B02";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Bloop_ultimate_ball_rig:groupId6";
	rename -uid "EEB0245A-412C-8411-1F1F-61B32C19BE3A";
	setAttr ".ihi" 0;
createNode groupParts -n "Bloop_ultimate_ball_rig:groupParts6";
	rename -uid "3BF8060C-4CB3-B82E-6F28-629CC264412F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[*][*][*]";
createNode cluster -n "Bloop_ultimate_ball_rig:cluster2";
	rename -uid "91ECCBBE-4E04-98FE-C22E-1F8DAC891C35";
	setAttr ".gm[0]" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "Bloop_ultimate_ball_rig:cluster2Set";
	rename -uid "E0E0BDFA-4348-6DF0-0A02-8D8101A741DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Bloop_ultimate_ball_rig:cluster2GroupId";
	rename -uid "8F889864-4087-CCFB-1F50-DC8831FAC146";
	setAttr ".ihi" 0;
createNode groupParts -n "Bloop_ultimate_ball_rig:cluster2GroupParts";
	rename -uid "9AA8A49F-48C7-B177-2762-D8AE69579D60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "pt[0:1][0][0]" "pt[0:1][0][1]";
createNode makeNurbCircle -n "Bloop_ultimate_ball_rig:makeNurbCircle1";
	rename -uid "25588B4D-49E8-8D89-20F2-36B195C3033E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode multiplyDivide -n "Bloop_ultimate_ball_rig:multiplyDivide1";
	rename -uid "76A81CBB-4B75-7C2E-C5A1-099DF4335B96";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 2 2 2 ;
createNode multiplyDivide -n "Bloop_ultimate_ball_rig:multiplyDivide2";
	rename -uid "5A15ADAA-41B0-CE03-F48E-69AE8B7DDDB7";
	setAttr ".op" 2;
createNode transformGeometry -n "Bloop_ultimate_ball_rig:transformGeometry1";
	rename -uid "CF3360B8-407B-3F0E-F8CF-EE8C7A64B696";
	setAttr ".txf" -type "matrix" 0.56440391742931006 0 0 0 0 0.56440391742931006 0 0
		 0 0 0.56440391742931006 0 0 1.0992071315088039 -6.2661422431865597e-17 1;
createNode polySphere -n "Bloop_ultimate_ball_rig:ball_model_001:polySphere1";
	rename -uid "2B63C0F5-41BF-2317-B235-33B78B61BBEA";
createNode lambert -n "Bloop_ultimate_ball_rig:ball_model_001:ball_temp_texture";
	rename -uid "4CA00D40-45D1-C41F-07AD-D88890B2118D";
createNode shadingEngine -n "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG";
	rename -uid "C4593004-48E8-E972-78CB-83889593C927";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "Bloop_ultimate_ball_rig:ball_model_001:materialInfo1";
	rename -uid "105E4CA8-45DC-D6F1-DF22-B5ACCFBE9CF1";
createNode ramp -n "Bloop_ultimate_ball_rig:ball_model_001:ramp1";
	rename -uid "AAB6BDD1-4727-64E4-DB22-E9AD4EB7A2E4";
	setAttr ".in" 0;
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[1].ep" 0.46000000834465027;
	setAttr ".cel[1].ec" -type "float3" 0.25316456 0.25316456 0.25316456 ;
	setAttr ".cel[2].ep" 0.56000000238418579;
	setAttr ".cel[2].ec" -type "float3" 0.79746836 0.79746836 0.79746836 ;
createNode place2dTexture -n "Bloop_ultimate_ball_rig:ball_model_001:place2dTexture1";
	rename -uid "F85C5641-4BA9-CBCC-01CA-06B723FB0B68";
createNode displayLayer -n "Ball";
	rename -uid "C0BFC5B9-4883-0843-62A1-F59846AE9664";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode animCurveTL -n "ball_placement_ctrl_translateX";
	rename -uid "2480E827-48C7-36AA-D169-FB9B92E27607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 7 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0
		 24 0 26 0 27 0 29 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 51 0 52 0 53 0 54 0;
createNode animCurveTL -n "ball_placement_ctrl_translateY";
	rename -uid "7D8DD7A4-4DFC-55BE-D816-258465EDD3CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 9.6463546065519026 7 6.596389769536553
		 10 1 12 4.816266951918716 14 6 16 5.0268064539686792 18 1 20 3.5 22 4.329857270527361
		 24 3.5 26 1 27 2.1112576115828725 29 3 31 2.1112576115828681 32 1 33 1.721918 34 1.9881426558935194
		 35 1.721918 36 1 37 1.5007318964630203 38 1 39 1.2716907075642423 40 1 41 1.1313549360856787
		 42 1 43 1 44 1 45 1 46 1 47 1 51 1 52 1 53 1 54 1;
	setAttr -s 34 ".kit[2:33]"  2 18 18 18 2 18 18 18 
		2 18 18 18 2 18 18 18 2 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 34 ".kot[2:33]"  2 18 18 18 2 18 18 18 
		2 18 18 18 2 18 18 18 2 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTL -n "ball_placement_ctrl_translateZ";
	rename -uid "EF1A65A2-4055-F730-C822-F9B630360D02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 11.674731825443834 42 -19.342141992196346
		 51 -22.610182711286743 64 -23.749347231360272;
	setAttr -s 4 ".kit[0:3]"  2 18 18 1;
	setAttr -s 4 ".kot[0:3]"  2 18 18 1;
	setAttr -s 4 ".ktl[1:3]" no no yes;
	setAttr -s 4 ".kix[3]"  0.52120963012074895;
	setAttr -s 4 ".kiy[3]"  -0.85342868563775853;
	setAttr -s 4 ".kox[3]"  0.52120992013194023;
	setAttr -s 4 ".koy[3]"  -0.85342850852081131;
createNode motionTrail -n "motionTrail1";
	rename -uid "1E3DFE2F-458A-3456-D10D-A6B3EF049CD7";
	setAttr ".s" 1;
	setAttr ".e" 24;
createNode motionTrail -n "motionTrail2";
	rename -uid "0E70DB4D-454A-7D64-0BE4-349348757983";
	setAttr ".s" 1;
	setAttr ".e" 36;
createNode motionTrail -n "motionTrail3";
	rename -uid "763BFACF-4C77-871F-1639-02AE959F23A3";
	setAttr ".s" 1;
	setAttr ".e" 36;
createNode motionTrail -n "motionTrail4";
	rename -uid "A9D365BC-46D7-50C4-226E-D6B6B21BE535";
	setAttr ".s" 1;
	setAttr ".e" 36;
createNode motionTrail -n "motionTrail5";
	rename -uid "EFBCF990-432E-1305-3271-36AC993F08F4";
	setAttr ".s" 1;
	setAttr ".e" 48;
createNode motionTrail -n "motionTrail6";
	rename -uid "882A3EE2-44A0-7460-E34C-31878EF5AD79";
	setAttr ".s" 1;
	setAttr ".e" 48;
createNode animCurveTA -n "ball_placement_ctrl_rotateY";
	rename -uid "BE636C51-483A-3EDF-2B24-89936D315B7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 18 0 26 0 32 0 40 0 43 0 48 0 53 0;
createNode animCurveTA -n "ball_placement_ctrl_rotateZ";
	rename -uid "E56626DA-4A08-9311-9F4D-69BB1B059302";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 18 0 26 0 32 0 40 0 43 0 48 0 53 0;
createNode motionTrail -n "motionTrail7";
	rename -uid "1E0CA93B-4762-1DDF-75CD-3D8E60A686B4";
	setAttr ".s" 1;
	setAttr ".e" 48;
createNode motionTrail -n "motionTrail8";
	rename -uid "84A5E8B9-48D0-8C84-6ED5-BC88A8C2D9BE";
	setAttr ".s" 1;
	setAttr ".e" 64;
createNode animCurveTA -n "ball_rotate_ctrl_rotateX";
	rename -uid "7A489924-4A0D-A0E3-058E-AAAE330F0341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 14 -1048.9892682926825 26 -1745.7000195121961
		 36 -2090.0637268292662 46 -2357.4276292682889 64 -2470.6451902438966;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 1;
	setAttr -s 6 ".kix[5]"  0.81822050071962626;
	setAttr -s 6 ".kiy[5]"  -0.57490452442307693;
	setAttr -s 6 ".kox[5]"  0.81822051288257536;
	setAttr -s 6 ".koy[5]"  -0.57490450711242058;
createNode animCurveTA -n "ball_rotate_ctrl_rotateY";
	rename -uid "50121C7A-45FA-818F-75BC-B089493C38F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 18 0 26 0 32 0 40 0 64 0;
createNode animCurveTA -n "ball_rotate_ctrl_rotateZ";
	rename -uid "1BE0E553-47D5-9B5E-76E4-218B07BD542E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 18 0 26 0 32 0 40 0 64 0;
createNode animCurveTL -n "ball_top_ctrl_translateX";
	rename -uid "86231AC5-4EF1-FB49-64C1-22A778169363";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 9 0 10 0 11 0;
createNode animCurveTL -n "ball_top_ctrl_translateY";
	rename -uid "A523AED3-4861-6418-968B-F584F4719AE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 9 0.3628477038013882 10 -0.64173056605027545
		 11 0;
createNode animCurveTL -n "ball_top_ctrl_translateZ";
	rename -uid "4F445011-45A9-2CDD-4DDD-51AFCAD60982";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 9 0.2902781630411102 10 0 11 0;
createNode animCurveTL -n "ball_bottom_ctrl_translateX";
	rename -uid "811A89AA-4647-362E-4882-7999D24DA536";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 11 0 12 0;
createNode animCurveTL -n "ball_bottom_ctrl_translateY";
	rename -uid "A5D47767-47F8-2D54-AEEF-2EA461F9683C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 11 -0.50798678532194419 12 0;
createNode animCurveTL -n "ball_bottom_ctrl_translateZ";
	rename -uid "6857BBAA-4201-4C1D-A9F8-01A2037ABCED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 11 0.34470531861131759 12 0;
select -ne :time1;
	setAttr ".o" 25;
	setAttr ".unw" 25;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Bloop_ultimate_ball_rig:GEO_orientConstraint1.crx" "Bloop_ultimate_ball_rig:GEO.rx"
		;
connectAttr "Bloop_ultimate_ball_rig:GEO_orientConstraint1.cry" "Bloop_ultimate_ball_rig:GEO.ry"
		;
connectAttr "Bloop_ultimate_ball_rig:GEO_orientConstraint1.crz" "Bloop_ultimate_ball_rig:GEO.rz"
		;
connectAttr "Ball.di" "Bloop_ultimate_ball_rig:ball_model_001:Ball_mesh.do";
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:polySphere1.out" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShape.i"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1GroupId.id" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog.og[0].gid"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1Set.mwc" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog.og[0].gco"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId3.id" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog.og[1].gid"
		;
connectAttr "Bloop_ultimate_ball_rig:tweakSet1.mwc" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog.og[1].gco"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1.og[0]" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.i"
		;
connectAttr "Bloop_ultimate_ball_rig:tweak1.vl[0].vt[0]" "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.twl"
		;
connectAttr "Bloop_ultimate_ball_rig:GEO.ro" "Bloop_ultimate_ball_rig:GEO_orientConstraint1.cro"
		;
connectAttr "Bloop_ultimate_ball_rig:GEO.pim" "Bloop_ultimate_ball_rig:GEO_orientConstraint1.cpim"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_rotate_ctrl.r" "Bloop_ultimate_ball_rig:GEO_orientConstraint1.tg[0].tr"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_rotate_ctrl.ro" "Bloop_ultimate_ball_rig:GEO_orientConstraint1.tg[0].tro"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_rotate_ctrl.pm" "Bloop_ultimate_ball_rig:GEO_orientConstraint1.tg[0].tpm"
		;
connectAttr "Bloop_ultimate_ball_rig:GEO_orientConstraint1.w0" "Bloop_ultimate_ball_rig:GEO_orientConstraint1.tg[0].tw"
		;
connectAttr "ball_placement_ctrl_translateX.o" "Bloop_ultimate_ball_rig:ball_placement_ctrl.tx"
		;
connectAttr "ball_placement_ctrl_translateY.o" "Bloop_ultimate_ball_rig:ball_placement_ctrl.ty"
		;
connectAttr "ball_placement_ctrl_translateZ.o" "Bloop_ultimate_ball_rig:ball_placement_ctrl.tz"
		;
connectAttr "ball_placement_ctrl_rotateY.o" "Bloop_ultimate_ball_rig:ball_placement_ctrl.ry"
		;
connectAttr "ball_placement_ctrl_rotateZ.o" "Bloop_ultimate_ball_rig:ball_placement_ctrl.rz"
		;
connectAttr "ball_top_ctrl_translateX.o" "Bloop_ultimate_ball_rig:ball_top_ctrl.tx"
		;
connectAttr "ball_top_ctrl_translateY.o" "Bloop_ultimate_ball_rig:ball_top_ctrl.ty"
		;
connectAttr "ball_top_ctrl_translateZ.o" "Bloop_ultimate_ball_rig:ball_top_ctrl.tz"
		;
connectAttr "Bloop_ultimate_ball_rig:transformGeometry1.og" "Bloop_ultimate_ball_rig:ball_top_ctrlShape.cr"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide1.ox" "Bloop_ultimate_ball_rig:cluster1Handle.sx"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide1.oz" "Bloop_ultimate_ball_rig:cluster1Handle.sz"
		;
connectAttr "ball_bottom_ctrl_translateX.o" "Bloop_ultimate_ball_rig:ball_bottom_ctrl.tx"
		;
connectAttr "ball_bottom_ctrl_translateY.o" "Bloop_ultimate_ball_rig:ball_bottom_ctrl.ty"
		;
connectAttr "ball_bottom_ctrl_translateZ.o" "Bloop_ultimate_ball_rig:ball_bottom_ctrl.tz"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide1.ox" "Bloop_ultimate_ball_rig:cluster2Handle.sx"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide1.oz" "Bloop_ultimate_ball_rig:cluster2Handle.sz"
		;
connectAttr "ball_rotate_ctrl_rotateX.o" "Bloop_ultimate_ball_rig:ball_rotate_ctrl.rx"
		;
connectAttr "ball_rotate_ctrl_rotateY.o" "Bloop_ultimate_ball_rig:ball_rotate_ctrl.ry"
		;
connectAttr "ball_rotate_ctrl_rotateZ.o" "Bloop_ultimate_ball_rig:ball_rotate_ctrl.rz"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.ctx" "Bloop_ultimate_ball_rig:ball_rotate_ctrl.tx"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.cty" "Bloop_ultimate_ball_rig:ball_rotate_ctrl.ty"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.ctz" "Bloop_ultimate_ball_rig:ball_rotate_ctrl.tz"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_rotate_ctrl.pim" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.cpim"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_rotate_ctrl.rp" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.crp"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_rotate_ctrl.rpt" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.crt"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_move_ctrl.t" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.tg[0].tt"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_move_ctrl.rp" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.tg[0].trp"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_move_ctrl.rpt" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.tg[0].trt"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_move_ctrl.pm" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.tg[0].tpm"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.w0" "Bloop_ultimate_ball_rig:ball_real_rotate_ctrl_pointConstraint1.tg[0].tw"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2.og[0]" "Bloop_ultimate_ball_rig:ffd1LatticeShape.li"
		;
connectAttr "Bloop_ultimate_ball_rig:tweak3.pl[0].cp[0]" "Bloop_ultimate_ball_rig:ffd1LatticeShape.twl"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1GroupId.id" "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[0].gid"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1Set.mwc" "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[0].gco"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId6.id" "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[1].gid"
		;
connectAttr "Bloop_ultimate_ball_rig:tweakSet3.mwc" "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[1].gco"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2GroupId.id" "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[2].gid"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2Set.mwc" "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[2].gco"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrl.r" "Bloop_ultimate_ball_rig:ffd1Base.r"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_deform_rotate_ctrl.ro" "Bloop_ultimate_ball_rig:ffd1Base.ro"
		;
connectAttr "Bloop_ultimate_ball_rig:locatorShape1.wp" "Bloop_ultimate_ball_rig:distanceDimensionShape1.sp"
		;
connectAttr "Bloop_ultimate_ball_rig:locatorShape2.wp" "Bloop_ultimate_ball_rig:distanceDimensionShape1.ep"
		;
connectAttr "motionTrail1.pts" "motionTrail1HandleShape.pts";
connectAttr "motionTrail1.lp" "motionTrail1HandleShape.lp";
connectAttr "motionTrail1.f" "motionTrail1HandleShape.f";
connectAttr "motionTrail1.kt" "motionTrail1HandleShape.kt";
connectAttr "motionTrail1.fk" "motionTrail1HandleShape.fk";
connectAttr "motionTrail1.ekt" "motionTrail1HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail1HandleShape.tr"
		;
connectAttr "motionTrail1.s" "motionTrail1HandleShape.s";
connectAttr "motionTrail1.b" "motionTrail1HandleShape.b";
connectAttr "motionTrail2.pts" "motionTrail2HandleShape.pts";
connectAttr "motionTrail2.lp" "motionTrail2HandleShape.lp";
connectAttr "motionTrail2.f" "motionTrail2HandleShape.f";
connectAttr "motionTrail2.kt" "motionTrail2HandleShape.kt";
connectAttr "motionTrail2.fk" "motionTrail2HandleShape.fk";
connectAttr "motionTrail2.ekt" "motionTrail2HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail2HandleShape.tr"
		;
connectAttr "motionTrail2.s" "motionTrail2HandleShape.s";
connectAttr "motionTrail2.b" "motionTrail2HandleShape.b";
connectAttr "motionTrail3.pts" "motionTrail3HandleShape.pts";
connectAttr "motionTrail3.lp" "motionTrail3HandleShape.lp";
connectAttr "motionTrail3.f" "motionTrail3HandleShape.f";
connectAttr "motionTrail3.kt" "motionTrail3HandleShape.kt";
connectAttr "motionTrail3.fk" "motionTrail3HandleShape.fk";
connectAttr "motionTrail3.ekt" "motionTrail3HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail3HandleShape.tr"
		;
connectAttr "motionTrail3.s" "motionTrail3HandleShape.s";
connectAttr "motionTrail3.b" "motionTrail3HandleShape.b";
connectAttr "motionTrail4.pts" "motionTrail4HandleShape.pts";
connectAttr "motionTrail4.lp" "motionTrail4HandleShape.lp";
connectAttr "motionTrail4.f" "motionTrail4HandleShape.f";
connectAttr "motionTrail4.kt" "motionTrail4HandleShape.kt";
connectAttr "motionTrail4.fk" "motionTrail4HandleShape.fk";
connectAttr "motionTrail4.ekt" "motionTrail4HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail4HandleShape.tr"
		;
connectAttr "motionTrail4.s" "motionTrail4HandleShape.s";
connectAttr "motionTrail4.b" "motionTrail4HandleShape.b";
connectAttr "motionTrail5.pts" "motionTrail5HandleShape.pts";
connectAttr "motionTrail5.lp" "motionTrail5HandleShape.lp";
connectAttr "motionTrail5.f" "motionTrail5HandleShape.f";
connectAttr "motionTrail5.kt" "motionTrail5HandleShape.kt";
connectAttr "motionTrail5.fk" "motionTrail5HandleShape.fk";
connectAttr "motionTrail5.ekt" "motionTrail5HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail5HandleShape.tr"
		;
connectAttr "motionTrail5.s" "motionTrail5HandleShape.s";
connectAttr "motionTrail5.b" "motionTrail5HandleShape.b";
connectAttr "motionTrail6.pts" "motionTrail6HandleShape.pts";
connectAttr "motionTrail6.lp" "motionTrail6HandleShape.lp";
connectAttr "motionTrail6.f" "motionTrail6HandleShape.f";
connectAttr "motionTrail6.kt" "motionTrail6HandleShape.kt";
connectAttr "motionTrail6.fk" "motionTrail6HandleShape.fk";
connectAttr "motionTrail6.ekt" "motionTrail6HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail6HandleShape.tr"
		;
connectAttr "motionTrail6.s" "motionTrail6HandleShape.s";
connectAttr "motionTrail6.b" "motionTrail6HandleShape.b";
connectAttr "motionTrail7.pts" "motionTrail7HandleShape.pts";
connectAttr "motionTrail7.lp" "motionTrail7HandleShape.lp";
connectAttr "motionTrail7.f" "motionTrail7HandleShape.f";
connectAttr "motionTrail7.kt" "motionTrail7HandleShape.kt";
connectAttr "motionTrail7.fk" "motionTrail7HandleShape.fk";
connectAttr "motionTrail7.ekt" "motionTrail7HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail7HandleShape.tr"
		;
connectAttr "motionTrail7.s" "motionTrail7HandleShape.s";
connectAttr "motionTrail7.b" "motionTrail7HandleShape.b";
connectAttr "motionTrail8.pts" "motionTrail8HandleShape.pts";
connectAttr "motionTrail8.lp" "motionTrail8HandleShape.lp";
connectAttr "motionTrail8.f" "motionTrail8HandleShape.f";
connectAttr "motionTrail8.kt" "motionTrail8HandleShape.kt";
connectAttr "motionTrail8.fk" "motionTrail8HandleShape.fk";
connectAttr "motionTrail8.ekt" "motionTrail8HandleShape.ekt";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail8HandleShape.tr"
		;
connectAttr "motionTrail8.s" "motionTrail8HandleShape.s";
connectAttr "motionTrail8.b" "motionTrail8HandleShape.b";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Bloop_ultimate_ball_rig:ffd1GroupParts.og" "Bloop_ultimate_ball_rig:ffd1.ip[0].ig"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1GroupId.id" "Bloop_ultimate_ball_rig:ffd1.ip[0].gi"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1LatticeShape.wm" "Bloop_ultimate_ball_rig:ffd1.dlm"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1LatticeShape.lo" "Bloop_ultimate_ball_rig:ffd1.dlp"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1BaseShape.wm" "Bloop_ultimate_ball_rig:ffd1.blm"
		;
connectAttr "Bloop_ultimate_ball_rig:groupParts3.og" "Bloop_ultimate_ball_rig:tweak1.ip[0].ig"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId3.id" "Bloop_ultimate_ball_rig:tweak1.ip[0].gi"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1GroupId.msg" "Bloop_ultimate_ball_rig:ffd1Set.gn"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog.og[0]" "Bloop_ultimate_ball_rig:ffd1Set.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ffd1.msg" "Bloop_ultimate_ball_rig:ffd1Set.ub[0]"
		;
connectAttr "Bloop_ultimate_ball_rig:tweak1.og[0]" "Bloop_ultimate_ball_rig:ffd1GroupParts.ig"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1GroupId.id" "Bloop_ultimate_ball_rig:ffd1GroupParts.gi"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId3.msg" "Bloop_ultimate_ball_rig:tweakSet1.gn"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog.og[1]" "Bloop_ultimate_ball_rig:tweakSet1.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:tweak1.msg" "Bloop_ultimate_ball_rig:tweakSet1.ub[0]"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShape.w" "Bloop_ultimate_ball_rig:groupParts3.ig"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId3.id" "Bloop_ultimate_ball_rig:groupParts3.gi"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1GroupParts.og" "Bloop_ultimate_ball_rig:cluster1.ip[0].ig"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1GroupId.id" "Bloop_ultimate_ball_rig:cluster1.ip[0].gi"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1Handle.wm" "Bloop_ultimate_ball_rig:cluster1.ma"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1HandleShape.x" "Bloop_ultimate_ball_rig:cluster1.x"
		;
connectAttr "Bloop_ultimate_ball_rig:groupParts6.og" "Bloop_ultimate_ball_rig:tweak3.ip[0].ig"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId6.id" "Bloop_ultimate_ball_rig:tweak3.ip[0].gi"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1GroupId.msg" "Bloop_ultimate_ball_rig:cluster1Set.gn"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[0]" "Bloop_ultimate_ball_rig:cluster1Set.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:cluster1.msg" "Bloop_ultimate_ball_rig:cluster1Set.ub[0]"
		;
connectAttr "Bloop_ultimate_ball_rig:tweak3.og[0]" "Bloop_ultimate_ball_rig:cluster1GroupParts.ig"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1GroupId.id" "Bloop_ultimate_ball_rig:cluster1GroupParts.gi"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId6.msg" "Bloop_ultimate_ball_rig:tweakSet3.gn"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[1]" "Bloop_ultimate_ball_rig:tweakSet3.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:tweak3.msg" "Bloop_ultimate_ball_rig:tweakSet3.ub[0]"
		;
connectAttr "Bloop_ultimate_ball_rig:ffd1LatticeShapeOrig.wl" "Bloop_ultimate_ball_rig:groupParts6.ig"
		;
connectAttr "Bloop_ultimate_ball_rig:groupId6.id" "Bloop_ultimate_ball_rig:groupParts6.gi"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2GroupParts.og" "Bloop_ultimate_ball_rig:cluster2.ip[0].ig"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2GroupId.id" "Bloop_ultimate_ball_rig:cluster2.ip[0].gi"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2Handle.wm" "Bloop_ultimate_ball_rig:cluster2.ma"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2HandleShape.x" "Bloop_ultimate_ball_rig:cluster2.x"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2GroupId.msg" "Bloop_ultimate_ball_rig:cluster2Set.gn"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ffd1LatticeShape.iog.og[2]" "Bloop_ultimate_ball_rig:cluster2Set.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:cluster2.msg" "Bloop_ultimate_ball_rig:cluster2Set.ub[0]"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster1.og[0]" "Bloop_ultimate_ball_rig:cluster2GroupParts.ig"
		;
connectAttr "Bloop_ultimate_ball_rig:cluster2GroupId.id" "Bloop_ultimate_ball_rig:cluster2GroupParts.gi"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide2.ox" "Bloop_ultimate_ball_rig:multiplyDivide1.i2x"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide2.oy" "Bloop_ultimate_ball_rig:multiplyDivide1.i2y"
		;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide2.oz" "Bloop_ultimate_ball_rig:multiplyDivide1.i2z"
		;
connectAttr "Bloop_ultimate_ball_rig:distanceDimensionShape1.dist" "Bloop_ultimate_ball_rig:multiplyDivide2.i1x"
		;
connectAttr "Bloop_ultimate_ball_rig:distanceDimensionShape1.dist" "Bloop_ultimate_ball_rig:multiplyDivide2.i1y"
		;
connectAttr "Bloop_ultimate_ball_rig:distanceDimensionShape1.dist" "Bloop_ultimate_ball_rig:multiplyDivide2.i1z"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.sy" "Bloop_ultimate_ball_rig:multiplyDivide2.i2x"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.sy" "Bloop_ultimate_ball_rig:multiplyDivide2.i2y"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.sy" "Bloop_ultimate_ball_rig:multiplyDivide2.i2z"
		;
connectAttr "Bloop_ultimate_ball_rig:makeNurbCircle1.oc" "Bloop_ultimate_ball_rig:transformGeometry1.ig"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:ramp1.oc" "Bloop_ultimate_ball_rig:ball_model_001:ball_temp_texture.c"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:ball_temp_texture.oc" "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.ss"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShape.iog" "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:Ball_meshShapeDeformed.iog" "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.dsm"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.msg" "Bloop_ultimate_ball_rig:ball_model_001:materialInfo1.sg"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:ball_temp_texture.msg" "Bloop_ultimate_ball_rig:ball_model_001:materialInfo1.m"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:ramp1.msg" "Bloop_ultimate_ball_rig:ball_model_001:materialInfo1.t"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:place2dTexture1.o" "Bloop_ultimate_ball_rig:ball_model_001:ramp1.uv"
		;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:place2dTexture1.ofs" "Bloop_ultimate_ball_rig:ball_model_001:ramp1.fs"
		;
connectAttr "layerManager.dli[1]" "Ball.id";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail1.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail1.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail1.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail2.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail2.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail2.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail3.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail3.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail3.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail4.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail4.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail4.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail5.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail5.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail5.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail6.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail6.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail6.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail7.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail7.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail7.so";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.wm" "motionTrail8.im";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.rp" "motionTrail8.lp";
connectAttr "Bloop_ultimate_ball_rig:ball_placement_ctrl.msg" "motionTrail8.so";
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:lambert2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:ball_temp_texture.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:multiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Bloop_ultimate_ball_rig:ball_model_001:ramp1.msg" ":defaultTextureList1.tx"
		 -na;
// End of Bouncing_Ball.ma
