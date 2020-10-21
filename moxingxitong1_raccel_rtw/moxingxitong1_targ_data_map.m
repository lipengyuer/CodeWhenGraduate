  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtP)
    ;%
      section.nData     = 331;
      section.data(331)  = dumData; %prealloc
      
	  ;% rtP.Rotorangledtheta_IC
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.web2_Gain
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtP.int_IC
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtP.Lad_Ll_Gain
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtP.int_IC_g
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtP.Lad_Llfd_Gain
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtP.int_IC_b
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtP.Lad_Llkd_Gain
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtP.int1_IC
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtP.Laq_Ll_Gain
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtP.int_IC_e
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtP.Laq_Llkq1_Gain
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtP.Laq_Llkq2_Gain
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtP.Switch_Threshold
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtP.u_Ll_Gain
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtP.Gain_Gain
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtP.Gain1_Gain
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtP.u_Ll_Gain_c
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtP.ib_Gain
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtP.SwitchCurrents_Value
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtP.Constant3_Value
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 25;
	
	  ;% rtP.phiqr_IC
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 26;
	
	  ;% rtP.phidr_IC
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 27;
	
	  ;% rtP.Llr_Gain
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 28;
	
	  ;% rtP.phiqs_IC
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 29;
	
	  ;% rtP.phids_IC
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 30;
	
	  ;% rtP.Lls_Gain
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 31;
	
	  ;% rtP.Llr1_Gain
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 32;
	
	  ;% rtP.Llr2_Gain
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 33;
	
	  ;% rtP.Constant_Value
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 34;
	
	  ;% rtP.Constant1_Value
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 35;
	
	  ;% rtP.Switch_Threshold_g
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 36;
	
	  ;% rtP.Llr_Gain_o
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 37;
	
	  ;% rtP.Switch1_Threshold
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 38;
	
	  ;% rtP.Llr2_Gain_f
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 39;
	
	  ;% rtP.Llr_Gain_l
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 40;
	
	  ;% rtP.Llr2_Gain_g
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 41;
	
	  ;% rtP.Rotoranglethetam_IC
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 42;
	
	  ;% rtP.Rotorspeedwm_IC
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 43;
	
	  ;% rtP.Constant4_Value
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 44;
	
	  ;% rtP.ib_Gain_n
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 45;
	
	  ;% rtP.valp_nom3_Value
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 46;
	
	  ;% rtP.valp_nom2_Value
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 47;
	
	  ;% rtP.SinglePhase_Value
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 48;
	
	  ;% rtP.Switch5_Threshold
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 49;
	
	  ;% rtP.valp_nom1_Value
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 50;
	
	  ;% rtP.Gain_Gain_k
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 51;
	
	  ;% rtP.valp_nom_Value
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 52;
	
	  ;% rtP.Gain3_Gain
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 53;
	
	  ;% rtP.P1_Value
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 54;
	
	  ;% rtP.valp_nom7_Value
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 57;
	
	  ;% rtP.p_Gain
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 58;
	
	  ;% rtP.Gain_Gain_i
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 59;
	
	  ;% rtP.Gain3_Gain_i
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 62;
	
	  ;% rtP.T1_Value
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 63;
	
	  ;% rtP.Gain5_Gain
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 64;
	
	  ;% rtP.Gain7_Gain
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 65;
	
	  ;% rtP.Gain3_Gain_h
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 66;
	
	  ;% rtP.Gain4_Gain
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 67;
	
	  ;% rtP.T2_Value
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 68;
	
	  ;% rtP.Gain1_Gain_m
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 69;
	
	  ;% rtP.Gain5_Gain_b
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 70;
	
	  ;% rtP.T3_Value
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 71;
	
	  ;% rtP.Gain2_Gain
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 72;
	
	  ;% rtP.Gain6_Gain
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 73;
	
	  ;% rtP.Gain2_Gain_k
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 74;
	
	  ;% rtP.TransferFcn_A
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 75;
	
	  ;% rtP.TransferFcn_C
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 76;
	
	  ;% rtP.Gain3_Gain_n
	  section.data(69).logicalSrcIdx = 70;
	  section.data(69).dtTransOffset = 77;
	
	  ;% rtP.Gain3_Gain_e
	  section.data(70).logicalSrcIdx = 71;
	  section.data(70).dtTransOffset = 78;
	
	  ;% rtP.TransferFcn1_A
	  section.data(71).logicalSrcIdx = 72;
	  section.data(71).dtTransOffset = 79;
	
	  ;% rtP.TransferFcn1_C
	  section.data(72).logicalSrcIdx = 73;
	  section.data(72).dtTransOffset = 80;
	
	  ;% rtP.Gain2_Gain_a
	  section.data(73).logicalSrcIdx = 76;
	  section.data(73).dtTransOffset = 81;
	
	  ;% rtP.Gain1_Gain_k
	  section.data(74).logicalSrcIdx = 77;
	  section.data(74).dtTransOffset = 82;
	
	  ;% rtP.Gain4_Gain_d
	  section.data(75).logicalSrcIdx = 78;
	  section.data(75).dtTransOffset = 83;
	
	  ;% rtP.Llr1_Gain_p
	  section.data(76).logicalSrcIdx = 79;
	  section.data(76).dtTransOffset = 84;
	
	  ;% rtP.Llr3_Gain
	  section.data(77).logicalSrcIdx = 80;
	  section.data(77).dtTransOffset = 85;
	
	  ;% rtP.Constant1_Value_k
	  section.data(78).logicalSrcIdx = 81;
	  section.data(78).dtTransOffset = 86;
	
	  ;% rtP.Constant2_Value
	  section.data(79).logicalSrcIdx = 82;
	  section.data(79).dtTransOffset = 87;
	
	  ;% rtP.Constant3_Value_c
	  section.data(80).logicalSrcIdx = 83;
	  section.data(80).dtTransOffset = 88;
	
	  ;% rtP.Constant6_Value
	  section.data(81).logicalSrcIdx = 84;
	  section.data(81).dtTransOffset = 89;
	
	  ;% rtP._Vb_Gain
	  section.data(82).logicalSrcIdx = 85;
	  section.data(82).dtTransOffset = 91;
	
	  ;% rtP.web1_Gain
	  section.data(83).logicalSrcIdx = 86;
	  section.data(83).dtTransOffset = 92;
	
	  ;% rtP.web_psb_Gain
	  section.data(84).logicalSrcIdx = 87;
	  section.data(84).dtTransOffset = 93;
	
	  ;% rtP.Llr1_Gain_a
	  section.data(85).logicalSrcIdx = 88;
	  section.data(85).dtTransOffset = 94;
	
	  ;% rtP.Llr3_Gain_o
	  section.data(86).logicalSrcIdx = 89;
	  section.data(86).dtTransOffset = 95;
	
	  ;% rtP.Constant4_Value_h
	  section.data(87).logicalSrcIdx = 90;
	  section.data(87).dtTransOffset = 96;
	
	  ;% rtP.Constant5_Value
	  section.data(88).logicalSrcIdx = 91;
	  section.data(88).dtTransOffset = 97;
	
	  ;% rtP.Constant6_Value_p
	  section.data(89).logicalSrcIdx = 92;
	  section.data(89).dtTransOffset = 98;
	
	  ;% rtP.Constant4_Value_i
	  section.data(90).logicalSrcIdx = 93;
	  section.data(90).dtTransOffset = 99;
	
	  ;% rtP.web1_Gain_n
	  section.data(91).logicalSrcIdx = 94;
	  section.data(91).dtTransOffset = 100;
	
	  ;% rtP.web_psb_Gain_b
	  section.data(92).logicalSrcIdx = 95;
	  section.data(92).dtTransOffset = 101;
	
	  ;% rtP.Gain1_Gain_l
	  section.data(93).logicalSrcIdx = 96;
	  section.data(93).dtTransOffset = 102;
	
	  ;% rtP._Tb2_Gain
	  section.data(94).logicalSrcIdx = 97;
	  section.data(94).dtTransOffset = 103;
	
	  ;% rtP.F_Gain
	  section.data(95).logicalSrcIdx = 98;
	  section.data(95).dtTransOffset = 104;
	
	  ;% rtP._2H_Gain
	  section.data(96).logicalSrcIdx = 99;
	  section.data(96).dtTransOffset = 105;
	
	  ;% rtP.web_psb_Gain_l
	  section.data(97).logicalSrcIdx = 100;
	  section.data(97).dtTransOffset = 106;
	
	  ;% rtP.Ki_Gain
	  section.data(98).logicalSrcIdx = 101;
	  section.data(98).dtTransOffset = 107;
	
	  ;% rtP.Kv_Gain
	  section.data(99).logicalSrcIdx = 102;
	  section.data(99).dtTransOffset = 108;
	
	  ;% rtP.Kv_Gain_c
	  section.data(100).logicalSrcIdx = 103;
	  section.data(100).dtTransOffset = 109;
	
	  ;% rtP.StateSpace_A
	  section.data(101).logicalSrcIdx = 104;
	  section.data(101).dtTransOffset = 110;
	
	  ;% rtP.StateSpace_C
	  section.data(102).logicalSrcIdx = 105;
	  section.data(102).dtTransOffset = 111;
	
	  ;% rtP.StateSpace_X0
	  section.data(103).logicalSrcIdx = 107;
	  section.data(103).dtTransOffset = 112;
	
	  ;% rtP.Constant1_Value_g
	  section.data(104).logicalSrcIdx = 108;
	  section.data(104).dtTransOffset = 113;
	
	  ;% rtP.StateSpace_A_c
	  section.data(105).logicalSrcIdx = 109;
	  section.data(105).dtTransOffset = 114;
	
	  ;% rtP.StateSpace_C_j
	  section.data(106).logicalSrcIdx = 110;
	  section.data(106).dtTransOffset = 115;
	
	  ;% rtP.StateSpace_X0_k
	  section.data(107).logicalSrcIdx = 112;
	  section.data(107).dtTransOffset = 116;
	
	  ;% rtP.Vfdmax1_Gain
	  section.data(108).logicalSrcIdx = 113;
	  section.data(108).dtTransOffset = 117;
	
	  ;% rtP.Constant_Value_f
	  section.data(109).logicalSrcIdx = 114;
	  section.data(109).dtTransOffset = 118;
	
	  ;% rtP.Constant3_Value_b
	  section.data(110).logicalSrcIdx = 115;
	  section.data(110).dtTransOffset = 119;
	
	  ;% rtP.Vfdmax_Gain
	  section.data(111).logicalSrcIdx = 116;
	  section.data(111).dtTransOffset = 120;
	
	  ;% rtP.StateSpace_D_e
	  section.data(112).logicalSrcIdx = 120;
	  section.data(112).dtTransOffset = 121;
	
	  ;% rtP.StateSpace_A_d
	  section.data(113).logicalSrcIdx = 122;
	  section.data(113).dtTransOffset = 122;
	
	  ;% rtP.StateSpace_C_d
	  section.data(114).logicalSrcIdx = 123;
	  section.data(114).dtTransOffset = 123;
	
	  ;% rtP.StateSpace_D_n
	  section.data(115).logicalSrcIdx = 124;
	  section.data(115).dtTransOffset = 124;
	
	  ;% rtP.StateSpace_X0_b
	  section.data(116).logicalSrcIdx = 125;
	  section.data(116).dtTransOffset = 125;
	
	  ;% rtP.Vref_Value
	  section.data(117).logicalSrcIdx = 126;
	  section.data(117).dtTransOffset = 126;
	
	  ;% rtP.Vf0ka_Value
	  section.data(118).logicalSrcIdx = 127;
	  section.data(118).dtTransOffset = 127;
	
	  ;% rtP.StateSpace_D_f
	  section.data(119).logicalSrcIdx = 131;
	  section.data(119).dtTransOffset = 128;
	
	  ;% rtP._Vb_Gain_h
	  section.data(120).logicalSrcIdx = 133;
	  section.data(120).dtTransOffset = 129;
	
	  ;% rtP.outputformatting9_Gain
	  section.data(121).logicalSrcIdx = 134;
	  section.data(121).dtTransOffset = 130;
	
	  ;% rtP.outputformatting8_Gain
	  section.data(122).logicalSrcIdx = 135;
	  section.data(122).dtTransOffset = 131;
	
	  ;% rtP.Constant1_Value_m
	  section.data(123).logicalSrcIdx = 136;
	  section.data(123).dtTransOffset = 132;
	
	  ;% rtP.Derivative_A
	  section.data(124).logicalSrcIdx = 137;
	  section.data(124).dtTransOffset = 133;
	
	  ;% rtP.Derivative_C
	  section.data(125).logicalSrcIdx = 138;
	  section.data(125).dtTransOffset = 134;
	
	  ;% rtP.wref_Value
	  section.data(126).logicalSrcIdx = 141;
	  section.data(126).dtTransOffset = 135;
	
	  ;% rtP.nomspeed_Value
	  section.data(127).logicalSrcIdx = 142;
	  section.data(127).dtTransOffset = 136;
	
	  ;% rtP.Rotorspeeddeviationdw_IC
	  section.data(128).logicalSrcIdx = 143;
	  section.data(128).dtTransOffset = 137;
	
	  ;% rtP.units_Gain
	  section.data(129).logicalSrcIdx = 144;
	  section.data(129).dtTransOffset = 138;
	
	  ;% rtP.position_IC
	  section.data(130).logicalSrcIdx = 145;
	  section.data(130).dtTransOffset = 139;
	
	  ;% rtP.position_UpperSat
	  section.data(131).logicalSrcIdx = 146;
	  section.data(131).dtTransOffset = 140;
	
	  ;% rtP.position_LowerSat
	  section.data(132).logicalSrcIdx = 147;
	  section.data(132).dtTransOffset = 141;
	
	  ;% rtP.Pref_Value
	  section.data(133).logicalSrcIdx = 148;
	  section.data(133).dtTransOffset = 142;
	
	  ;% rtP.Switch_Threshold_k
	  section.data(134).logicalSrcIdx = 149;
	  section.data(134).dtTransOffset = 143;
	
	  ;% rtP.permanentdroop_Gain
	  section.data(135).logicalSrcIdx = 150;
	  section.data(135).dtTransOffset = 144;
	
	  ;% rtP.Integral_Gain
	  section.data(136).logicalSrcIdx = 151;
	  section.data(136).dtTransOffset = 145;
	
	  ;% rtP.Integrator1_IC
	  section.data(137).logicalSrcIdx = 152;
	  section.data(137).dtTransOffset = 146;
	
	  ;% rtP.Proportional_Gain
	  section.data(138).logicalSrcIdx = 153;
	  section.data(138).dtTransOffset = 147;
	
	  ;% rtP.servomotor_A
	  section.data(139).logicalSrcIdx = 154;
	  section.data(139).dtTransOffset = 148;
	
	  ;% rtP.servomotor_C
	  section.data(140).logicalSrcIdx = 155;
	  section.data(140).dtTransOffset = 149;
	
	  ;% rtP.speedlimit_UpperSat
	  section.data(141).logicalSrcIdx = 158;
	  section.data(141).dtTransOffset = 150;
	
	  ;% rtP.speedlimit_LowerSat
	  section.data(142).logicalSrcIdx = 159;
	  section.data(142).dtTransOffset = 151;
	
	  ;% rtP.Constant_Value_o
	  section.data(143).logicalSrcIdx = 160;
	  section.data(143).dtTransOffset = 152;
	
	  ;% rtP.turbinegain_Gain
	  section.data(144).logicalSrcIdx = 161;
	  section.data(144).dtTransOffset = 153;
	
	  ;% rtP.Integrator_IC
	  section.data(145).logicalSrcIdx = 162;
	  section.data(145).dtTransOffset = 154;
	
	  ;% rtP.beta_Gain
	  section.data(146).logicalSrcIdx = 163;
	  section.data(146).dtTransOffset = 155;
	
	  ;% rtP.Gain2_Gain_f
	  section.data(147).logicalSrcIdx = 164;
	  section.data(147).dtTransOffset = 156;
	
	  ;% rtP.Constant_Value_b
	  section.data(148).logicalSrcIdx = 165;
	  section.data(148).dtTransOffset = 157;
	
	  ;% rtP.Switch_Threshold_p
	  section.data(149).logicalSrcIdx = 166;
	  section.data(149).dtTransOffset = 158;
	
	  ;% rtP.Switch1_Threshold_o
	  section.data(150).logicalSrcIdx = 167;
	  section.data(150).dtTransOffset = 159;
	
	  ;% rtP.Rs_Ll_Gain
	  section.data(151).logicalSrcIdx = 168;
	  section.data(151).dtTransOffset = 160;
	
	  ;% rtP.web_psb_Gain_a
	  section.data(152).logicalSrcIdx = 169;
	  section.data(152).dtTransOffset = 161;
	
	  ;% rtP.N_Gain
	  section.data(153).logicalSrcIdx = 170;
	  section.data(153).dtTransOffset = 162;
	
	  ;% rtP.Rf_Llfd_Gain
	  section.data(154).logicalSrcIdx = 171;
	  section.data(154).dtTransOffset = 163;
	
	  ;% rtP.web_psb_Gain_j
	  section.data(155).logicalSrcIdx = 172;
	  section.data(155).dtTransOffset = 164;
	
	  ;% rtP.Rkd_Llkd_Gain
	  section.data(156).logicalSrcIdx = 173;
	  section.data(156).dtTransOffset = 165;
	
	  ;% rtP.web_psb_Gain_aa
	  section.data(157).logicalSrcIdx = 174;
	  section.data(157).dtTransOffset = 166;
	
	  ;% rtP.Rkq1_Llkq1_Gain
	  section.data(158).logicalSrcIdx = 175;
	  section.data(158).dtTransOffset = 167;
	
	  ;% rtP.web_psb_Gain_f
	  section.data(159).logicalSrcIdx = 176;
	  section.data(159).dtTransOffset = 168;
	
	  ;% rtP.Rkq2_Llkq2_Gain
	  section.data(160).logicalSrcIdx = 177;
	  section.data(160).dtTransOffset = 169;
	
	  ;% rtP.web_psb_Gain_e
	  section.data(161).logicalSrcIdx = 178;
	  section.data(161).dtTransOffset = 170;
	
	  ;% rtP.Rs_Ll_Gain_n
	  section.data(162).logicalSrcIdx = 179;
	  section.data(162).dtTransOffset = 171;
	
	  ;% rtP.web_psb_Gain_bb
	  section.data(163).logicalSrcIdx = 180;
	  section.data(163).dtTransOffset = 172;
	
	  ;% rtP._Pb_Gain
	  section.data(164).logicalSrcIdx = 181;
	  section.data(164).dtTransOffset = 173;
	
	  ;% rtP.F1_Gain
	  section.data(165).logicalSrcIdx = 182;
	  section.data(165).dtTransOffset = 174;
	
	  ;% rtP._2H_Gain_b
	  section.data(166).logicalSrcIdx = 183;
	  section.data(166).dtTransOffset = 175;
	
	  ;% rtP.theta_IC
	  section.data(167).logicalSrcIdx = 184;
	  section.data(167).dtTransOffset = 176;
	
	  ;% rtP.web1_Gain_c
	  section.data(168).logicalSrcIdx = 185;
	  section.data(168).dtTransOffset = 177;
	
	  ;% rtP.web3_Gain
	  section.data(169).logicalSrcIdx = 186;
	  section.data(169).dtTransOffset = 178;
	
	  ;% rtP.C4_Value
	  section.data(170).logicalSrcIdx = 187;
	  section.data(170).dtTransOffset = 179;
	
	  ;% rtP.com_Value
	  section.data(171).logicalSrcIdx = 188;
	  section.data(171).dtTransOffset = 180;
	
	  ;% rtP.C4_Value_c
	  section.data(172).logicalSrcIdx = 189;
	  section.data(172).dtTransOffset = 181;
	
	  ;% rtP.LookUpTable_XData
	  section.data(173).logicalSrcIdx = 190;
	  section.data(173).dtTransOffset = 182;
	
	  ;% rtP.LookUpTable_YData
	  section.data(174).logicalSrcIdx = 191;
	  section.data(174).dtTransOffset = 189;
	
	  ;% rtP.Switch3_Threshold
	  section.data(175).logicalSrcIdx = 192;
	  section.data(175).dtTransOffset = 196;
	
	  ;% rtP.Constant1_Value_k1
	  section.data(176).logicalSrcIdx = 193;
	  section.data(176).dtTransOffset = 197;
	
	  ;% rtP.Constant5_Value_p
	  section.data(177).logicalSrcIdx = 194;
	  section.data(177).dtTransOffset = 198;
	
	  ;% rtP.LookUpTable_XData_o
	  section.data(178).logicalSrcIdx = 195;
	  section.data(178).dtTransOffset = 199;
	
	  ;% rtP.LookUpTable_YData_l
	  section.data(179).logicalSrcIdx = 196;
	  section.data(179).dtTransOffset = 206;
	
	  ;% rtP.Switch3_Threshold_f
	  section.data(180).logicalSrcIdx = 197;
	  section.data(180).dtTransOffset = 213;
	
	  ;% rtP.Sfunction_P1_Size
	  section.data(181).logicalSrcIdx = 198;
	  section.data(181).dtTransOffset = 214;
	
	  ;% rtP.Sfunction_P1
	  section.data(182).logicalSrcIdx = 199;
	  section.data(182).dtTransOffset = 216;
	
	  ;% rtP.HitCrossing_Offset
	  section.data(183).logicalSrcIdx = 200;
	  section.data(183).dtTransOffset = 217;
	
	  ;% rtP.C4_Value_g
	  section.data(184).logicalSrcIdx = 201;
	  section.data(184).dtTransOffset = 218;
	
	  ;% rtP.Constant2_Value_h
	  section.data(185).logicalSrcIdx = 202;
	  section.data(185).dtTransOffset = 219;
	
	  ;% rtP.LookUpTable_XData_b
	  section.data(186).logicalSrcIdx = 203;
	  section.data(186).dtTransOffset = 220;
	
	  ;% rtP.LookUpTable_YData_g
	  section.data(187).logicalSrcIdx = 204;
	  section.data(187).dtTransOffset = 227;
	
	  ;% rtP.Switch3_Threshold_j
	  section.data(188).logicalSrcIdx = 205;
	  section.data(188).dtTransOffset = 234;
	
	  ;% rtP.Sfunction_P1_Size_e
	  section.data(189).logicalSrcIdx = 206;
	  section.data(189).dtTransOffset = 235;
	
	  ;% rtP.Sfunction_P1_i
	  section.data(190).logicalSrcIdx = 207;
	  section.data(190).dtTransOffset = 237;
	
	  ;% rtP.HitCrossing_Offset_p
	  section.data(191).logicalSrcIdx = 208;
	  section.data(191).dtTransOffset = 238;
	
	  ;% rtP.C4_Value_cw
	  section.data(192).logicalSrcIdx = 209;
	  section.data(192).dtTransOffset = 239;
	
	  ;% rtP.Constant3_Value_o
	  section.data(193).logicalSrcIdx = 210;
	  section.data(193).dtTransOffset = 240;
	
	  ;% rtP.LookUpTable_XData_g
	  section.data(194).logicalSrcIdx = 211;
	  section.data(194).dtTransOffset = 241;
	
	  ;% rtP.LookUpTable_YData_i
	  section.data(195).logicalSrcIdx = 212;
	  section.data(195).dtTransOffset = 248;
	
	  ;% rtP.Switch3_Threshold_m
	  section.data(196).logicalSrcIdx = 213;
	  section.data(196).dtTransOffset = 255;
	
	  ;% rtP.Sfunction_P1_Size_f
	  section.data(197).logicalSrcIdx = 214;
	  section.data(197).dtTransOffset = 256;
	
	  ;% rtP.Sfunction_P1_d
	  section.data(198).logicalSrcIdx = 215;
	  section.data(198).dtTransOffset = 258;
	
	  ;% rtP.HitCrossing_Offset_j
	  section.data(199).logicalSrcIdx = 216;
	  section.data(199).dtTransOffset = 259;
	
	  ;% rtP.HitCrossing_Offset_o
	  section.data(200).logicalSrcIdx = 217;
	  section.data(200).dtTransOffset = 260;
	
	  ;% rtP.C4_Value_b
	  section.data(201).logicalSrcIdx = 218;
	  section.data(201).dtTransOffset = 261;
	
	  ;% rtP.com_Value_p
	  section.data(202).logicalSrcIdx = 219;
	  section.data(202).dtTransOffset = 262;
	
	  ;% rtP.C4_Value_gp
	  section.data(203).logicalSrcIdx = 220;
	  section.data(203).dtTransOffset = 263;
	
	  ;% rtP.LookUpTable_XData_oj
	  section.data(204).logicalSrcIdx = 221;
	  section.data(204).dtTransOffset = 264;
	
	  ;% rtP.LookUpTable_YData_j
	  section.data(205).logicalSrcIdx = 222;
	  section.data(205).dtTransOffset = 271;
	
	  ;% rtP.Switch3_Threshold_mn
	  section.data(206).logicalSrcIdx = 223;
	  section.data(206).dtTransOffset = 278;
	
	  ;% rtP.Constant1_Value_ki
	  section.data(207).logicalSrcIdx = 224;
	  section.data(207).dtTransOffset = 279;
	
	  ;% rtP.LookUpTable_XData_c
	  section.data(208).logicalSrcIdx = 225;
	  section.data(208).dtTransOffset = 280;
	
	  ;% rtP.LookUpTable_YData_jm
	  section.data(209).logicalSrcIdx = 226;
	  section.data(209).dtTransOffset = 287;
	
	  ;% rtP.Switch3_Threshold_l
	  section.data(210).logicalSrcIdx = 227;
	  section.data(210).dtTransOffset = 294;
	
	  ;% rtP.Sfunction_P1_Size_d
	  section.data(211).logicalSrcIdx = 228;
	  section.data(211).dtTransOffset = 295;
	
	  ;% rtP.Sfunction_P1_e
	  section.data(212).logicalSrcIdx = 229;
	  section.data(212).dtTransOffset = 297;
	
	  ;% rtP.HitCrossing_Offset_n
	  section.data(213).logicalSrcIdx = 230;
	  section.data(213).dtTransOffset = 298;
	
	  ;% rtP.C4_Value_a
	  section.data(214).logicalSrcIdx = 231;
	  section.data(214).dtTransOffset = 299;
	
	  ;% rtP.Constant2_Value_d
	  section.data(215).logicalSrcIdx = 232;
	  section.data(215).dtTransOffset = 300;
	
	  ;% rtP.LookUpTable_XData_j
	  section.data(216).logicalSrcIdx = 233;
	  section.data(216).dtTransOffset = 301;
	
	  ;% rtP.LookUpTable_YData_i1
	  section.data(217).logicalSrcIdx = 234;
	  section.data(217).dtTransOffset = 308;
	
	  ;% rtP.Switch3_Threshold_k
	  section.data(218).logicalSrcIdx = 235;
	  section.data(218).dtTransOffset = 315;
	
	  ;% rtP.Sfunction_P1_Size_ea
	  section.data(219).logicalSrcIdx = 236;
	  section.data(219).dtTransOffset = 316;
	
	  ;% rtP.Sfunction_P1_l
	  section.data(220).logicalSrcIdx = 237;
	  section.data(220).dtTransOffset = 318;
	
	  ;% rtP.HitCrossing_Offset_pl
	  section.data(221).logicalSrcIdx = 238;
	  section.data(221).dtTransOffset = 319;
	
	  ;% rtP.C4_Value_i
	  section.data(222).logicalSrcIdx = 239;
	  section.data(222).dtTransOffset = 320;
	
	  ;% rtP.Constant3_Value_m
	  section.data(223).logicalSrcIdx = 240;
	  section.data(223).dtTransOffset = 321;
	
	  ;% rtP.LookUpTable_XData_m
	  section.data(224).logicalSrcIdx = 241;
	  section.data(224).dtTransOffset = 322;
	
	  ;% rtP.LookUpTable_YData_im
	  section.data(225).logicalSrcIdx = 242;
	  section.data(225).dtTransOffset = 329;
	
	  ;% rtP.Switch3_Threshold_ji
	  section.data(226).logicalSrcIdx = 243;
	  section.data(226).dtTransOffset = 336;
	
	  ;% rtP.Sfunction_P1_Size_c
	  section.data(227).logicalSrcIdx = 244;
	  section.data(227).dtTransOffset = 337;
	
	  ;% rtP.Sfunction_P1_i3
	  section.data(228).logicalSrcIdx = 245;
	  section.data(228).dtTransOffset = 339;
	
	  ;% rtP.HitCrossing_Offset_e
	  section.data(229).logicalSrcIdx = 246;
	  section.data(229).dtTransOffset = 340;
	
	  ;% rtP.HitCrossing_Offset_n0
	  section.data(230).logicalSrcIdx = 247;
	  section.data(230).dtTransOffset = 341;
	
	  ;% rtP.Gain_Gain_kw
	  section.data(231).logicalSrcIdx = 248;
	  section.data(231).dtTransOffset = 342;
	
	  ;% rtP.LadLmd_Gain
	  section.data(232).logicalSrcIdx = 249;
	  section.data(232).dtTransOffset = 343;
	
	  ;% rtP.phimdsat_Y0
	  section.data(233).logicalSrcIdx = 250;
	  section.data(233).dtTransOffset = 344;
	
	  ;% rtP.Vs_Value
	  section.data(234).logicalSrcIdx = 251;
	  section.data(234).dtTransOffset = 345;
	
	  ;% rtP.LaqLmq_Gain
	  section.data(235).logicalSrcIdx = 252;
	  section.data(235).dtTransOffset = 346;
	
	  ;% rtP.LadLmd_Gain_o
	  section.data(236).logicalSrcIdx = 253;
	  section.data(236).dtTransOffset = 347;
	
	  ;% rtP.phimqsat_Y0
	  section.data(237).logicalSrcIdx = 254;
	  section.data(237).dtTransOffset = 348;
	
	  ;% rtP.phimdsat_Y0_e
	  section.data(238).logicalSrcIdx = 255;
	  section.data(238).dtTransOffset = 349;
	
	  ;% rtP.Vs_Value_l
	  section.data(239).logicalSrcIdx = 256;
	  section.data(239).dtTransOffset = 350;
	
	  ;% rtP.Out1_Y0
	  section.data(240).logicalSrcIdx = 257;
	  section.data(240).dtTransOffset = 351;
	
	  ;% rtP.int_IC_gx
	  section.data(241).logicalSrcIdx = 258;
	  section.data(241).dtTransOffset = 352;
	
	  ;% rtP.Negativesequence_Value
	  section.data(242).logicalSrcIdx = 259;
	  section.data(242).dtTransOffset = 353;
	
	  ;% rtP.Positivesequence_Value
	  section.data(243).logicalSrcIdx = 260;
	  section.data(243).dtTransOffset = 356;
	
	  ;% rtP.Zerosequence_Value
	  section.data(244).logicalSrcIdx = 261;
	  section.data(244).dtTransOffset = 359;
	
	  ;% rtP.Negativesequence_Value_p
	  section.data(245).logicalSrcIdx = 262;
	  section.data(245).dtTransOffset = 362;
	
	  ;% rtP.Positivesequence_Value_e
	  section.data(246).logicalSrcIdx = 263;
	  section.data(246).dtTransOffset = 365;
	
	  ;% rtP.Zerosequence_Value_a
	  section.data(247).logicalSrcIdx = 264;
	  section.data(247).dtTransOffset = 368;
	
	  ;% rtP.harmonicA_Y0
	  section.data(248).logicalSrcIdx = 265;
	  section.data(248).dtTransOffset = 371;
	
	  ;% rtP.harmonicB_Y0
	  section.data(249).logicalSrcIdx = 266;
	  section.data(249).dtTransOffset = 372;
	
	  ;% rtP.Gain2_Gain_h
	  section.data(250).logicalSrcIdx = 267;
	  section.data(250).dtTransOffset = 373;
	
	  ;% rtP.Phase_Harmo_Value
	  section.data(251).logicalSrcIdx = 268;
	  section.data(251).dtTransOffset = 374;
	
	  ;% rtP.Gain3_Gain_p
	  section.data(252).logicalSrcIdx = 269;
	  section.data(252).dtTransOffset = 375;
	
	  ;% rtP.Phase_Harmo2_Value
	  section.data(253).logicalSrcIdx = 270;
	  section.data(253).dtTransOffset = 376;
	
	  ;% rtP.valp_nom2_Value_g
	  section.data(254).logicalSrcIdx = 271;
	  section.data(254).dtTransOffset = 377;
	
	  ;% rtP.Phase_Harmo1_Value
	  section.data(255).logicalSrcIdx = 272;
	  section.data(255).dtTransOffset = 378;
	
	  ;% rtP.Step_Time
	  section.data(256).logicalSrcIdx = 273;
	  section.data(256).dtTransOffset = 379;
	
	  ;% rtP.Step_Y0
	  section.data(257).logicalSrcIdx = 274;
	  section.data(257).dtTransOffset = 380;
	
	  ;% rtP.Step_YFinal
	  section.data(258).logicalSrcIdx = 275;
	  section.data(258).dtTransOffset = 381;
	
	  ;% rtP.Step1_Time
	  section.data(259).logicalSrcIdx = 276;
	  section.data(259).dtTransOffset = 382;
	
	  ;% rtP.Step1_Y0
	  section.data(260).logicalSrcIdx = 277;
	  section.data(260).dtTransOffset = 383;
	
	  ;% rtP.Step1_YFinal
	  section.data(261).logicalSrcIdx = 278;
	  section.data(261).dtTransOffset = 384;
	
	  ;% rtP.Gain2_Gain_kn
	  section.data(262).logicalSrcIdx = 279;
	  section.data(262).dtTransOffset = 385;
	
	  ;% rtP.Phase_Harmo_Value_h
	  section.data(263).logicalSrcIdx = 280;
	  section.data(263).dtTransOffset = 386;
	
	  ;% rtP.Gain3_Gain_ip
	  section.data(264).logicalSrcIdx = 281;
	  section.data(264).dtTransOffset = 387;
	
	  ;% rtP.Phase_Harmo2_Value_g
	  section.data(265).logicalSrcIdx = 282;
	  section.data(265).dtTransOffset = 388;
	
	  ;% rtP.valp_nom2_Value_j
	  section.data(266).logicalSrcIdx = 283;
	  section.data(266).dtTransOffset = 389;
	
	  ;% rtP.Phase_Harmo1_Value_n
	  section.data(267).logicalSrcIdx = 284;
	  section.data(267).dtTransOffset = 390;
	
	  ;% rtP.Gain4_Gain_a
	  section.data(268).logicalSrcIdx = 285;
	  section.data(268).dtTransOffset = 391;
	
	  ;% rtP.Constant4_Value_k
	  section.data(269).logicalSrcIdx = 286;
	  section.data(269).dtTransOffset = 392;
	
	  ;% rtP.Constant2_Value_l
	  section.data(270).logicalSrcIdx = 287;
	  section.data(270).dtTransOffset = 393;
	
	  ;% rtP.valp_nom7_Value_e
	  section.data(271).logicalSrcIdx = 288;
	  section.data(271).dtTransOffset = 394;
	
	  ;% rtP.Constant_Value_h
	  section.data(272).logicalSrcIdx = 289;
	  section.data(272).dtTransOffset = 395;
	
	  ;% rtP.signaltimer_Y0
	  section.data(273).logicalSrcIdx = 290;
	  section.data(273).dtTransOffset = 396;
	
	  ;% rtP.Amplitudevariation_Y0
	  section.data(274).logicalSrcIdx = 291;
	  section.data(274).dtTransOffset = 397;
	
	  ;% rtP.Frequencyvariation_Y0
	  section.data(275).logicalSrcIdx = 292;
	  section.data(275).dtTransOffset = 398;
	
	  ;% rtP.phasevariation_Y0
	  section.data(276).logicalSrcIdx = 293;
	  section.data(276).dtTransOffset = 399;
	
	  ;% rtP.LookUpTable_XData_k
	  section.data(277).logicalSrcIdx = 294;
	  section.data(277).dtTransOffset = 400;
	
	  ;% rtP.LookUpTable_YData_k
	  section.data(278).logicalSrcIdx = 295;
	  section.data(278).dtTransOffset = 409;
	
	  ;% rtP.Constant_Value_d
	  section.data(279).logicalSrcIdx = 296;
	  section.data(279).dtTransOffset = 418;
	
	  ;% rtP.Constant1_Value_a
	  section.data(280).logicalSrcIdx = 297;
	  section.data(280).dtTransOffset = 419;
	
	  ;% rtP.Constant2_Value_hp
	  section.data(281).logicalSrcIdx = 298;
	  section.data(281).dtTransOffset = 420;
	
	  ;% rtP.Constant3_Value_p
	  section.data(282).logicalSrcIdx = 299;
	  section.data(282).dtTransOffset = 421;
	
	  ;% rtP.Constant4_Value_a
	  section.data(283).logicalSrcIdx = 300;
	  section.data(283).dtTransOffset = 422;
	
	  ;% rtP.Constant5_Value_c
	  section.data(284).logicalSrcIdx = 301;
	  section.data(284).dtTransOffset = 423;
	
	  ;% rtP.Constant6_Value_e
	  section.data(285).logicalSrcIdx = 302;
	  section.data(285).dtTransOffset = 424;
	
	  ;% rtP.Constant1_Value_c
	  section.data(286).logicalSrcIdx = 303;
	  section.data(286).dtTransOffset = 425;
	
	  ;% rtP.Step1_Time_e
	  section.data(287).logicalSrcIdx = 304;
	  section.data(287).dtTransOffset = 426;
	
	  ;% rtP.Step1_Y0_o
	  section.data(288).logicalSrcIdx = 305;
	  section.data(288).dtTransOffset = 427;
	
	  ;% rtP.Step1_YFinal_i
	  section.data(289).logicalSrcIdx = 306;
	  section.data(289).dtTransOffset = 428;
	
	  ;% rtP.valp_nom5_Value
	  section.data(290).logicalSrcIdx = 307;
	  section.data(290).dtTransOffset = 429;
	
	  ;% rtP.Constant3_Value_n
	  section.data(291).logicalSrcIdx = 308;
	  section.data(291).dtTransOffset = 430;
	
	  ;% rtP.valp_nom6_Value
	  section.data(292).logicalSrcIdx = 309;
	  section.data(292).dtTransOffset = 431;
	
	  ;% rtP.Step_Time_o
	  section.data(293).logicalSrcIdx = 310;
	  section.data(293).dtTransOffset = 432;
	
	  ;% rtP.Step_Y0_c
	  section.data(294).logicalSrcIdx = 311;
	  section.data(294).dtTransOffset = 433;
	
	  ;% rtP.Step_YFinal_b
	  section.data(295).logicalSrcIdx = 312;
	  section.data(295).dtTransOffset = 434;
	
	  ;% rtP.Integrator_IC_k
	  section.data(296).logicalSrcIdx = 313;
	  section.data(296).dtTransOffset = 435;
	
	  ;% rtP.valp_nom8_Value
	  section.data(297).logicalSrcIdx = 314;
	  section.data(297).dtTransOffset = 436;
	
	  ;% rtP.valp_nom9_Value
	  section.data(298).logicalSrcIdx = 315;
	  section.data(298).dtTransOffset = 437;
	
	  ;% rtP.Gain1_Gain_n
	  section.data(299).logicalSrcIdx = 316;
	  section.data(299).dtTransOffset = 438;
	
	  ;% rtP.CONSTANT_Value
	  section.data(300).logicalSrcIdx = 317;
	  section.data(300).dtTransOffset = 439;
	
	  ;% rtP.Memory_X0
	  section.data(301).logicalSrcIdx = 318;
	  section.data(301).dtTransOffset = 440;
	
	  ;% rtP.Switch2_Threshold
	  section.data(302).logicalSrcIdx = 319;
	  section.data(302).dtTransOffset = 441;
	
	  ;% rtP.valp_nom3_Value_p
	  section.data(303).logicalSrcIdx = 320;
	  section.data(303).dtTransOffset = 442;
	
	  ;% rtP.Gain2_Gain_j
	  section.data(304).logicalSrcIdx = 321;
	  section.data(304).dtTransOffset = 443;
	
	  ;% rtP.Integrator_IC_b
	  section.data(305).logicalSrcIdx = 322;
	  section.data(305).dtTransOffset = 444;
	
	  ;% rtP.Switch_Threshold_o
	  section.data(306).logicalSrcIdx = 323;
	  section.data(306).dtTransOffset = 445;
	
	  ;% rtP.Switch_Threshold_l
	  section.data(307).logicalSrcIdx = 324;
	  section.data(307).dtTransOffset = 446;
	
	  ;% rtP.Switch1_Threshold_f
	  section.data(308).logicalSrcIdx = 325;
	  section.data(308).dtTransOffset = 447;
	
	  ;% rtP.Switch2_Threshold_a
	  section.data(309).logicalSrcIdx = 326;
	  section.data(309).dtTransOffset = 448;
	
	  ;% rtP._Gain
	  section.data(310).logicalSrcIdx = 327;
	  section.data(310).dtTransOffset = 449;
	
	  ;% rtP._Gain_g
	  section.data(311).logicalSrcIdx = 328;
	  section.data(311).dtTransOffset = 450;
	
	  ;% rtP.Constant_Value_hn
	  section.data(312).logicalSrcIdx = 329;
	  section.data(312).dtTransOffset = 451;
	
	  ;% rtP.vqrvdr_Y0
	  section.data(313).logicalSrcIdx = 330;
	  section.data(313).dtTransOffset = 452;
	
	  ;% rtP.vqsvds_Y0
	  section.data(314).logicalSrcIdx = 331;
	  section.data(314).dtTransOffset = 453;
	
	  ;% rtP.vqrvdr_Y0_n
	  section.data(315).logicalSrcIdx = 332;
	  section.data(315).dtTransOffset = 454;
	
	  ;% rtP.vqsvds_Y0_a
	  section.data(316).logicalSrcIdx = 333;
	  section.data(316).dtTransOffset = 455;
	
	  ;% rtP.vqrvdr_Y0_l
	  section.data(317).logicalSrcIdx = 334;
	  section.data(317).dtTransOffset = 456;
	
	  ;% rtP.vqsvds_Y0_d
	  section.data(318).logicalSrcIdx = 335;
	  section.data(318).dtTransOffset = 457;
	
	  ;% rtP.irairb_Y0
	  section.data(319).logicalSrcIdx = 336;
	  section.data(319).dtTransOffset = 458;
	
	  ;% rtP.isaisb_Y0
	  section.data(320).logicalSrcIdx = 337;
	  section.data(320).dtTransOffset = 459;
	
	  ;% rtP.irairb_Y0_f
	  section.data(321).logicalSrcIdx = 338;
	  section.data(321).dtTransOffset = 460;
	
	  ;% rtP.isaisb_Y0_b
	  section.data(322).logicalSrcIdx = 339;
	  section.data(322).dtTransOffset = 461;
	
	  ;% rtP.irairb_Y0_p
	  section.data(323).logicalSrcIdx = 340;
	  section.data(323).dtTransOffset = 462;
	
	  ;% rtP.isaisb_Y0_l
	  section.data(324).logicalSrcIdx = 341;
	  section.data(324).dtTransOffset = 463;
	
	  ;% rtP.Gain_Gain_j
	  section.data(325).logicalSrcIdx = 342;
	  section.data(325).dtTransOffset = 464;
	
	  ;% rtP.sinbetacosbetasinthcosth_Y0
	  section.data(326).logicalSrcIdx = 343;
	  section.data(326).dtTransOffset = 465;
	
	  ;% rtP.wewr_Y0
	  section.data(327).logicalSrcIdx = 344;
	  section.data(327).dtTransOffset = 466;
	
	  ;% rtP.we_Value
	  section.data(328).logicalSrcIdx = 345;
	  section.data(328).dtTransOffset = 467;
	
	  ;% rtP.web_psb_Gain_o
	  section.data(329).logicalSrcIdx = 346;
	  section.data(329).dtTransOffset = 468;
	
	  ;% rtP.sinthrcosthr_Y0
	  section.data(330).logicalSrcIdx = 347;
	  section.data(330).dtTransOffset = 469;
	
	  ;% rtP.Constant_Value_l
	  section.data(331).logicalSrcIdx = 348;
	  section.data(331).dtTransOffset = 470;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 12;
      section.data(12)  = dumData; %prealloc
      
	  ;% rtP.wref_Value_c
	  section.data(1).logicalSrcIdx = 349;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.Vs4_Value
	  section.data(2).logicalSrcIdx = 350;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtP.Vs5_Value
	  section.data(3).logicalSrcIdx = 351;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtP.Constant_Value_i
	  section.data(4).logicalSrcIdx = 352;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtP.Constant3_Value_e
	  section.data(5).logicalSrcIdx = 353;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtP.Constant_Value_ot
	  section.data(6).logicalSrcIdx = 354;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtP.Constant1_Value_b
	  section.data(7).logicalSrcIdx = 355;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtP.Constant2_Value_h5
	  section.data(8).logicalSrcIdx = 356;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtP.Constant_Value_g
	  section.data(9).logicalSrcIdx = 357;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtP.Constant1_Value_f
	  section.data(10).logicalSrcIdx = 358;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtP.Constant2_Value_p
	  section.data(11).logicalSrcIdx = 359;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtP.Timedvariation_Y0
	  section.data(12).logicalSrcIdx = 360;
	  section.data(12).dtTransOffset = 11;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtB)
    ;%
      section.nData     = 142;
      section.data(142)  = dumData; %prealloc
      
	  ;% rtB.phimd
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtB.DataTypeConversion
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtB.DataTypeConversion1
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtB.Sum
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtB.ib
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtB.StateSpace
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 7;
	
	  ;% rtB.ib_j
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 15;
	
	  ;% rtB.Gain
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 19;
	
	  ;% rtB.Gain3
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 20;
	
	  ;% rtB.Sum5
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 21;
	
	  ;% rtB.StateSpace_o1
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 24;
	
	  ;% rtB.StateSpace_o2
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 38;
	
	  ;% rtB.Gain3_c
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 44;
	
	  ;% rtB.Gain5
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 45;
	
	  ;% rtB.Gain3_b
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 46;
	
	  ;% rtB.Gain1
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 47;
	
	  ;% rtB.Gain2
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 48;
	
	  ;% rtB.Add1
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 49;
	
	  ;% rtB.Gain2_o
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 50;
	
	  ;% rtB.Gain3_bj
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 51;
	
	  ;% rtB.Gain2_g
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 52;
	
	  ;% rtB.Gain4
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 53;
	
	  ;% rtB.web1
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 54;
	
	  ;% rtB.web_psb
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 55;
	
	  ;% rtB.web1_d
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 56;
	
	  ;% rtB.web_psb_a
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 57;
	
	  ;% rtB._2H
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 58;
	
	  ;% rtB.web_psb_d
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 59;
	
	  ;% rtB.Ki
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 60;
	
	  ;% rtB.Kv
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 63;
	
	  ;% rtB.Kv_g
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 66;
	
	  ;% rtB.StateSpace_h
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 69;
	
	  ;% rtB.Vfdmax
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 70;
	
	  ;% rtB.Sum_f
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 71;
	
	  ;% rtB.DataTypeConversion_i
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 72;
	
	  ;% rtB.Product1
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 73;
	
	  ;% rtB.DataTypeConversion2
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 74;
	
	  ;% rtB.Sum1
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 75;
	
	  ;% rtB.StateSpace_i
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 76;
	
	  ;% rtB.Sum_fi
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 77;
	
	  ;% rtB.StateSpace_g
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 78;
	
	  ;% rtB.PositiveSequenceVoltage
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 79;
	
	  ;% rtB.Sum1_e
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 80;
	
	  ;% rtB.Integral
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 81;
	
	  ;% rtB.Sum4
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 82;
	
	  ;% rtB.servomotor
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 83;
	
	  ;% rtB.speedlimit
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 84;
	
	  ;% rtB.Gain2_c
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 85;
	
	  ;% rtB.web_psb_k
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 86;
	
	  ;% rtB.web_psb_e
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 87;
	
	  ;% rtB.web_psb_g
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 88;
	
	  ;% rtB.web_psb_kz
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 89;
	
	  ;% rtB.web_psb_n
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 90;
	
	  ;% rtB.web_psb_n2
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 91;
	
	  ;% rtB._2H_h
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 92;
	
	  ;% rtB.web1_p
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 93;
	
	  ;% rtB.web3
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 94;
	
	  ;% rtB.LookUpTable
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 95;
	
	  ;% rtB.LookUpTable_l
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 96;
	
	  ;% rtB.Switch3
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 97;
	
	  ;% rtB.Sfunction
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 98;
	
	  ;% rtB.Derivative
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 99;
	
	  ;% rtB.LookUpTable_b
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 100;
	
	  ;% rtB.Switch3_c
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 101;
	
	  ;% rtB.Sfunction_c
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 102;
	
	  ;% rtB.Derivative_a
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 103;
	
	  ;% rtB.LookUpTable_i
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 104;
	
	  ;% rtB.Switch3_e
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 105;
	
	  ;% rtB.Sfunction_e
	  section.data(69).logicalSrcIdx = 68;
	  section.data(69).dtTransOffset = 106;
	
	  ;% rtB.Derivative_c
	  section.data(70).logicalSrcIdx = 69;
	  section.data(70).dtTransOffset = 107;
	
	  ;% rtB.Derivative_j
	  section.data(71).logicalSrcIdx = 70;
	  section.data(71).dtTransOffset = 108;
	
	  ;% rtB.LookUpTable_h
	  section.data(72).logicalSrcIdx = 71;
	  section.data(72).dtTransOffset = 109;
	
	  ;% rtB.LookUpTable_f
	  section.data(73).logicalSrcIdx = 72;
	  section.data(73).dtTransOffset = 110;
	
	  ;% rtB.Switch3_k
	  section.data(74).logicalSrcIdx = 73;
	  section.data(74).dtTransOffset = 111;
	
	  ;% rtB.Sfunction_n
	  section.data(75).logicalSrcIdx = 74;
	  section.data(75).dtTransOffset = 112;
	
	  ;% rtB.Derivative_o
	  section.data(76).logicalSrcIdx = 75;
	  section.data(76).dtTransOffset = 113;
	
	  ;% rtB.LookUpTable_m
	  section.data(77).logicalSrcIdx = 76;
	  section.data(77).dtTransOffset = 114;
	
	  ;% rtB.Switch3_h
	  section.data(78).logicalSrcIdx = 77;
	  section.data(78).dtTransOffset = 115;
	
	  ;% rtB.Sfunction_p
	  section.data(79).logicalSrcIdx = 78;
	  section.data(79).dtTransOffset = 116;
	
	  ;% rtB.Derivative_p
	  section.data(80).logicalSrcIdx = 79;
	  section.data(80).dtTransOffset = 117;
	
	  ;% rtB.LookUpTable_g
	  section.data(81).logicalSrcIdx = 80;
	  section.data(81).dtTransOffset = 118;
	
	  ;% rtB.Switch3_g
	  section.data(82).logicalSrcIdx = 81;
	  section.data(82).dtTransOffset = 119;
	
	  ;% rtB.Sfunction_f
	  section.data(83).logicalSrcIdx = 82;
	  section.data(83).dtTransOffset = 120;
	
	  ;% rtB.Derivative_b
	  section.data(84).logicalSrcIdx = 83;
	  section.data(84).dtTransOffset = 121;
	
	  ;% rtB.Derivative_m
	  section.data(85).logicalSrcIdx = 84;
	  section.data(85).dtTransOffset = 122;
	
	  ;% rtB.Constant
	  section.data(86).logicalSrcIdx = 85;
	  section.data(86).dtTransOffset = 123;
	
	  ;% rtB.TrigonometricFunction
	  section.data(87).logicalSrcIdx = 86;
	  section.data(87).dtTransOffset = 125;
	
	  ;% rtB.TrigonometricFunction1
	  section.data(88).logicalSrcIdx = 87;
	  section.data(88).dtTransOffset = 126;
	
	  ;% rtB.wewr
	  section.data(89).logicalSrcIdx = 88;
	  section.data(89).dtTransOffset = 127;
	
	  ;% rtB.TrigonometricFunction_d
	  section.data(90).logicalSrcIdx = 89;
	  section.data(90).dtTransOffset = 128;
	
	  ;% rtB.TrigonometricFunction1_o
	  section.data(91).logicalSrcIdx = 90;
	  section.data(91).dtTransOffset = 129;
	
	  ;% rtB.TrigonometricFunction2
	  section.data(92).logicalSrcIdx = 91;
	  section.data(92).dtTransOffset = 130;
	
	  ;% rtB.TrigonometricFunction3
	  section.data(93).logicalSrcIdx = 92;
	  section.data(93).dtTransOffset = 131;
	
	  ;% rtB.ira
	  section.data(94).logicalSrcIdx = 93;
	  section.data(94).dtTransOffset = 132;
	
	  ;% rtB.irb
	  section.data(95).logicalSrcIdx = 94;
	  section.data(95).dtTransOffset = 133;
	
	  ;% rtB.isa
	  section.data(96).logicalSrcIdx = 95;
	  section.data(96).dtTransOffset = 134;
	
	  ;% rtB.isb
	  section.data(97).logicalSrcIdx = 96;
	  section.data(97).dtTransOffset = 135;
	
	  ;% rtB.ira_j
	  section.data(98).logicalSrcIdx = 97;
	  section.data(98).dtTransOffset = 136;
	
	  ;% rtB.irb_b
	  section.data(99).logicalSrcIdx = 98;
	  section.data(99).dtTransOffset = 137;
	
	  ;% rtB.isa_b
	  section.data(100).logicalSrcIdx = 99;
	  section.data(100).dtTransOffset = 138;
	
	  ;% rtB.isb_j
	  section.data(101).logicalSrcIdx = 100;
	  section.data(101).dtTransOffset = 139;
	
	  ;% rtB.ira_c
	  section.data(102).logicalSrcIdx = 101;
	  section.data(102).dtTransOffset = 140;
	
	  ;% rtB.irb_n
	  section.data(103).logicalSrcIdx = 102;
	  section.data(103).dtTransOffset = 141;
	
	  ;% rtB.isa_c
	  section.data(104).logicalSrcIdx = 103;
	  section.data(104).dtTransOffset = 142;
	
	  ;% rtB.isb_a
	  section.data(105).logicalSrcIdx = 104;
	  section.data(105).dtTransOffset = 143;
	
	  ;% rtB.vdr
	  section.data(106).logicalSrcIdx = 105;
	  section.data(106).dtTransOffset = 144;
	
	  ;% rtB.vds
	  section.data(107).logicalSrcIdx = 106;
	  section.data(107).dtTransOffset = 145;
	
	  ;% rtB.vqr
	  section.data(108).logicalSrcIdx = 107;
	  section.data(108).dtTransOffset = 146;
	
	  ;% rtB.vqs
	  section.data(109).logicalSrcIdx = 108;
	  section.data(109).dtTransOffset = 147;
	
	  ;% rtB.vdr_n
	  section.data(110).logicalSrcIdx = 109;
	  section.data(110).dtTransOffset = 148;
	
	  ;% rtB.vds_n
	  section.data(111).logicalSrcIdx = 110;
	  section.data(111).dtTransOffset = 149;
	
	  ;% rtB.vqr_l
	  section.data(112).logicalSrcIdx = 111;
	  section.data(112).dtTransOffset = 150;
	
	  ;% rtB.vqs_p
	  section.data(113).logicalSrcIdx = 112;
	  section.data(113).dtTransOffset = 151;
	
	  ;% rtB.vdr_k
	  section.data(114).logicalSrcIdx = 113;
	  section.data(114).dtTransOffset = 152;
	
	  ;% rtB.vds_c
	  section.data(115).logicalSrcIdx = 114;
	  section.data(115).dtTransOffset = 153;
	
	  ;% rtB.vqr_j
	  section.data(116).logicalSrcIdx = 115;
	  section.data(116).dtTransOffset = 154;
	
	  ;% rtB.vqs_m
	  section.data(117).logicalSrcIdx = 116;
	  section.data(117).dtTransOffset = 155;
	
	  ;% rtB.Switch
	  section.data(118).logicalSrcIdx = 117;
	  section.data(118).dtTransOffset = 156;
	
	  ;% rtB.Switch1
	  section.data(119).logicalSrcIdx = 118;
	  section.data(119).dtTransOffset = 157;
	
	  ;% rtB.LookUpTable_hu
	  section.data(120).logicalSrcIdx = 119;
	  section.data(120).dtTransOffset = 158;
	
	  ;% rtB.Toff
	  section.data(121).logicalSrcIdx = 120;
	  section.data(121).dtTransOffset = 159;
	
	  ;% rtB.Step
	  section.data(122).logicalSrcIdx = 121;
	  section.data(122).dtTransOffset = 160;
	
	  ;% rtB.Gain1_d
	  section.data(123).logicalSrcIdx = 122;
	  section.data(123).dtTransOffset = 161;
	
	  ;% rtB.Memory
	  section.data(124).logicalSrcIdx = 123;
	  section.data(124).dtTransOffset = 162;
	
	  ;% rtB.Switch2
	  section.data(125).logicalSrcIdx = 124;
	  section.data(125).dtTransOffset = 163;
	
	  ;% rtB.Gain2_f
	  section.data(126).logicalSrcIdx = 125;
	  section.data(126).dtTransOffset = 164;
	
	  ;% rtB.Integrator
	  section.data(127).logicalSrcIdx = 126;
	  section.data(127).dtTransOffset = 165;
	
	  ;% rtB.Switch2_b
	  section.data(128).logicalSrcIdx = 127;
	  section.data(128).dtTransOffset = 166;
	
	  ;% rtB.Switch3_i
	  section.data(129).logicalSrcIdx = 128;
	  section.data(129).dtTransOffset = 167;
	
	  ;% rtB.Switch_m
	  section.data(130).logicalSrcIdx = 129;
	  section.data(130).dtTransOffset = 168;
	
	  ;% rtB.Gain3_f
	  section.data(131).logicalSrcIdx = 130;
	  section.data(131).dtTransOffset = 169;
	
	  ;% rtB.MultiportSwitch
	  section.data(132).logicalSrcIdx = 131;
	  section.data(132).dtTransOffset = 170;
	
	  ;% rtB.Sum4_m
	  section.data(133).logicalSrcIdx = 132;
	  section.data(133).dtTransOffset = 173;
	
	  ;% rtB.Product1_d
	  section.data(134).logicalSrcIdx = 133;
	  section.data(134).dtTransOffset = 174;
	
	  ;% rtB.Gain3_d
	  section.data(135).logicalSrcIdx = 134;
	  section.data(135).dtTransOffset = 177;
	
	  ;% rtB.MultiportSwitch_g
	  section.data(136).logicalSrcIdx = 135;
	  section.data(136).dtTransOffset = 178;
	
	  ;% rtB.Product1_o
	  section.data(137).logicalSrcIdx = 136;
	  section.data(137).dtTransOffset = 181;
	
	  ;% rtB.int_h
	  section.data(138).logicalSrcIdx = 137;
	  section.data(138).dtTransOffset = 184;
	
	  ;% rtB.Sum_j
	  section.data(139).logicalSrcIdx = 138;
	  section.data(139).dtTransOffset = 185;
	
	  ;% rtB.Switch_a
	  section.data(140).logicalSrcIdx = 139;
	  section.data(140).dtTransOffset = 186;
	
	  ;% rtB.Switch1_j
	  section.data(141).logicalSrcIdx = 140;
	  section.data(141).dtTransOffset = 187;
	
	  ;% rtB.Switch_i
	  section.data(142).logicalSrcIdx = 141;
	  section.data(142).dtTransOffset = 188;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 10;
      section.data(10)  = dumData; %prealloc
      
	  ;% rtB.DataTypeConversion3
	  section.data(1).logicalSrcIdx = 142;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtB.DataTypeConversion2_h
	  section.data(2).logicalSrcIdx = 143;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtB.DataTypeConversion1_m
	  section.data(3).logicalSrcIdx = 144;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtB.LogicalOperator
	  section.data(4).logicalSrcIdx = 145;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtB.Frequency
	  section.data(5).logicalSrcIdx = 146;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtB.Amplitude
	  section.data(6).logicalSrcIdx = 147;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtB.LogicalOperator1
	  section.data(7).logicalSrcIdx = 148;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtB.Phase
	  section.data(8).logicalSrcIdx = 149;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtB.RelationalOperator
	  section.data(9).logicalSrcIdx = 150;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtB.RelationalOperator_p
	  section.data(10).logicalSrcIdx = 151;
	  section.data(10).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 5;
    sectIdxOffset = 2;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtDWork)
    ;%
      section.nData     = 18;
      section.data(18)  = dumData; %prealloc
      
	  ;% rtDWork.Sfunction_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.Sfunction_DSTATE_g
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 2;
	
	  ;% rtDWork.Sfunction_DSTATE_p
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 4;
	
	  ;% rtDWork.Sfunction_DSTATE_h
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 6;
	
	  ;% rtDWork.Sfunction_DSTATE_a
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 8;
	
	  ;% rtDWork.Sfunction_DSTATE_po
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 10;
	
	  ;% rtDWork.Memory_PreviousInput
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 12;
	
	  ;% rtDWork.Derivative_RWORK.TimeStampA
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 13;
	
	  ;% rtDWork.Derivative1_RWORK.TimeStampA
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 14;
	
	  ;% rtDWork.Derivative2_RWORK.TimeStampA
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 15;
	
	  ;% rtDWork.Derivative_RWORK_f.TimeStampA
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 16;
	
	  ;% rtDWork.Derivative_RWORK_a.TimeStampA
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 17;
	
	  ;% rtDWork.Derivative_RWORK_i.TimeStampA
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 18;
	
	  ;% rtDWork.Derivative_RWORK_p.TimeStampA
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 19;
	
	  ;% rtDWork.Derivative_RWORK_k.TimeStampA
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 20;
	
	  ;% rtDWork.Derivative_RWORK_l.TimeStampA
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 21;
	
	  ;% rtDWork.Derivative_RWORK_m.TimeStampA
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 22;
	
	  ;% rtDWork.Derivative_RWORK_f4.TimeStampA
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 23;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 10;
      section.data(10)  = dumData; %prealloc
      
	  ;% rtDWork.StateSpace_PWORK.AS
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.StateSpace_PWORK_p.AS
	  section.data(2).logicalSrcIdx = 19;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.wm_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 20;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDWork.Scope1_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 21;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDWork.Scope2_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 22;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDWork.Scope3_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 23;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDWork.Scope4_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 24;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDWork.Scope1_PWORK_c.LoggedData
	  section.data(8).logicalSrcIdx = 25;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDWork.Scope2_PWORK_k.LoggedData
	  section.data(9).logicalSrcIdx = 26;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDWork.Scope3_PWORK_p.LoggedData
	  section.data(10).logicalSrcIdx = 27;
	  section.data(10).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 23;
      section.data(23)  = dumData; %prealloc
      
	  ;% rtDWork.StateSpace_IWORK
	  section.data(1).logicalSrcIdx = 28;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.StateSpace_IWORK_m
	  section.data(2).logicalSrcIdx = 29;
	  section.data(2).dtTransOffset = 4;
	
	  ;% rtDWork.Enabledintegrator_MODE
	  section.data(3).logicalSrcIdx = 30;
	  section.data(3).dtTransOffset = 8;
	
	  ;% rtDWork.dqaxissaturation_MODE
	  section.data(4).logicalSrcIdx = 31;
	  section.data(4).dtTransOffset = 9;
	
	  ;% rtDWork.daxissaturation_MODE
	  section.data(5).logicalSrcIdx = 32;
	  section.data(5).dtTransOffset = 10;
	
	  ;% rtDWork.Saturation_MODE
	  section.data(6).logicalSrcIdx = 33;
	  section.data(6).dtTransOffset = 11;
	
	  ;% rtDWork.sinthrcosthr_MODE
	  section.data(7).logicalSrcIdx = 34;
	  section.data(7).dtTransOffset = 12;
	
	  ;% rtDWork.sinbetacosbetasinthcosth_MODE
	  section.data(8).logicalSrcIdx = 35;
	  section.data(8).dtTransOffset = 13;
	
	  ;% rtDWork.Rotorreferenceframe_MODE
	  section.data(9).logicalSrcIdx = 36;
	  section.data(9).dtTransOffset = 14;
	
	  ;% rtDWork.Stationaryreferenceframe_MODE
	  section.data(10).logicalSrcIdx = 37;
	  section.data(10).dtTransOffset = 15;
	
	  ;% rtDWork.Synchronousreferenceframe_MODE
	  section.data(11).logicalSrcIdx = 38;
	  section.data(11).dtTransOffset = 16;
	
	  ;% rtDWork.SignalGenerator_MODE
	  section.data(12).logicalSrcIdx = 39;
	  section.data(12).dtTransOffset = 17;
	
	  ;% rtDWork.HarmonicGenerator_MODE
	  section.data(13).logicalSrcIdx = 40;
	  section.data(13).dtTransOffset = 18;
	
	  ;% rtDWork.StateSpace_MODE
	  section.data(14).logicalSrcIdx = 41;
	  section.data(14).dtTransOffset = 19;
	
	  ;% rtDWork.Rotorreferenceframe_MODE_d
	  section.data(15).logicalSrcIdx = 42;
	  section.data(15).dtTransOffset = 25;
	
	  ;% rtDWork.Stationaryreferenceframe_MODE_k
	  section.data(16).logicalSrcIdx = 43;
	  section.data(16).dtTransOffset = 26;
	
	  ;% rtDWork.Synchronousreferenceframe_MODE_k
	  section.data(17).logicalSrcIdx = 44;
	  section.data(17).dtTransOffset = 27;
	
	  ;% rtDWork.position_MODE
	  section.data(18).logicalSrcIdx = 45;
	  section.data(18).dtTransOffset = 28;
	
	  ;% rtDWork.speedlimit_MODE
	  section.data(19).logicalSrcIdx = 46;
	  section.data(19).dtTransOffset = 29;
	
	  ;% rtDWork.Step1_MODE
	  section.data(20).logicalSrcIdx = 47;
	  section.data(20).dtTransOffset = 30;
	
	  ;% rtDWork.Step_MODE
	  section.data(21).logicalSrcIdx = 48;
	  section.data(21).dtTransOffset = 31;
	
	  ;% rtDWork.Step_MODE_e
	  section.data(22).logicalSrcIdx = 49;
	  section.data(22).dtTransOffset = 32;
	
	  ;% rtDWork.Step1_MODE_g
	  section.data(23).logicalSrcIdx = 50;
	  section.data(23).dtTransOffset = 33;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 14;
      section.data(14)  = dumData; %prealloc
      
	  ;% rtDWork.Enabledintegrator_SubsysRanBC
	  section.data(1).logicalSrcIdx = 51;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.dqaxissaturation_SubsysRanBC
	  section.data(2).logicalSrcIdx = 52;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.daxissaturation_SubsysRanBC
	  section.data(3).logicalSrcIdx = 53;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDWork.Saturation_SubsysRanBC
	  section.data(4).logicalSrcIdx = 54;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDWork.sinthrcosthr_SubsysRanBC
	  section.data(5).logicalSrcIdx = 55;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDWork.sinbetacosbetasinthcosth_SubsysRanBC
	  section.data(6).logicalSrcIdx = 56;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDWork.Rotorreferenceframe_SubsysRanBC
	  section.data(7).logicalSrcIdx = 57;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDWork.Stationaryreferenceframe_SubsysRanBC
	  section.data(8).logicalSrcIdx = 58;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDWork.Synchronousreferenceframe_SubsysRanBC
	  section.data(9).logicalSrcIdx = 59;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDWork.SignalGenerator_SubsysRanBC
	  section.data(10).logicalSrcIdx = 60;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtDWork.HarmonicGenerator_SubsysRanBC
	  section.data(11).logicalSrcIdx = 61;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtDWork.Rotorreferenceframe_SubsysRanBC_n
	  section.data(12).logicalSrcIdx = 62;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtDWork.Stationaryreferenceframe_SubsysRanBC_b
	  section.data(13).logicalSrcIdx = 63;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtDWork.Synchronousreferenceframe_SubsysRanBC_o
	  section.data(14).logicalSrcIdx = 64;
	  section.data(14).dtTransOffset = 13;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% rtDWork.RelationalOperator2_Mode
	  section.data(1).logicalSrcIdx = 65;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.RelationalOperator1_Mode
	  section.data(2).logicalSrcIdx = 66;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.RelationalOperator_Mode
	  section.data(3).logicalSrcIdx = 67;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDWork.RelationalOperator_Mode_j
	  section.data(4).logicalSrcIdx = 68;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 817555510;
  targMap.checksum1 = 3652429249;
  targMap.checksum2 = 2001196612;
  targMap.checksum3 = 3007757265;

