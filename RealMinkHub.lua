local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\233\139","\190\199\165\189\19\145"),function(v42) if (v9(v42,2)==(253 -172)) then local v93=0;while true do if (v93==0) then v30=v8(v11(v42,1,1));return "";end end else local v94=0;local v95;while true do if (v94==0) then v95=v10(v8(v42,16));if v30 then local v120=v13(v95,v30);v30=nil;return v120;else return v95;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v96=0;local v97;while true do if (v96==0) then v97=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v97-(v97%(2 -1)) ;end end else local v98=0;local v99;while true do if (0==v98) then v99=2^(v44-1) ;return (((v43%(v99 + v99))>=v99) and 1) or 0 ;end end end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + (3 -1) );v29=v29 + 2 ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34() local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==0) then v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v50=1;end if (v50==1) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end end end local function v35() local v55=v34();local v56=v34();local v57=1;local v58=(v31(v56,2 -1 ,20) * (2^32)) + v55 ;local v59=v31(v56,21,31);local v60=((v31(v56,32)==1) and  -1) or 1 ;if (v59==0) then if (v58==0) then return v60 * 0 ;else local v104=0;while true do if (v104==0) then v59=1;v57=0;break;end end end elseif (v59==(2666 -(555 + 64))) then return ((v58==0) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end local function v36(v61) local v62;if  not v61 then local v100=0;while true do if (v100==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;local v63={};for v77=1, #v62 do v63[v77]=v10(v9(v11(v62,v77,v77)));end return v14(v63);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64=0;local v65;local v66;local v67;local v68;local v69;local v70;while true do if (1==v64) then v69=v34();v70={};for v105=569 -(367 + 201) ,v69 do local v106=0;local v107;local v108;while true do if (v106==1) then if (v107==1) then v108=v32()~=0 ;elseif (v107==2) then v108=v35();elseif (v107==3) then v108=v36();end v70[v105]=v108;break;end if (v106==0) then v107=v32();v108=nil;v106=1;end end end v68[3]=v32();v64=2;end if (v64==2) then for v109=928 -(214 + 713) ,v34() do local v110=0;local v111;while true do if (v110==0) then v111=v32();if (v31(v111,1,1)==0) then local v122=0;local v123;local v124;local v125;while true do if (2==v122) then if (v31(v124,1,1)==1) then v125[2]=v70[v125[1 + 1 ]];end if (v31(v124,2,2)==1) then v125[3]=v70[v125[3]];end v122=3;end if (v122==1) then v125={v33(),v33(),nil,nil};if (v123==0) then local v131=0;while true do if (v131==0) then v125[3]=v33();v125[4]=v33();break;end end elseif (v123==1) then v125[3]=v34();elseif (v123==2) then v125[3]=v34() -(2^16) ;elseif (v123==3) then local v319=0;while true do if (v319==0) then v125[3]=v34() -(2^16) ;v125[4]=v33();break;end end end v122=2;end if (v122==3) then if (v31(v124,3,3)==1) then v125[4]=v70[v125[4]];end v65[v109]=v125;break;end if (v122==0) then v123=v31(v111,2,3);v124=v31(v111,4,6);v122=1;end end end break;end end end for v112=1,v34() do v66[v112-1 ]=v39();end return v68;end if (v64==0) then v65={};v66={};v67={};v68={v65,v66,nil,v67};v64=1;end end end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[1 + 1 ];local v76=v71[3];return function(...) local v79=v74;local v80=v75;local v81=v76;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -1 ;local v88={};local v89={};for v101=0,v87 do if (v101>=v81) then v85[v101-v81 ]=v86[v101 + 1 ];else v89[v101]=v86[v101 + (878 -(282 + 595)) ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do local v102=0;while true do if (v102==0) then v91=v79[v83];v92=v91[1];v102=1;end if (1==v102) then if (v92<=29) then if (v92<=14) then if (v92<=6) then if (v92<=2) then if (v92<=0) then do return v89[v91[2]]();end elseif (v92==1) then local v140=v91[2];local v141=v89[v140];for v301=v140 + 1 ,v84 do v15(v141,v89[v301]);end elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=4) then if (v92==3) then local v142=0;local v143;while true do if (v142==0) then v143=v91[2];do return v89[v143](v21(v89,v143 + 1 ,v91[3]));end break;end end else local v144=0;local v145;local v146;local v147;while true do if (v144==6) then if (v145>0) then if (v146>v89[v147 + 1 ]) then v83=v91[3];else v89[v147 + 3 + 0 ]=v146;end elseif (v146<v89[v147 + 1 ]) then v83=v91[3];else v89[v147 + 3 ]=v146;end break;end if (v144==0) then v145=nil;v146=nil;v147=nil;v144=1;end if (v144==3) then v89[v91[2]]=v89[v91[1640 -(1523 + 114) ]];v83=v83 + 1 ;v91=v79[v83];v144=4;end if (v144==4) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v144=5;end if (v144==2) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v144=3;end if (v144==1) then v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v144=2;end if (5==v144) then v147=v91[2];v146=v89[v147];v145=v89[v147 + 2 ];v144=6;end end end elseif (v92>5) then local v148=0;local v149;while true do if (1==v148) then v89[v91[2]]=v73[v91[3]];v83=v83 + (1066 -(68 + 997)) ;v91=v79[v83];v89[v91[2]]=v91[3];v148=2;end if (v148==0) then v149=nil;v73[v91[3]]=v89[v91[2]];v83=v83 + (1 -0) ;v91=v79[v83];v148=1;end if (4==v148) then v91=v79[v83];v89[v91[2]]=v91[3];break;end if (v148==3) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v148=4;end if (2==v148) then v83=v83 + 1 ;v91=v79[v83];v149=v91[2];v89[v149]=v89[v149](v89[v149 + 1 ]);v148=3;end end else v89[v91[2]]=v89[v91[3]][v89[v91[4]]];end elseif (v92<=10) then if (v92<=8) then if (v92==7) then local v152=0;local v153;while true do if (v152==0) then v153=v91[2];v89[v153]=v89[v153](v21(v89,v153 + (1271 -(226 + 1044)) ,v91[3]));break;end end else v89[v91[2]][v89[v91[3]]]=v91[17 -13 ];end elseif (v92>9) then local v156=0;local v157;local v158;local v159;local v160;while true do if (v156==3) then v91=v79[v83];v160=v91[2];v158,v159=v82(v89[v160](v21(v89,v160 + 1 ,v91[3])));v84=(v159 + v160) -1 ;v156=4;end if (v156==4) then v157=0 + 0 ;for v547=v160,v84 do local v548=0;while true do if (v548==0) then v157=v157 + 1 ;v89[v547]=v158[v157];break;end end end v83=v83 + (958 -(892 + 65)) ;v91=v79[v83];v156=5;end if (v156==1) then v83=v83 + 1 ;v91=v79[v83];v160=v91[2];v89[v160]=v89[v160](v21(v89,v160 + 1 ,v91[3]));v156=2;end if (v156==0) then v157=nil;v158,v159=nil;v160=nil;v89[v91[2]]=v91[3];v156=1;end if (v156==5) then v160=v91[2];v89[v160]=v89[v160](v21(v89,v160 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v156=6;end if (v156==2) then v83=v83 + (118 -(32 + 85)) ;v91=v79[v83];v89[v91[2 + 0 ]]=v91[3];v83=v83 + 1 ;v156=3;end if (v156==6) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end break;end end else local v161=0;while true do if (v161==5) then if (v89[v91[2]]<v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end break;end if (v161==3) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v161=4;end if (v161==2) then v89[v91[352 -(87 + 263) ]]=v91[3];v83=v83 + (181 -(67 + 113)) ;v91=v79[v83];v161=3;end if (v161==0) then v89[v91[2]]=v89[v91[7 -4 ]] + v91[4] ;v83=v83 + 1 ;v91=v79[v83];v161=1;end if (v161==4) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v161=5;end if (v161==1) then v89[v91[3 -1 ]]=v89[v91[4 -1 ]] + v91[4] ;v83=v83 + 1 ;v91=v79[v83];v161=2;end end end elseif (v92<=12) then if (v92==11) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;else local v163=0;local v164;local v165;local v166;while true do if (v163==2) then for v549=1,v91[4] do local v550=0;local v551;while true do if (v550==0) then v83=v83 + 1 ;v551=v79[v83];v550=1;end if (v550==1) then if (v551[1]==20) then v166[v549-(2 -1) ]={v89,v551[3 + 0 ]};else v166[v549-1 ]={v72,v551[3]};end v88[ #v88 + (3 -2) ]=v166;break;end end end v89[v91[2]]=v40(v164,v165,v73);break;end if (v163==1) then v166={};v165=v18({},{[v7("\248\229\226\121\228\194\194","\128\167\186\139\23")]=function(v552,v553) local v554=v166[v553];return v554[1][v554[2]];end,[v7("\120\50\20\176\159\130\73\9\31\173","\235\39\109\122\213\232")]=function(v555,v556,v557) local v558=0;local v559;while true do if (v558==0) then v559=v166[v556];v559[1][v559[2 + 0 ]]=v557;break;end end end});v163=2;end if (v163==0) then v164=v80[v91[3]];v165=nil;v163=1;end end end elseif (v92==13) then if (v91[2]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else local v167=0;local v168;local v169;local v170;local v171;while true do if (v167==2) then v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v167=3;end if (v167==1) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v167=2;end if (v167==4) then for v560=v171,v84 do local v561=0;while true do if (v561==0) then v168=v168 + 1 ;v89[v560]=v169[v168];break;end end end v83=v83 + 1 ;v91=v79[v83];v171=v91[2];v167=5;end if (v167==3) then v171=v91[2];v169,v170=v82(v89[v171](v21(v89,v171 + 1 ,v91[3])));v84=(v170 + v171) -1 ;v168=0;v167=4;end if (v167==5) then v89[v171](v21(v89,v171 + 1 ,v84));break;end if (v167==0) then v168=nil;v169,v170=nil;v171=nil;v89[v91[954 -(802 + 150) ]]=v72[v91[7 -4 ]];v167=1;end end end elseif (v92<=21) then if (v92<=17) then if (v92<=(27 -12)) then v89[v91[2]]=v91[3] + v89[v91[3 + 1 ]] ;elseif (v92>16) then local v172=0;local v173;local v174;local v175;local v176;while true do if (v172==9) then v83=v83 + (2 -1) ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[3 -1 ]]=v89[v91[1 + 2 ]]%v89[v91[6 -2 ]] ;v172=10;end if (8==v172) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3] + v89[v91[4]] ;v172=9;end if (v172==1) then v89[v91[2]]=v72[v91[1000 -(915 + 82) ]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v172=2;end if (v172==16) then v176=v91[2];v89[v176](v21(v89,v176 + 1 ,v84));break;end if (v172==15) then v174,v175=v82(v89[v176](v89[v176 + 1 ]));v84=(v175 + v176) -1 ;v173=0;for v562=v176,v84 do v173=v173 + 1 ;v89[v562]=v174[v173];end v83=v83 + 1 ;v91=v79[v83];v172=16;end if (v172==0) then v173=nil;v174,v175=nil;v176=nil;v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v172=1;end if (v172==12) then for v565=v176,v84 do local v566=0;while true do if (v566==0) then v173=v173 + 1 ;v89[v565]=v174[v173];break;end end end v83=v83 + 1 ;v91=v79[v83];v176=v91[2];v174,v175=v82(v89[v176](v21(v89,v176 + 1 ,v84)));v84=(v175 + v176) -1 ;v172=13;end if (v172==2) then v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v172=3;end if (v172==7) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v172=8;end if (v172==11) then v83=v83 + 1 + 0 ;v91=v79[v83];v176=v91[2];v174,v175=v82(v89[v176](v21(v89,v176 + 1 ,v91[3])));v84=(v175 + v176) -1 ;v173=0;v172=12;end if (10==v172) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3] + v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]] + v91[4] ;v172=11;end if (v172==13) then v173=0;for v567=v176,v84 do v173=v173 + 1 ;v89[v567]=v174[v173];end v83=v83 + 1 ;v91=v79[v83];v176=v91[2];v89[v176]=v89[v176](v21(v89,v176 + 1 ,v84));v172=14;end if (14==v172) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v91[4] ;v83=v83 + (792 -(368 + 423)) ;v91=v79[v83];v176=v91[2];v172=15;end if (v172==4) then v89[v91[2]]=v89[v91[3]] + v91[4] ;v83=v83 + 1 ;v91=v79[v83];v176=v91[2];v174,v175=v82(v89[v176](v21(v89,v176 + 1 + 0 ,v91[3])));v84=(v175 + v176) -(1 -0) ;v172=5;end if (5==v172) then v173=0;for v570=v176,v84 do local v571=0;while true do if (v571==0) then v173=v173 + 1 ;v89[v570]=v174[v173];break;end end end v83=v83 + (1188 -(1069 + 118)) ;v91=v79[v83];v176=v91[2];v89[v176]=v89[v176](v21(v89,v176 + 1 ,v84));v172=6;end if (v172==3) then v89[v91[2]]=v89[v91[3]];v83=v83 + (2 -1) ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v172=4;end if (v172==6) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v172=7;end end else v89[v91[2]]=v89[v91[3]][v91[4]];end elseif (v92<=19) then if (v92>18) then v89[v91[2]]= #v89[v91[3]];else v89[v91[6 -4 ]]=v40(v80[v91[3]],nil,v73);end elseif (v92>20) then local v181=0;local v182;local v183;local v184;while true do if (v181==2) then v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v181=3;end if (v181==0) then v182=nil;v183=nil;v184=nil;v89[v91[2]]={};v181=1;end if (v181==1) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + (19 -(10 + 8)) ;v181=2;end if (v181==3) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v184=v91[2];v181=4;end if (v181==4) then v183=v89[v184];v182=v89[v184 + (7 -5) ];if (v182>0) then if (v183>v89[v184 + 1 ]) then v83=v91[3];else v89[v184 + 3 ]=v183;end elseif (v183<v89[v184 + 1 ]) then v83=v91[3];else v89[v184 + 3 ]=v183;end break;end end else v89[v91[2]]=v89[v91[3]];end elseif (v92<=25) then if (v92<=23) then if (v92>22) then local v187=0;while true do if (v187==3) then v89[v91[2]]=v89[v91[2 + 1 ]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v187=4;end if (v187==1) then v89[v91[2]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v187=2;end if (v187==0) then v89[v91[2]]=v73[v91[3]];v83=v83 + (443 -(416 + 26)) ;v91=v79[v83];v187=1;end if (6==v187) then v89[v91[1488 -(998 + 488) ]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v187=7;end if (v187==7) then if  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[1 + 2 ];end break;end if (v187==4) then v89[v91[3 -1 ]]=v73[v91[441 -(145 + 293) ]];v83=v83 + 1 ;v91=v79[v83];v187=5;end if (2==v187) then v89[v91[6 -4 ]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v187=3;end if (v187==5) then v89[v91[2]]=v89[v91[433 -(44 + 386) ]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v187=6;end end else local v188;local v189;local v190,v191;local v192;v89[v91[2 + 0 ]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[774 -(201 + 571) ]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]={};v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];for v302=v91[2],v91[3] do v89[v302]=nil;end v83=v83 + 1 ;v91=v79[v83];v192=v91[2];v190,v191=v82(v89[v192](v21(v89,v192 + 1 ,v91[3])));v84=(v191 + v192) -1 ;v189=1138 -(116 + 1022) ;for v304=v192,v84 do local v305=0;while true do if (v305==0) then v189=v189 + 1 ;v89[v304]=v190[v189];break;end end end v83=v83 + (4 -3) ;v91=v79[v83];v192=v91[2];v188=v89[v192];for v306=v192 + 1 ,v84 do v15(v188,v89[v306]);end end elseif (v92==24) then local v201=0;local v202;while true do if (v201==0) then v202=v91[2];do return v21(v89,v202,v84);end break;end end else v89[v91[2]]=v72[v91[3]];end elseif (v92<=27) then if (v92==(16 + 10)) then local v205=0;local v206;local v207;local v208;local v209;while true do if (v205==4) then v209=v91[2];v207,v208=v82(v89[v209](v21(v89,v209 + (3 -2) ,v91[3])));v84=(v208 + v209) -1 ;v205=5;end if (v205==3) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v205=4;end if (2==v205) then v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v205=3;end if (v205==6) then v91=v79[v83];v209=v91[2];v89[v209](v21(v89,v209 + 1 ,v84));v205=7;end if (v205==0) then v206=nil;v207,v208=nil;v209=nil;v205=1;end if (v205==8) then v83=v83 + 1 ;v91=v79[v83];for v574=v91[2],v91[3] do v89[v574]=nil;end break;end if (v205==5) then v206=859 -(814 + 45) ;for v576=v209,v84 do local v577=0;while true do if (v577==0) then v206=v206 + 1 ;v89[v576]=v207[v206];break;end end end v83=v83 + 1 ;v205=6;end if (v205==1) then v89[v91[2]]=v72[v91[10 -7 ]];v83=v83 + 1 ;v91=v79[v83];v205=2;end if (v205==7) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v205=8;end end else v73[v91[3]]=v89[v91[2]];end elseif (v92==28) then v89[v91[2]][v89[v91[3]]]=v89[v91[4]];else local v214=0;local v215;local v216;local v217;while true do if (v214==0) then v215=v91[2];v216={v89[v215](v89[v215 + 1 ])};v214=1;end if (v214==1) then v217=0;for v578=v215,v91[4] do local v579=0;while true do if (v579==0) then v217=v217 + 1 ;v89[v578]=v216[v217];break;end end end break;end end end elseif (v92<=44) then if (v92<=(88 -52)) then if (v92<=32) then if (v92<=30) then for v136=v91[2],v91[3] do v89[v136]=nil;end elseif (v92==31) then v89[v91[2]]={};else v89[v91[1 + 1 ]]=v89[v91[3]]%v91[4] ;end elseif (v92<=34) then if (v92>33) then local v220;local v221;local v222;local v223,v224;local v225;v89[v91[2]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]][v91[2 + 2 ]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v89[v91[887 -(261 + 624) ]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v225=v91[2];v223,v224=v82(v89[v225](v89[v225 + (1 -0) ]));v84=(v224 + v225) -1 ;v222=1080 -(1020 + 60) ;for v307=v225,v84 do local v308=0;while true do if (v308==0) then v222=v222 + 1 ;v89[v307]=v223[v222];break;end end end v83=v83 + 1 ;v91=v79[v83];v225=v91[2];v89[v225]=v89[v225](v21(v89,v225 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v225=v91[2];v221=v89[v225];v220=v89[v225 + 2 ];if (v220>0) then if (v221>v89[v225 + 1 ]) then v83=v91[3];else v89[v225 + 3 ]=v221;end elseif (v221<v89[v225 + 1 ]) then v83=v91[3];else v89[v225 + 3 ]=v221;end else local v237=v91[3];local v238=v89[v237];for v309=v237 + 1 ,v91[4] do v238=v238   .. v89[v309] ;end v89[v91[2]]=v238;end elseif (v92==35) then local v240=0;local v241;while true do if (v240==0) then v241=v91[2];do return v21(v89,v241,v241 + v91[3] );end break;end end else local v242=v91[2];local v243=v91[4];local v244=v242 + 2 ;local v245={v89[v242](v89[v242 + 1 ],v89[v244])};for v310=1,v243 do v89[v244 + v310 ]=v245[v310];end local v246=v245[1];if v246 then local v315=0;while true do if (v315==0) then v89[v244]=v246;v83=v91[3];break;end end else v83=v83 + 1 ;end end elseif (v92<=40) then if (v92<=38) then if (v92>37) then local v247=0;local v248;local v249;local v250;local v251;while true do if (v247==2) then for v586=v248,v84 do local v587=0;while true do if (0==v587) then v251=v251 + 1 ;v89[v586]=v249[v251];break;end end end break;end if (v247==1) then v84=(v250 + v248) -1 ;v251=0 -0 ;v247=2;end if (v247==0) then v248=v91[1425 -(630 + 793) ];v249,v250=v82(v89[v248](v21(v89,v248 + 1 ,v91[3])));v247=1;end end else local v252=0;local v253;local v254;local v255;local v256;while true do if (v252==0) then v253=v91[9 -7 ];v254,v255=v82(v89[v253](v89[v253 + 1 ]));v252=1;end if (v252==2) then for v588=v253,v84 do v256=v256 + 1 ;v89[v588]=v254[v256];end break;end if (1==v252) then v84=(v255 + v253) -1 ;v256=0;v252=2;end end end elseif (v92>(16 + 23)) then local v257=0;while true do if (v257==0) then v89[v91[2]]=v91[9 -6 ]~=(1747 -(760 + 987)) ;v83=v83 + 1 ;break;end end else local v258=0;local v259;local v260;local v261;local v262;while true do if (v258==1) then v84=(v261 + v259) -1 ;v262=0;v258=2;end if (v258==0) then v259=v91[2];v260,v261=v82(v89[v259](v21(v89,v259 + 1 ,v84)));v258=1;end if (v258==2) then for v591=v259,v84 do local v592=0;while true do if (v592==0) then v262=v262 + 1 ;v89[v591]=v260[v262];break;end end end break;end end end elseif (v92<=42) then if (v92==41) then local v263=0;local v264;local v265;local v266;local v267;while true do if (v263==4) then for v593=v267,v84 do local v594=0;while true do if (v594==0) then v264=v264 + 1 ;v89[v593]=v265[v264];break;end end end v83=v83 + 1 ;v91=v79[v83];v267=v91[1915 -(1789 + 124) ];v263=5;end if (v263==5) then v89[v267](v21(v89,v267 + 1 ,v84));break;end if (v263==1) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v263=2;end if (0==v263) then v264=nil;v265,v266=nil;v267=nil;v89[v91[2]]=v72[v91[3]];v263=1;end if (v263==3) then v267=v91[2];v265,v266=v82(v89[v267](v21(v89,v267 + 1 ,v91[3])));v84=(v266 + v267) -1 ;v264=0;v263=4;end if (v263==2) then v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v263=3;end end else local v268=0;local v269;local v270;local v271;while true do if (v268==1) then v271=v89[v269] + v270 ;v89[v269]=v271;v268=2;end if (v268==0) then v269=v91[2];v270=v89[v269 + 2 ];v268=1;end if (v268==2) then if (v270>(766 -(745 + 21))) then if (v271<=v89[v269 + 1 ]) then local v635=0;while true do if (v635==0) then v83=v91[3];v89[v269 + 3 ]=v271;break;end end end elseif (v271>=v89[v269 + 1 ]) then local v636=0;while true do if (v636==0) then v83=v91[2 + 1 ];v89[v269 + 3 ]=v271;break;end end end break;end end end elseif (v92>43) then local v272=0;local v273;local v274;local v275;local v276;while true do if (v272==1) then v89[v91[5 -3 ]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v272=2;end if (v272==7) then v83=v83 + 1 ;v91=v79[v83];v83=v91[3];break;end if (v272==4) then v276=v91[2 + 0 ];v274,v275=v82(v89[v276](v21(v89,v276 + 1 ,v91[1058 -(87 + 968) ])));v84=(v275 + v276) -1 ;v272=5;end if (v272==5) then v273=0;for v595=v276,v84 do local v596=0;while true do if (v596==0) then v273=v273 + 1 ;v89[v595]=v274[v273];break;end end end v83=v83 + 1 ;v272=6;end if (v272==3) then v89[v91[2]]=v91[3];v83=v83 + 1 + 0 ;v91=v79[v83];v272=4;end if (6==v272) then v91=v79[v83];v276=v91[2];v89[v276](v21(v89,v276 + 1 ,v84));v272=7;end if (v272==0) then v273=nil;v274,v275=nil;v276=nil;v272=1;end if (v272==2) then v89[v91[2]]=v91[11 -8 ];v83=v83 + 1 ;v91=v79[v83];v272=3;end end else do return;end end elseif (v92<=52) then if (v92<=48) then if (v92<=(202 -156)) then if (v92>45) then local v277=0;local v278;while true do if (0==v277) then v278=v91[2];v89[v278]=v89[v278](v21(v89,v278 + 1 ,v84));break;end end else v89[v91[2 + 0 ]]=v89[v91[3]] + v91[4] ;end elseif (v92>47) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else local v280=0;local v281;local v282;local v283;while true do if (v280==0) then v281=v91[2];v282=v89[v281];v280=1;end if (v280==1) then v283=v89[v281 + 2 ];if (v283>0) then if (v282>v89[v281 + 1 ]) then v83=v91[3];else v89[v281 + 3 ]=v282;end elseif (v282<v89[v281 + 1 ]) then v83=v91[3];else v89[v281 + 3 ]=v282;end break;end end end elseif (v92<=50) then if (v92==49) then v89[v91[2]]=v91[3]~=0 ;else v89[v91[2]]=v91[3];end elseif (v92==51) then do return v89[v91[2]];end else local v287=0;local v288;while true do if (v287==0) then v288=v91[2];v89[v288](v21(v89,v288 + 1 ,v84));break;end end end elseif (v92<=56) then if (v92<=54) then if (v92==53) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end else local v289=v91[2];v89[v289]=v89[v289](v89[v289 + 1 ]);end elseif (v92>55) then local v291=v91[2];v89[v291](v89[v291 + 1 ]);else v83=v91[3];end elseif (v92<=58) then if (v92==57) then v89[v91[2]]=v73[v91[3]];else v89[v91[2]]=v89[v91[3]] * v89[v91[8 -4 ]] ;end elseif (v92==59) then if (v89[v91[2]]<v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else local v296=0;local v297;local v298;local v299;while true do if (v296==0) then v297=nil;v298=nil;v299=nil;v89[v91[2]]=v72[v91[3]];v296=1;end if (v296==5) then v297=v89[v298];for v597=v298 + (1818 -(1703 + 114)) ,v91[4] do v297=v297   .. v89[v597] ;end v89[v91[2]]=v297;v83=v83 + 1 ;v296=6;end if (1==v296) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + (1414 -(447 + 966)) ;v296=2;end if (v296==2) then v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v296=3;end if (v296==3) then v299=v91[5 -3 ];v89[v299]=v89[v299](v21(v89,v299 + 1 ,v91[3]));v83=v83 + 1 ;v91=v79[v83];v296=4;end if (v296==6) then v91=v79[v83];v299=v91[2];v89[v299](v89[v299 + (702 -(376 + 325)) ]);break;end if (4==v296) then v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v298=v91[3];v296=5;end end end v83=v83 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012173Q00013Q00206Q000200122Q000100013Q00202Q00010001000300122Q000200013Q00202Q00020002000400122Q000300053Q00062Q0003000A000100010004373Q000A0001001239000300063Q002010000400030007001239000500083Q002010000500050009001239000600083Q00201000060006000A00060C00073Q000100062Q00143Q00064Q00148Q00143Q00044Q00143Q00014Q00143Q00024Q00143Q00053Q001239000800013Q00201000080008000B0012390009000C3Q001239000A000D3Q00060C000B0001000100052Q00143Q00074Q00143Q00094Q00143Q00084Q00143Q000A4Q00143Q000B4Q0014000C000B6Q000C00014Q0018000C6Q002B3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q001500025Q00122Q000300016Q00045Q00122Q000500013Q00042Q0003002100012Q001900076Q0011000800026Q000900016Q000A00026Q000B00036Q000C00046Q000D8Q000E00063Q00202Q000F000600014Q000C000F6Q000B3Q00024Q000C00036Q000D00046Q000E00016Q000F00016Q000F0006000F00102Q000F0001000F4Q001000016Q00100006001000102Q00100001001000202Q0010001000014Q000D00106Q000C8Q000A3Q000200202Q000A000A00024Q0009000A6Q00073Q000100042A0003000500012Q0019000300054Q0014000400024Q0003000300044Q001800036Q002B3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00060C5Q000100012Q00198Q0016000100016Q000200026Q000300026Q00048Q000500036Q00068Q000700076Q000500076Q00043Q000100201000040004000100120A000500026Q00030005000200122Q000400036Q000200046Q00013Q000200262Q00010018000100040004373Q001800012Q001400016Q001F00026Q0003000100024Q001800015Q0004373Q001B00012Q0019000100046Q000100014Q001800016Q002B3Q00013Q00013Q00163Q00024Q00F0E4FD40026Q003440025Q00C05940025Q005D3241024Q0087C63241023Q00406E9B5E4103053Q007072696E7403043Q0057BA687903083Q00E523C81D1C487314026Q00F03F03193Q003B1BB9C4CC8EDD201CFFC5D7889C3716B1D5D699D53B17AC9003073Q00BC5479DFB1BFED03343Q00E2B75FCA8AC8B55189BAF2AF44C08FC6A86B8996C8B75A8982CEB646C584D5BE5AD0C1C9B252CCC1D5B35FDAC1D2AF44C08FC6FA03053Q00E1A1DB36A9028Q0003053Q007061697273030D3Q0060225C284C023C5F255B21130203073Q005A30503545292203153Q0073696576655F6F665F657261746F737468656E6573025Q00407A4003163Q0003B3D497E724FCCCD5F53EAFC0D6E72EFCC1D2E03FE303053Q00934BDCA3B7014F3Q0006303Q004D00013Q0004373Q004D0001001232000100013Q00200900020001000200202Q00010002000300122Q000200043Q00122Q000300053Q00122Q000400063Q00062Q00020010000100030004373Q00100001001239000500074Q002900065Q00122Q000700083Q00122Q000800096Q000600086Q00053Q000100100F0005000A000400063B00030019000100050004373Q00190001001239000500074Q002900065Q00122Q0007000B3Q00122Q0008000C6Q000600086Q00053Q0001001239000500074Q001A00065Q00122Q0007000D3Q00122Q0008000E6Q000600086Q00053Q000100122Q0005000F6Q000600063Q002635000500340001000A0004373Q00340001001239000700104Q0014000800064Q001D0007000200090004373Q00310001000630000B003100013Q0004373Q00310001001239000C00074Q003C000D5Q00122Q000E00113Q00122Q000F00126Q000D000F00024Q000E000A6Q000D000D000E4Q000C0002000100062400070027000100020004373Q002700010004373Q00460001002635000500210001000F0004373Q002100010012320007000F3Q002635000700400001000F0004373Q0040000100021200085Q001206000800133Q00122Q000800133Q00122Q000900146Q0008000200024Q000600083Q00122Q0007000A3Q002635000700370001000A0004373Q003700010012320005000A3Q0004373Q002100010004373Q003700010004373Q00210001001239000500074Q002C00065Q00122Q000700153Q00122Q000800166Q000600086Q00053Q000100044Q004E000100201000013Q000A2Q002B3Q00013Q00013Q00073Q00028Q00026Q00F03F027Q004003043Q006D61746803053Q00666C2Q6F7203043Q00737172740100013F3Q001232000100014Q001E000200033Q00263500010007000100010004373Q00070001001232000200014Q001E000300033Q001232000100023Q00263500010002000100020004373Q0002000100263500020020000100010004373Q00200001001232000400013Q000E0D00020010000100040004373Q00100001001232000200023Q0004373Q002000010026350004000C000100010004373Q000C00012Q001F00056Q0004000300053Q00122Q000500026Q00065Q00122Q000700023Q00042Q0005001E0001000E0D0002001B000100080004373Q001B00012Q002800096Q0031000900014Q001C00030008000900042A000500180001001232000400023Q0004373Q000C000100263500020009000100020004373Q00090001001232000400013Q00263500040023000100010004373Q00230001001232000500033Q001222000600043Q00202Q00060006000500122Q000700043Q00202Q0007000700064Q00088Q000700086Q00063Q000200122Q000700023Q00042Q0005003900012Q00050009000300080006300009003800013Q0004373Q003800012Q003A0009000800082Q0014000A6Q0014000B00083Q00042F0009003800010020080003000C000700042A00090036000100042A0005002F00012Q0033000300023Q0004373Q002300010004373Q000900010004373Q003E00010004373Q000200012Q002B3Q00017Q00",v17(),...);

