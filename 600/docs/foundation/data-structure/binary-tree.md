# 1. 树的定义

树是 $n~(n\ge 0)$ 个结点的有限集。当 $n=0$ 时，称为**空树**。在任意一棵非空树中应满足：

- 有且仅有一个特定的称为**根**的结点
- 当 $n\gt1$ 时，其余结点可分为 $m~(m \gt 0)$ 个互不相交的有限集 $T_1,T_2,\cdots,T_m$，其中每个集合本身又是一棵树，并且称为根的**子树**

# 2. 树的相关概念

<center><svg id="SvgjsSvg1006" width="903.3923873901367" height="364.6042175292969" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1007"></defs><g id="SvgjsG1008" transform="translate(371.31646401541605,28.524307250976562)"><path id="SvgjsPath1009" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1010"><text id="SvgjsText1011" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1012" dy="18" x="21"><tspan id="SvgjsTspan1013" style="text-decoration:;">A</tspan></tspan></text></g></g><g id="SvgjsG1014" transform="translate(228.81646401541576,121.42906915573846)"><path id="SvgjsPath1015" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#81c784"></path><g id="SvgjsG1016"><text id="SvgjsText1017" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1018" dy="18" x="21"><tspan id="SvgjsTspan1019" style="text-decoration:;">B</tspan></tspan></text></g></g><g id="SvgjsG1020" transform="translate(371.31646401541605,121.42906915573846)"><path id="SvgjsPath1021" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#81c784"></path><g id="SvgjsG1022"><text id="SvgjsText1023" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1024" dy="18" x="21"><tspan id="SvgjsTspan1025" style="text-decoration:;">C</tspan></tspan></text></g></g><g id="SvgjsG1026" transform="translate(522.1497973487478,121.42906915573843)"><path id="SvgjsPath1027" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#81c784"></path><g id="SvgjsG1028"><text id="SvgjsText1029" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1030" dy="18" x="21"><tspan id="SvgjsTspan1031" style="text-decoration:;">D</tspan></tspan></text></g></g><g id="SvgjsG1032" transform="translate(178.02858522753667,204.1000648267329)"><path id="SvgjsPath1033" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1034"><text id="SvgjsText1035" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1036" dy="18" x="21"><tspan id="SvgjsTspan1037" style="text-decoration:;">E</tspan></tspan></text></g></g><g id="SvgjsG1038" transform="translate(279.1497973487494,204.1000648267329)"><path id="SvgjsPath1039" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#81c784"></path><g id="SvgjsG1040"><text id="SvgjsText1041" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1042" dy="18" x="21"><tspan id="SvgjsTspan1043" style="text-decoration:;">F</tspan></tspan></text></g></g><g id="SvgjsG1044" transform="translate(371.31646401541605,204.10006482673285)"><path id="SvgjsPath1045" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1046"><text id="SvgjsText1047" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1048" dy="18" x="21"><tspan id="SvgjsTspan1049" style="text-decoration:;">G</tspan></tspan></text></g></g><g id="SvgjsG1050" transform="translate(445.5307497297006,204.1000648267329)"><path id="SvgjsPath1051" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#81c784"></path><g id="SvgjsG1052"><text id="SvgjsText1053" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1054" dy="18" x="21"><tspan id="SvgjsTspan1055" style="text-decoration:;">H</tspan></tspan></text></g></g><g id="SvgjsG1056" transform="translate(522.1497973487478,204.10006482673302)"><path id="SvgjsPath1057" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1058"><text id="SvgjsText1059" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1060" dy="18" x="21"><tspan id="SvgjsTspan1061" style="text-decoration:;">I</tspan></tspan></text></g></g><g id="SvgjsG1062" transform="translate(598.7688449677947,204.10006482673313)"><path id="SvgjsPath1063" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1064"><text id="SvgjsText1065" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1066" dy="18" x="21"><tspan id="SvgjsTspan1067" style="text-decoration:;">J</tspan></tspan></text></g></g><g id="SvgjsG1068" transform="translate(223.1497973487492,297.6195453462142)"><path id="SvgjsPath1069" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1070"><text id="SvgjsText1071" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1072" dy="18" x="21"><tspan id="SvgjsTspan1073" style="text-decoration:;">K</tspan></tspan></text></g></g><g id="SvgjsG1074" transform="translate(344.0069402058922,297.61954534621424)"><path id="SvgjsPath1075" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1076"><text id="SvgjsText1077" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1078" dy="18" x="21"><tspan id="SvgjsTspan1079" style="text-decoration:;">L</tspan></tspan></text></g></g><g id="SvgjsG1080" transform="translate(445.5307497297006,297.6195453462142)"><path id="SvgjsPath1081" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1082"><text id="SvgjsText1083" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1084" dy="18" x="21"><tspan id="SvgjsTspan1085" style="text-decoration:;">M</tspan></tspan></text></g></g><g id="SvgjsG1086"><path id="SvgjsPath1087" d="M266.9664236988825 129.20190651212863L378.44758097083934 65.6891976608863" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1088"><path id="SvgjsPath1089" d="M392.3164640154158 120.42906915573846L392.3164640154158 71.52430725097656" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1090"><path id="SvgjsPath1091" d="M528.220104469203 126.90280751218583L409.55571389275656 62.6740837498927" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1092"><path id="SvgjsPath1093" d="M211.03387450540822 206.79937150750504L234.20448764451902 157.44644553128472" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1094"><path id="SvgjsPath1095" d="M288.2957551571957 206.29191737620823L263.7175361082619 158.74447402444943" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1096"><path id="SvgjsPath1097" d="M392.3164640154156 203.10006482673285L392.3164640154158 164.42906915573846" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1098"><path id="SvgjsPath1099" d="M543.1497973487478 203.10006482673302L543.1497973487478 164.42906915573843" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1100"><path id="SvgjsPath1101" d="M478.889226070448 206.9544392209296L524.7581116483415 154.9227202852404" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1102"><path id="SvgjsPath1103" d="M605.6483100606146 208.296927545902L557.908265204535 157.3649663163907" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1104"><path id="SvgjsPath1105" d="M255.22025787867676 299.3909106793267L287.5671881169441 243.21259476183025" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1106"><path id="SvgjsPath1107" d="M350.6260036797728 302.4178416743924L316.5174412159055 239.30393504723105" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1108"><path id="SvgjsPath1109" d="M466.53074972970046 296.6195453462142L466.5307497297006 247.10006482673293" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1110"><path id="SvgjsPath1111" d="M187.0370101928711 92.34126608712322L700.3703435262045 92.34126608712322" stroke-dasharray="8,5" stroke="#e57373" stroke-width="1" fill="none"></path></g><g id="SvgjsG1112"><path id="SvgjsPath1113" d="M184.23114322480717 183.2936470395043L697.0370101928711 183.2936470395043" stroke-dasharray="8,5" stroke="#e57373" stroke-width="1" fill="none"></path></g><g id="SvgjsG1114"><path id="SvgjsPath1115" d="M185.37034352620452 277.57936132521866L694.5370101928711 277.57936132521866" stroke-dasharray="8,5" stroke="#e57373" stroke-width="1" fill="none"></path></g><g id="SvgjsG1116" transform="translate(632.2073337009979,29.524307250976577)"><path id="SvgjsPath1117" d="M 0 0L 120 0L 120 40L 0 40Z" stroke="none" fill="none"></path><g id="SvgjsG1118"><text id="SvgjsText1119" font-family="微软雅黑" text-anchor="middle" font-size="14px" width="120px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="9.25" transform="rotate(0)"><tspan id="SvgjsTspan1120" dy="17" x="60"><tspan id="SvgjsTspan1121" style="text-decoration:;">第一层</tspan></tspan></text></g></g><g id="SvgjsG1122" transform="translate(632.2073337009979,122.42906915573843)"><path id="SvgjsPath1123" d="M 0 0L 120 0L 120 40L 0 40Z" stroke="none" fill="none"></path><g id="SvgjsG1124"><text id="SvgjsText1125" font-family="微软雅黑" text-anchor="middle" font-size="14px" width="120px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="9.25" transform="rotate(0)"><tspan id="SvgjsTspan1126" dy="17" x="60"><tspan id="SvgjsTspan1127" style="text-decoration:;">第二层</tspan></tspan></text></g></g><g id="SvgjsG1128" transform="translate(632.2073337009981,210.10006482673333)"><path id="SvgjsPath1129" d="M 0 0L 120 0L 120 40L 0 40Z" stroke="none" fill="none"></path><g id="SvgjsG1130"><text id="SvgjsText1131" font-family="微软雅黑" text-anchor="middle" font-size="14px" width="120px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="9.25" transform="rotate(0)"><tspan id="SvgjsTspan1132" dy="17" x="60"><tspan id="SvgjsTspan1133" style="text-decoration:;">第三层</tspan></tspan></text></g></g><g id="SvgjsG1134" transform="translate(632.2073337009984,298.6195453462142)"><path id="SvgjsPath1135" d="M 0 0L 120 0L 120 40L 0 40Z" stroke="none" fill="none"></path><g id="SvgjsG1136"><text id="SvgjsText1137" font-family="微软雅黑" text-anchor="middle" font-size="14px" width="120px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="9.25" transform="rotate(0)"><tspan id="SvgjsTspan1138" dy="17" x="60"><tspan id="SvgjsTspan1139" style="text-decoration:;">第四层</tspan></tspan></text></g></g><g id="SvgjsG1140" transform="translate(25.00694020589188,25.014455159505246)"><path id="SvgjsPath1141" d="M 133.6967366536459 0Q 124.6967366536459 0 124.6967366536459 9L 124.6967366536459 145.3025450933544Q 124.6967366536459 154.3025450933544 111.6967366536459 154.3025450933544Q 124.6967366536459 154.3025450933544 124.6967366536459 163.3025450933544L 124.6967366536459 299.6050901867088Q 124.6967366536459 308.6050901867088 133.6967366536459 308.6050901867088" stroke="rgba(50,50,50,1)" stroke-width="2" fill="none"></path><path id="SvgjsPath1142" d="M 0 0L 133.6967366536459 0L 133.6967366536459 308.6050901867088L 0 308.6050901867088Z" stroke="none" fill="none"></path><g id="SvgjsG1143"><text id="SvgjsText1144" font-family="微软雅黑" text-anchor="end" font-size="13px" width="107px" fill="#323232" font-weight="400" align="middle" lineHeight="125%" anchor="end" family="微软雅黑" size="13px" weight="400" font-style="" opacity="1" y="144.6775450933544" transform="rotate(0)"></text></g></g><g id="SvgjsG1145" transform="translate(98.31646401541542,136.40958863625704)"><path id="SvgjsPath1146" d="M 0 0L 30.000000000000014 0L 30.000000000000014 87.85714285714286L 0 87.85714285714286Z" stroke="none" fill="none"></path><g id="SvgjsG1147"><text id="SvgjsText1148" font-family="微软雅黑" text-anchor="middle" font-size="14px" width="31px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="7.178571428571431" transform="rotate(0)"><tspan id="SvgjsTspan1149" dy="17" x="15.5"><tspan id="SvgjsTspan1150" style="text-decoration:;">树</tspan></tspan><tspan id="SvgjsTspan1151" dy="17" x="15.5"><tspan id="SvgjsTspan1152" style="text-decoration:;">高</tspan></tspan><tspan id="SvgjsTspan1153" dy="17" x="15.5"><tspan id="SvgjsTspan1154" style="text-decoration:;">为</tspan></tspan><tspan id="SvgjsTspan1155" dy="17" x="15.5"><tspan id="SvgjsTspan1156" style="text-decoration:;">4</tspan></tspan></text></g></g><g id="SvgjsG1157" transform="translate(764.6736068725586,246.1000648267331)"><path id="SvgjsPath1158" d="M 0 11.754248034491493C 0 -3.918082678163831 23.820520024175153 -3.918082678163831 23.820520024175153 11.754248034491493C 23.820520024175153 27.426578747146817 0 27.426578747146817 0 11.754248034491493Z" stroke-dasharray="10,6" stroke="rgba(229,115,115,1)" stroke-width="1" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1159"><text id="SvgjsText1160" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="4px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="0.3792480344914928" transform="rotate(0)"></text></g></g><g id="SvgjsG1161" transform="translate(764.6736068725586,276.4826810692279)"><path id="SvgjsPath1162" d="M 0 11.754248034491493C 0 -3.918082678163831 23.820520024175153 -3.918082678163831 23.820520024175153 11.754248034491493C 23.820520024175153 27.426578747146817 0 27.426578747146817 0 11.754248034491493Z" stroke-dasharray="10,6" stroke="rgba(229,115,115,1)" stroke-width="1" fill-opacity="1" fill="#81c784"></path><g id="SvgjsG1163"><text id="SvgjsText1164" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="4px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="0.3792480344914928" transform="rotate(0)"></text></g></g><g id="SvgjsG1165" transform="translate(764.6736068725586,306.8652973117227)"><path id="SvgjsPath1166" d="M 0 11.754248034491493C 0 -3.918082678163831 23.820520024175153 -3.918082678163831 23.820520024175153 11.754248034491493C 23.820520024175153 27.426578747146817 0 27.426578747146817 0 11.754248034491493Z" stroke-dasharray="10,6" stroke="rgba(229,115,115,1)" stroke-width="1" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1167"><text id="SvgjsText1168" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="4px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="0.3792480344914928" transform="rotate(0)"></text></g></g><g id="SvgjsG1169" transform="translate(799.5150260086916,242.85431286122474)"><path id="SvgjsPath1170" d="M 0 0L 48.72482278844643 0L 48.72482278844643 29.99999999999966L 0 29.99999999999966Z" stroke="none" fill="none"></path><g id="SvgjsG1171"><text id="SvgjsText1172" font-family="微软雅黑" text-anchor="start" font-size="14px" width="49px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="start" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="4.2499999999998295" transform="rotate(0)"><tspan id="SvgjsTspan1173" dy="17" x="0"><tspan id="SvgjsTspan1174" style="text-decoration:;">根结点</tspan></tspan></text></g></g><g id="SvgjsG1175" transform="translate(799.3936949509846,276.41675545329974)"><path id="SvgjsPath1176" d="M 0 0L 79.73671567309088 0L 79.73671567309088 23.64034730083938L 0 23.64034730083938Z" stroke="none" fill="none"></path><g id="SvgjsG1177"><text id="SvgjsText1178" font-family="微软雅黑" text-anchor="start" font-size="14px" width="80px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="start" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="1.0701736504196901" transform="rotate(0)"><tspan id="SvgjsTspan1179" dy="17" x="0"><tspan id="SvgjsTspan1180" style="text-decoration:;">内部结点</tspan></tspan></text></g></g><g id="SvgjsG1181" transform="translate(799.5150260086917,304.5625949793881)"><path id="SvgjsPath1182" d="M 0 0L 67.1863612499858 0L 67.1863612499858 28.113900733652144L 0 28.113900733652144Z" stroke="none" fill="none"></path><g id="SvgjsG1183"><text id="SvgjsText1184" font-family="微软雅黑" text-anchor="start" font-size="14px" width="68px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="start" family="微软雅黑" size="14px" weight="700" font-style="" opacity="1" y="3.3069503668260722" transform="rotate(0)"><tspan id="SvgjsTspan1185" dy="17" x="0"><tspan id="SvgjsTspan1186" style="text-decoration:;">叶子结点</tspan></tspan></text></g></g></svg></center>

- **结点定义**

  考虑加点 $K$。根 $A$ 到结点 $K$ 的唯一路径上的任意结点，称为 $K$ 的**祖先**。如结点 $B$ 是结点 $K$ 的祖先，而结点 $K$ 是结点 $B$ 的**子孙**。其中，结点 $F$ 是结点 $K$ 的**双亲**，结点 $K$ 是结点 $F$ 的**孩子**。结点 $K$ 和结点 $L$ 有共同的双亲，因此称结点 $L$ 是结点 $K$ 的**兄弟**。

- **结点的度**

  树中一个结点的孩子个数称为该**结点的度**，如结点 $A$ 的度为 $3$，结点 $C$ 的度为 $1$。

- **树的度**

  树中结点的最大度数称为**树的度**，该树的度为 $3$。

- **分支结点与叶子结点**

  度大于 $0$ 的结点称为**分支结点**，度为 $0$ 的结点称为**叶子结点**。

- **结点的深度**、**高度和层次**

  结点的层次从树根开始定义，根结点为第 $1$ 层，它的子结点为第 $2$ 层，依次类推。双亲在同一层的结点互为堂兄弟。

  **结点的深度**是从根结点开始自顶向下逐层累加的。

  **结点的高度**是从叶结点开始自底向上逐层累加的。

- **有序树与无序树**

  树中结点的各子树从左到右是有次序的，不能互换，称该树为有序树，否则称为无序树。

- **路径和路径长度**

  树中两个结点之间的路径是由这两个结点之间所经过的结点序列构成的，而路径长度是路径上所经过的边的个数。

- **森林**

  森林是 $m~(m \ge 0)$ 棵互不相交的树的集合。

# 3. 二叉树

## 3.1 二叉树定义

二叉树是另一种树形结构，其特点是每个结点至多只有两棵子树（即二叉树中不存在度大于 $2$ 的结点），并且二叉树的子树有左右之分，其次序不能任意颠倒。

与树相似，二叉树也以递归的形式定义。二叉树是 $n~(n≥0)$ 个结点的有限集合：

- 或者为空二叉树，即 $n=0$
- 或者由一个根结点和两个互不相交的被称为根的左子树和右子树组成。左子树和右子树又分别是一棵二叉树

二叉树是有序树，若将其左、右子树颠倒，则成为另一棵不同的二叉树。二叉树的五种基本形态如下所示：

<center><svg id="SvgjsSvg1048" width="764.326416015625" height="171.513916015625" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1049"></defs><g id="SvgjsG1050" transform="translate(176.47268095470486,31.345143503955825)"><path id="SvgjsPath1051" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1052"><text id="SvgjsText1053" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1054" transform="translate(261.3298238118492,100.52581060500324)"><path id="SvgjsPath1055" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1056"><text id="SvgjsText1057" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1058" transform="translate(36.853633335657605,31.345143503955825)"><path id="SvgjsPath1059" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1060"><text id="SvgjsText1061" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1062"><path id="SvgjsPath1063" d="M91.0103759765625 25.00633008552208L25.0103759765625 80.00633008552211" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1064" transform="translate(321.0917285737521,31.345143503955825)"><path id="SvgjsPath1065" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1066"><text id="SvgjsText1067" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1068"><path id="SvgjsPath1069" d="M295.4511444439506 103.50912611727432L327.5588716397755 69.21081062089678" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1070" transform="translate(437.09172857375233,35.345143503955825)"><path id="SvgjsPath1071" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1072"><text id="SvgjsText1073" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1074" transform="translate(495.3298238118491,104.52581060500324)"><path id="SvgjsPath1075" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1076"><text id="SvgjsText1077" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1078"><path id="SvgjsPath1079" d="M499.6315866766713 112.1783266331114L472.29974247978726 73.28262647283816" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1080" transform="translate(579.3298238118493,104.52581060500324)"><path id="SvgjsPath1081" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1082"><text id="SvgjsText1083" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1084" transform="translate(639.0917285737523,35.345143503955825)"><path id="SvgjsPath1085" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1086"><text id="SvgjsText1087" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1088" transform="translate(697.3298238118491,104.52581060500324)"><path id="SvgjsPath1089" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1090"><text id="SvgjsText1091" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1092"><path id="SvgjsPath1093" d="M613.4511444439509 107.50912611727438L645.5588716397756 73.21081062089684" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1094"><path id="SvgjsPath1095" d="M701.6315866766713 112.1783266331114L674.2997424797873 73.28262647283816" stroke="#323232" stroke-width="2" fill="none"></path></g></svg></center>

## 3.2 几个特殊的二叉树

### 3.2.1 满二叉树

<center><svg id="SvgjsSvg1096" width="332.0069580078125" height="268.5798645019531" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1097"></defs><g id="SvgjsG1098" transform="translate(145.17755562918558,25.01043701171875)"><path id="SvgjsPath1099" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1100"><text id="SvgjsText1101" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1102" transform="translate(72.67755562918529,118.91519891648065)"><path id="SvgjsPath1103" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#388e3c"></path><g id="SvgjsG1104"><text id="SvgjsText1105" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1106" transform="translate(219.86803181966172,118.91519891648065)"><path id="SvgjsPath1107" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#388e3c"></path><g id="SvgjsG1108"><text id="SvgjsText1109" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1110" transform="translate(25.01088896251872,201.5861945874751)"><path id="SvgjsPath1111" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1112"><text id="SvgjsText1113" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1114" transform="translate(114.67755562918529,201.5861945874751)"><path id="SvgjsPath1115" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1116"><text id="SvgjsText1117" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1118" transform="translate(177.86803181966172,201.5861945874751)"><path id="SvgjsPath1119" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1120"><text id="SvgjsText1121" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1122" transform="translate(266.01088896251736,201.58619458747512)"><path id="SvgjsPath1123" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1124"><text id="SvgjsText1125" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1126"><path id="SvgjsPath1127" d="M94.39824737196182 118.22194325520283L152.45686388640894 62.37356565407437" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1128"><path id="SvgjsPath1129" d="M240.17234803024957 118.19685076610429L183.23304894808751 59.402552549152816" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1130"><path id="SvgjsPath1131" d="M46.574856255279855 200.76039746184696L77.92659355951886 154.85317042651246" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1132"><path id="SvgjsPath1133" d="M135.1521200007655 200.73536123106086L107.64486575903001 156.19310298599044" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1134"><path id="SvgjsPath1135" d="M199.33297914303546 200.70085624170687L224.20495700456092 153.34040350025546" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1136"><path id="SvgjsPath1137" d="M286.45106124394295 200.75758555692107L255.50245235975603 154.95010594547128" stroke="#323232" stroke-width="2" fill="none"></path></g></svg></center>

一棵高度为 $h$，且含有 $2^h - 1$ 个结点的二叉树称为满二叉树，如上图所示。满二叉树的叶子结点都集中在二叉树的最下一层，并且除叶子结点之外的每个结点度数均为 $2$。

> [!NOTE]
>
> 可以对满二叉树按层序编号：约定编号从根结点(根结点编号为 $1$)起，自上而下，自左向右。这样，每个结点对应一个编号，对于编号为 $i$ 的结点，若有双亲，则其双亲为$\displaystyle\lfloor \frac{i}{2}\rfloor$,若有左孩子，则左孩子为 $2i$；若有右孩子，则右孩子为 $2i+ 1$。

### 3.2.2 完全二叉树

<center><svg id="SvgjsSvg1138" width="286.8611145019531" height="268.5798645019531" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1139"></defs><g id="SvgjsG1140" transform="translate(145.17755562918558,25.01043701171875)"><path id="SvgjsPath1141" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffb74d"></path><g id="SvgjsG1142"><text id="SvgjsText1143" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1144" dy="18" x="21"><tspan id="SvgjsTspan1145" style="text-decoration:;">1</tspan></tspan></text></g></g><g id="SvgjsG1146" transform="translate(72.67755562918529,118.91519891648065)"><path id="SvgjsPath1147" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#388e3c"></path><g id="SvgjsG1148"><text id="SvgjsText1149" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1150" dy="18" x="21"><tspan id="SvgjsTspan1151" style="text-decoration:;">2</tspan></tspan></text></g></g><g id="SvgjsG1152" transform="translate(219.86803181966172,118.91519891648065)"><path id="SvgjsPath1153" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#388e3c"></path><g id="SvgjsG1154"><text id="SvgjsText1155" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1156" dy="18" x="21"><tspan id="SvgjsTspan1157" style="text-decoration:;">3</tspan></tspan></text></g></g><g id="SvgjsG1158" transform="translate(25.01088896251872,201.5861945874751)"><path id="SvgjsPath1159" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1160"><text id="SvgjsText1161" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1162" dy="18" x="21"><tspan id="SvgjsTspan1163" style="text-decoration:;">4</tspan></tspan></text></g></g><g id="SvgjsG1164" transform="translate(114.67755562918529,201.5861945874751)"><path id="SvgjsPath1165" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1166"><text id="SvgjsText1167" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1168" dy="18" x="21"><tspan id="SvgjsTspan1169" style="text-decoration:;">5</tspan></tspan></text></g></g><g id="SvgjsG1170" transform="translate(177.86803181966172,201.5861945874751)"><path id="SvgjsPath1171" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#00ff00"></path><g id="SvgjsG1172"><text id="SvgjsText1173" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1174" dy="18" x="21"><tspan id="SvgjsTspan1175" style="text-decoration:;">6</tspan></tspan></text></g></g><g id="SvgjsG1176"><path id="SvgjsPath1177" d="M94.39824737196182 118.22194325520283L152.45686388640894 62.37356565407437" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1178"><path id="SvgjsPath1179" d="M240.17234803024957 118.19685076610429L183.23304894808751 59.402552549152816" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1180"><path id="SvgjsPath1181" d="M46.574856255279855 200.76039746184696L77.92659355951886 154.85317042651246" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1182"><path id="SvgjsPath1183" d="M135.1521200007655 200.73536123106086L107.64486575903001 156.19310298599044" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1184"><path id="SvgjsPath1185" d="M199.33297914303546 200.70085624170687L224.20495700456092 153.34040350025546" stroke="#323232" stroke-width="2" fill="none"></path></g></svg></center>

高度为 $h$、有 $n$ 个结点的二叉树，当且仅当其每个结点都与高度为 $h$ 的满二叉树中编号为 $1$ ~ $n$ 的结点一一对应时，称为完全二叉树，

### 3.2.3 二叉搜索树（BST）

<center><svg id="SvgjsSvg1186" width="319.6632080078125" height="355.5590515136719" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1187"></defs><g id="SvgjsG1188" transform="translate(145.17755562918558,25)"><path id="SvgjsPath1189" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1190"><text id="SvgjsText1191" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1192" dy="18" x="21"><tspan id="SvgjsTspan1193" style="text-decoration:;">8</tspan></tspan></text></g></g><g id="SvgjsG1194" transform="translate(72.67755562918529,119.9047619047619)"><path id="SvgjsPath1195" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1196"><text id="SvgjsText1197" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1198" dy="18" x="21"><tspan id="SvgjsTspan1199" style="text-decoration:;">3</tspan></tspan></text></g></g><g id="SvgjsG1200" transform="translate(209.86803181966172,119.9047619047619)"><path id="SvgjsPath1201" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1202"><text id="SvgjsText1203" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1204" dy="18" x="21"><tspan id="SvgjsTspan1205" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1206" transform="translate(25.01088896251872,202.57575757575634)"><path id="SvgjsPath1207" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1208"><text id="SvgjsText1209" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1210" dy="18" x="21"><tspan id="SvgjsTspan1211" style="text-decoration:;">1</tspan></tspan></text></g></g><g id="SvgjsG1212" transform="translate(114.67755562918529,202.57575757575634)"><path id="SvgjsPath1213" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1214"><text id="SvgjsText1215" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1216" dy="18" x="21"><tspan id="SvgjsTspan1217" style="text-decoration:;">6</tspan></tspan></text></g></g><g id="SvgjsG1218" transform="translate(253.67755562918524,197.57575757575634)"><path id="SvgjsPath1219" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1220"><text id="SvgjsText1221" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1222" dy="18" x="21"><tspan id="SvgjsTspan1223" style="text-decoration:;">14</tspan></tspan></text></g></g><g id="SvgjsG1224"><path id="SvgjsPath1225" d="M94.39221931339188 119.20529366497095L152.46289194497888 62.36934122086876" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1226"><path id="SvgjsPath1227" d="M230.24846328577007 119.11981933883027L183.156933692567 59.45870995298935" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1228"><path id="SvgjsPath1229" d="M46.574856255279855 201.7499604501282L77.92659355951886 155.8427334147937" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1230"><path id="SvgjsPath1231" d="M135.1521200007655 201.7249242193421L107.64486575903001 157.18266597427169" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1232"><path id="SvgjsPath1233" d="M274.1089236396039 196.7531655380944L245.41010919276977 155.23700625256913" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1234" transform="translate(73.67755562918529,288.57575757575637)"><path id="SvgjsPath1235" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1236"><text id="SvgjsText1237" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1238" dy="18" x="21"><tspan id="SvgjsTspan1239" style="text-decoration:;">4</tspan></tspan></text></g></g><g id="SvgjsG1240" transform="translate(156.6775556291853,288.57575757575637)"><path id="SvgjsPath1241" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1242"><text id="SvgjsText1243" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1244" dy="18" x="21"><tspan id="SvgjsTspan1245" style="text-decoration:;">7</tspan></tspan></text></g></g><g id="SvgjsG1246" transform="translate(221.67755562918524,288.57575757575637)"><path id="SvgjsPath1247" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1248"><text id="SvgjsText1249" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1250" dy="18" x="21"><tspan id="SvgjsTspan1251" style="text-decoration:;">13</tspan></tspan></text></g></g><g id="SvgjsG1252"><path id="SvgjsPath1253" d="M123.72725651754823 242.2701612423108L95.20898381264041 287.7286542256098" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1254"><path id="SvgjsPath1255" d="M150.9015968917027 238.8805460206156L177.20322237829794 287.69541220767485" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1256"><path id="SvgjsPath1257" d="M265.6519589361972 238.0998265014709L243.09181876756804 287.6656004178011" stroke="#323232" stroke-width="2" fill="none"></path></g></svg></center>

左子树上所有结点的关键字均小于根结点的关键字，右子树上的所有结点的关键字均大于根结点的关键字，左子树和右子树又各是一棵二叉排序树。

### 3.2.4 平衡二叉树（AVL）

<center><svg id="SvgjsSvg1258" width="655.8542175292969" height="414.0138854980469" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1259"></defs><g id="SvgjsG1260" transform="translate(145.1706281389512,25.013885498046875)"><path id="SvgjsPath1261" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1262"><text id="SvgjsText1263" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1264" dy="18" x="21"><tspan id="SvgjsTspan1265" style="text-decoration:;">1</tspan></tspan></text></g></g><g id="SvgjsG1266" transform="translate(72.67062813895092,119.91864740280877)"><path id="SvgjsPath1267" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1268"><text id="SvgjsText1269" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1270" dy="18" x="21"><tspan id="SvgjsTspan1271" style="text-decoration:;">-1</tspan></tspan></text></g></g><g id="SvgjsG1272" transform="translate(209.86110432942735,119.91864740280877)"><path id="SvgjsPath1273" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1274"><text id="SvgjsText1275" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1276" dy="18" x="21"><tspan id="SvgjsTspan1277" style="text-decoration:;">1</tspan></tspan></text></g></g><g id="SvgjsG1278" transform="translate(25.003961472284345,202.58964307380322)"><path id="SvgjsPath1279" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1280"><text id="SvgjsText1281" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1282" dy="18" x="21"><tspan id="SvgjsTspan1283" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1284" transform="translate(114.67062813895092,202.58964307380322)"><path id="SvgjsPath1285" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1286"><text id="SvgjsText1287" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1288" dy="18" x="21"><tspan id="SvgjsTspan1289" style="text-decoration:;">1</tspan></tspan></text></g></g><g id="SvgjsG1290" transform="translate(172.67062813895086,204.58964307380322)"><path id="SvgjsPath1291" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1292"><text id="SvgjsText1293" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1294" dy="18" x="21"><tspan id="SvgjsTspan1295" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1296"><path id="SvgjsPath1297" d="M94.3852918231575 119.21917916301783L152.4559644547445 62.38322671891564" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1298"><path id="SvgjsPath1299" d="M230.2415357955357 119.13370483687714L183.15000620233263 59.47259545103623" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1300"><path id="SvgjsPath1301" d="M46.56792876504548 201.7638459481751L77.91966606928449 155.8566189128406" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1302"><path id="SvgjsPath1303" d="M135.14519251053113 201.738809717389L107.63793826879564 157.19655147231856" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1304"><path id="SvgjsPath1305" d="M194.1136326621732 203.69312369732296L217.5986519709183 156.16590046683643" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1306" transform="translate(73.67062813895092,288.58964307380324)"><path id="SvgjsPath1307" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1308"><text id="SvgjsText1309" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1310" dy="18" x="21"><tspan id="SvgjsTspan1311" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1312"><path id="SvgjsPath1313" d="M123.72032902731385 242.28404674035767L95.20205632240604 287.74253972365665" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1314" transform="translate(524.1706281389511,25.013885498046875)"><path id="SvgjsPath1315" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1316"><text id="SvgjsText1317" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1318" dy="18" x="21"><tspan id="SvgjsTspan1319" style="text-decoration:;">2</tspan></tspan></text></g></g><g id="SvgjsG1320" transform="translate(451.67062813895086,119.91864740280877)"><path id="SvgjsPath1321" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1322"><text id="SvgjsText1323" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1324" dy="18" x="21"><tspan id="SvgjsTspan1325" style="text-decoration:;">-1</tspan></tspan></text></g></g><g id="SvgjsG1326" transform="translate(588.8611043294272,119.91864740280877)"><path id="SvgjsPath1327" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1328"><text id="SvgjsText1329" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1330" dy="18" x="21"><tspan id="SvgjsTspan1331" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1332" transform="translate(404.00396147228435,202.58964307380324)"><path id="SvgjsPath1333" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1334"><text id="SvgjsText1335" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1336" dy="18" x="21"><tspan id="SvgjsTspan1337" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1338" transform="translate(493.67062813895086,202.58964307380324)"><path id="SvgjsPath1339" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1340"><text id="SvgjsText1341" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1342" dy="18" x="21"><tspan id="SvgjsTspan1343" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1344" transform="translate(536.8611043294272,288.58964307380324)"><path id="SvgjsPath1345" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1346"><text id="SvgjsText1347" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1348" dy="18" x="21"><tspan id="SvgjsTspan1349" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1350"><path id="SvgjsPath1351" d="M473.38529182315744 119.21917916301783L531.4559644547445 62.38322671891564" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1352"><path id="SvgjsPath1353" d="M609.2415357955356 119.13370483687711L562.1500062023326 59.47259545103623" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1354"><path id="SvgjsPath1355" d="M425.5679287650455 201.76384594817512L456.9196660692844 155.8566189128406" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1356"><path id="SvgjsPath1357" d="M514.145192510531 201.73880971738902L486.63793826879566 157.19655147231856" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1358"><path id="SvgjsPath1359" d="M557.3602518802617 287.7241103914828L529.3354021621196 239.29383239527453" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1360" transform="translate(452.67062813895086,288.58964307380324)"><path id="SvgjsPath1361" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1362"><text id="SvgjsText1363" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1364" dy="18" x="21"><tspan id="SvgjsTspan1365" style="text-decoration:;">0</tspan></tspan></text></g></g><g id="SvgjsG1366"><path id="SvgjsPath1367" d="M502.72032902731394 242.28404674035767L474.20205632240595 287.74253972365665" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1368" transform="translate(48.735113961356035,347.0138854980469)"><path id="SvgjsPath1369" d="M 0 0L 173.87102835518976 0L 173.87102835518976 43L 0 43Z" stroke="none" fill="none"></path><g id="SvgjsG1370"><text id="SvgjsText1371" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="174px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="9.5" transform="rotate(0)"><tspan id="SvgjsTspan1372" dy="20" x="87"><tspan id="SvgjsTspan1373" style="text-decoration:;">（a）平衡二叉树</tspan></tspan></text></g></g><g id="SvgjsG1374" transform="translate(442.7351139613561,347.0138854980469)"><path id="SvgjsPath1375" d="M 0 0L 173.87102835518976 0L 173.87102835518976 43L 0 43Z" stroke="none" fill="none"></path><g id="SvgjsG1376"><text id="SvgjsText1377" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="174px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="9.5" transform="rotate(0)"><tspan id="SvgjsTspan1378" dy="20" x="87"><tspan id="SvgjsTspan1379" style="text-decoration:;">（b）非平衡二叉树</tspan></tspan></text></g></g></svg></center>

为避免树的高度增长过快，降低二叉排序树的性能，规定在插入和删除二叉树结点时，要保证任意结点的左、右子树高度差的绝对值不超过 $1$，将这样的二叉树称为**平衡二叉树**，简称平衡树。定义结点左子树与右子树的高度差为该结点的**平衡因子**，则平衡二叉树结点的平衡因子的值只能是 $-1$、$0$ 或 $1$。

- 平衡二叉树可以是一棵空树
- 平衡二叉树左子树和右子树都是平衡二叉树，且左右子树的高度差的绝对值不超过 $1$。

### 3.2.5 红黑树

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.32rbdlr1yai0.webp" width=60%/></center>

红黑树也是一种自平衡的二叉查找树。

- 每个结点要么是红的要么是黑的。
- 根结点是黑的。 
- 每个叶结点(叶结点即指树尾端 `NIL` 指针或 `NULL` 结点)都是黑的。 
- 如果一个结点是红的，那么它的两个儿子都是黑的。
- 对于任意结点而言，其到叶结点树尾端 `NIL` 指针的每条路径都包含相同数目的黑结点。

### 3.2.6 哈夫曼树

哈夫曼树又称最优二叉树，是一种带权路径长度最短的二叉树。给定 $n$ 个权值分别为 $w_1,w_2,\cdots, w_n$ 的结点，一般可以按下面步骤构建:

1. 将这 $n$ 个结点分别作为 $n$ 棵仅含一个结点的二叉树，构成森林 $F$
2. 构造一个新的结点，从 $F$ 中选取两棵根结点权值最小的树作为新结点的左右子树，并且将新结点的权值置为左、右子树上根结点的权值之和
3. 从 $F$ 中删除刚才选出的两棵树，同时将新得到的树加入 $F$ 中
4. 重复步骤 2 和 3，直至 $F$ 中只剩下一棵树为止

从上述构造过程中可以看出哈夫曼树具有如下特点：

- 每个初始结点最终都成为叶结点，且权值越小的结点到根结点的路径长度越大
- 构造过程中共新建了 $n-1$ 个结点(双分支结点)，因此哈夫曼树的结点总数为 $2n-1$
- 每次构造都选择两棵树作为新结点的孩子，因此哈夫曼树中不存在度为 $1$ 的结点

例如，权值 $\{7, 5, 2, 4\}$ 的哈夫曼树的构造过程如下图所示：

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/rr.49dhevlse4k0.webp" width=50%/></center>

### 3.2.7 B 树

B 树（B-Tree）是一种自平衡的树，能够保持数据有序。这种数据结构能够让查找数据、顺序访问、插入数据及删除的动作，都在对数时间内完成。B 树，概括来说是一种自平衡的 $m$ 阶树，与自平衡二叉查找树不同，B 树适用于读写相对大的数据块的存储系统，例如磁盘。

- 根结点至少有两个孩子
- 每个中间结点都包含 $k-1$ 个元素和 $k$ 个孩子，其中 $\displaystyle\frac{m}{2} \le k \le m$
- 每一个叶子结点都包含 $k-1$ 个元素，其中 $\displaystyle\frac{m}{2} \le k \le m$
- 所有的叶子结点都位于同一层
- 每个结点中的元素从小到大排列，结点当中 $k-1$ 个元素正好是 $k$ 个孩子包含的元素的值域分划

B-Tree 中的每个结点根据实际情况可以包含大量的关键字信息和分支，如下图所示为一个 3 阶的 B-Tree：

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.6a7dsmuvldg0.webp" /></center>

### 3.2.8 B+ 树

B+ 树是一种树数据结构，通常用于关系型数据库（如 MySQL）和操作系统的文件系统中。B+ 树的特点是能够保持数据稳定有序，其插入与修改拥有较稳定的对数时间复杂度。B+ 树元素自底向上插入，这与二叉树恰好相反。

在 B 树基础上，为叶子结点增加链表指针(**B 树** + **叶子有序链表**)，所有关键字都在叶子结点中出现，非叶子结点作为叶子结点的索引；B+ 树总是到叶子结点才命中。

B+ 树的非叶子结点不保存数据，只保存子树的临界值(最大或者最小)，所以同样大小的结点，B+ 树相对于 B 树能够有更多的分支，使得这棵树更加矮胖，查询时做的 IO 操作次数也更少。

将上面的的 B-Tree 优化，由于 B+ Tree 的非叶子结点只存储键值信息，假设每个磁盘块能存储 4 个键值及指针信息，则变成 B+ Tree 后其结构如下图所示：

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.1lxz52e70fc0.webp" /></center>

# 4. 二叉树的遍历

## 4.1二叉树的链式存储

```java
public class Node {
    public int data;
    public Node left;
    public Node right;

    public Node(int data) {
        this(data, null, null);
    }

    public Node(int data, Node left, Node right) {
        this.data = data;
        this.left = left;
        this.right = right;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Node.class.getSimpleName() + "[", "]")
                .add("data=" + data)
                .toString();
    }
}
```

为方便测试验证，定义一个辅助类来根据列表序列字符串创建二叉树：

```java
public class TreeUtils {
    public static Node getTree(String[] values) {
        if (values == null || values.length == 0) return null;
        Node[] nodes = new Node[values.length];
        for (int i = 0; i < values.length; i++) {

            if (!"null".equals(values[i])) {
                nodes[i] = new Node(Integer.parseInt(values[i]));
            }
        }
        for (int i = 0; i <= (nodes.length - 1) / 2; i++) {
            if (2 * i + 1 <= nodes.length - 1) {
                nodes[i].left = nodes[2 * i + 1];
            }
            if (2 * i + 2 <= nodes.length - 1) {
                nodes[i].right = nodes[2 * i + 2];
            }
        }
        return nodes[0];
    }
	
    /*
     *      1      
     *    /   \    
     *  2       3  
     *         / \ 
     *        6   7
     */
    public static void main(String[] args) {
        String[] values = {"1", "2", "3", "null", "null", "6", "7"};
        Node tree = TreeUtils.getTree(values);
    }
}
```

## 4.2 先序遍历

先序遍历的操作过程如下：

- 若二叉树为空，则什么也不做

- 访问根结点
- 先序遍历左子树
- 先序遍历右子树

### 4.2.1 递归实现

```java
void preOrder(Node root, Consumer<Node> consumer){
    if (root != null) {
        consumer.accept(root);
        preOrder(root.left,consumer);
        preOrder(root.right,consumer);
    }
}
```

### 4.2.3 迭代实现

```java
// Deque<Node> deque = new ArrayDeque<>();
void preOrder2(Node root, Consumer<Node> consumer) {
    if (root == null) return;
    Node node = root;
    while (node != null || !deque.isEmpty()) {
        if (node != null) {
            consumer.accept(node);
            deque.push(node);
            node = node.left;
        } else {
            node = deque.pop();
            node = node.right;
        }
    }
}
```



## 4.3 中序遍历

中序遍历的操作过程如下：

- 若二叉树为空，则什么也不做

- 中序遍历左子树
- 访问根结点
- 中序遍历右子树

### 4.3.1 递归实现

```java
void inOrder(Node root, Consumer<Node> consumer) {
    if (root != null) {
        inOrder(root.left, consumer);
        consumer.accept(root);
        inOrder(root.right, consumer);
    }
}
```

### 4.3.2 迭代实现

```java
// Deque<Node> deque = new ArrayDeque<>();
void inOrder2(Node root, Consumer<Node> consumer) {
    if (root == null) return;
    Node node = root;
    while (node != null || !deque.isEmpty()) {
        while (node != null) {
            deque.push(node);
            node = node.left;
        }
        node = deque.pop();
        consumer.accept(node);
        node = node.right;
    }
}
```

## 4.4 后序遍历

### 4.4.1 递归实现

后序遍历的操作过程如下：

- 若二叉树为空，则什么也不做

- 后序遍历左子树
- 后序遍历右子树
- 访问根结点

```java
void postOrder(Node root, Consumer<Node> consumer) {
    if (root != null) {
        postOrder(root.left, consumer);
        postOrder(root.right, consumer);
        consumer.accept(root);
    }
}
```

### 4.4.2 迭代实现（单栈）

```java
// Deque<Node> deque = new ArrayDeque<>();
void postOrder2(Node root, Consumer<Node> consumer) {
    if (root == null) return;
    Node pre = null;
    Node node = root;
    while (node != null || !deque.isEmpty()) {
        while (node != null) { // 后序遍历仍然要先遍历左子树，所以如果有左子树，则当前结点先入栈，等待访问
            deque.push(node);
            node = node.left;
        }
        node = deque.peek(); // 不能直接出栈，因为如果右子树存在且没被遍历，还要先遍历右子树
        if (Objects.requireNonNull(node).right != null && node.right != pre) { // 如果右子树存在且没有被遍历过时
            node = node.right; // 先遍历右子树，也需要经过一开始的操作
        } else {
            node = deque.pop(); // 确认确实该遍历它了才出栈
            consumer.accept(node);
            pre = node; // 遍历之后对于下一个结点它就是前结点，记录一下
            node = null; // 后序遍历出栈的结点是子树的根结点，其左右子树已经遍历完成，所以应该重置为 null，避免重复遍历
        }
    }
}
```

### 4.4.3 迭代实现（双栈）

```java
// Deque<Node> deque = new ArrayDeque<>();
// Deque<Node> deque2 = new ArrayDeque<>();
void postOrder3(Node root, Consumer<Node> consumer) {
    if (root == null) return;
    Node node = root;
    while (node != null || !deque.isEmpty()) {
        if (node != null) {
            deque2.push(node);
            deque.push(node);
            node = node.right;
        } else {
            node = deque.pop();
            node = node.left;
        }
    }
    while (!deque2.isEmpty()) {
        consumer.accept(deque2.pop());
    }
}
```

## 4.5 层次遍历

```java
// Deque<Node> deque = new ArrayDeque<>();
void levelOrder(Node root, Consumer<Node> consumer) {
    if (root == null) return;
    deque.offer(root);
    while (!deque.isEmpty()) {
        Node node = deque.poll();
        consumer.accept(node);
        if (node.left != null) {
            deque.offer(node.left);
        }
        if (node.right != null) {
            deque.offer(node.right);
        }
    }
}
```

