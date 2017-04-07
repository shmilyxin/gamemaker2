// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // controler_obj
global.__objectDepths[1] = 0; // state1_control_obj
global.__objectDepths[2] = 0; // abstractUnit_obj
global.__objectDepths[3] = 1; // wangzi1_obj
global.__objectDepths[4] = -11; // btn_obj
global.__objectDepths[5] = -10; // biankuang_obj
global.__objectDepths[6] = 3; // caodi_obj
global.__objectDepths[7] = 3; // bingyuan_obj
global.__objectDepths[8] = 3; // heliu_obj
global.__objectDepths[9] = 3; // xuanya_l_obj
global.__objectDepths[10] = 3; // qiantan_obj
global.__objectDepths[11] = 3; // pubu_obj
global.__objectDepths[12] = 3; // sea_obj
global.__objectDepths[13] = 3; // sadi_obj
global.__objectDepths[14] = 3; // shanye_obj
global.__objectDepths[15] = 3; // xuanya_obj
global.__objectDepths[16] = 3; // senlin_obj
global.__objectDepths[17] = 2; // jiaotang1_obj
global.__objectDepths[18] = 0; // abstactTer_obj
global.__objectDepths[19] = 2; // jiaotang2_obj
global.__objectDepths[20] = 2; // chengbao1_obj
global.__objectDepths[21] = 2; // chengbao2_obj
global.__objectDepths[22] = 3; // xuanya_r_obj
global.__objectDepths[23] = 2; // chunzhuang2_obj
global.__objectDepths[24] = 2; // chunzhuang1_obj
global.__objectDepths[25] = 0; // option_obj
global.__objectDepths[26] = -9; // yinying_obj
global.__objectDepths[27] = 0; // select_obj
global.__objectDepths[28] = -100; // debug_obj


global.__objectNames[0] = "controler_obj";
global.__objectNames[1] = "state1_control_obj";
global.__objectNames[2] = "abstractUnit_obj";
global.__objectNames[3] = "wangzi1_obj";
global.__objectNames[4] = "btn_obj";
global.__objectNames[5] = "biankuang_obj";
global.__objectNames[6] = "caodi_obj";
global.__objectNames[7] = "bingyuan_obj";
global.__objectNames[8] = "heliu_obj";
global.__objectNames[9] = "xuanya_l_obj";
global.__objectNames[10] = "qiantan_obj";
global.__objectNames[11] = "pubu_obj";
global.__objectNames[12] = "sea_obj";
global.__objectNames[13] = "sadi_obj";
global.__objectNames[14] = "shanye_obj";
global.__objectNames[15] = "xuanya_obj";
global.__objectNames[16] = "senlin_obj";
global.__objectNames[17] = "jiaotang1_obj";
global.__objectNames[18] = "abstactTer_obj";
global.__objectNames[19] = "jiaotang2_obj";
global.__objectNames[20] = "chengbao1_obj";
global.__objectNames[21] = "chengbao2_obj";
global.__objectNames[22] = "xuanya_r_obj";
global.__objectNames[23] = "chunzhuang2_obj";
global.__objectNames[24] = "chunzhuang1_obj";
global.__objectNames[25] = "option_obj";
global.__objectNames[26] = "yinying_obj";
global.__objectNames[27] = "select_obj";
global.__objectNames[28] = "debug_obj";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for