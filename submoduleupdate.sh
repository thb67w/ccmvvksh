#!/bin/bash

set -x
tag=`git describe --abbrev=0 --tags`
echo $tag
#tag=v1.3.0.1
sed  "s/'/ /g" submodule-$tag.log >sub.sh                       #search single quote and edit with space
sed 's/  *//g' sub.sh > sub1.sh                                 #search a space and edit with nothing
sed  "s/$tag/git push -u origin $tag/g" sub1.sh >submod.sh      #search tag and edit git push -u origin tag
sed -e '1s/Entering/cd /1' submod.sh >sub2.sh                   #search Entering and edit with cd for 1st line
sed -e '3s/Entering/cd ..\//1' sub2.sh >sub3.sh                 #search Entering and edit with cd .. for 2nd line
sed -e '5s/Entering/cd ..\/..\//1' sub3.sh >sub4.sh                 #search Entering and edit with cd .. for 5th line
sed -e '7s/Entering/cd ..\/..\//1' sub4.sh >sub5.sh
sed -e '9s/Entering/cd ..\/..\//1' sub5.sh >sub6.sh
sed '/jobs/d' sub6.sh >sub7.sh          
sed -e '11s/Entering/cd ..\//1' sub7.sh >sub8.sh
sed -e '22s/Entering/cd ..\/..\//1' sub8.sh >sub9.sh
sed -e '24s/Entering/cd ..\/..\//1' sub9.sh >sub10.sh
sed -e '26s/Entering/cd ..\/..\//1' sub10.sh >sub11.sh
sed -e '28s/Entering/cd ..\//1' sub11.sh >sub12.sh
sed -e '90s/Entering/cd ..\/..\/..\//1' sub12.sh >sub13.sh
sed -e '98s/Entering/cd ..\/..\/..\//1' sub13.sh >sub14.sh
sed -e '100s/Entering/cd ..\/..\/..\//1' sub14.sh >sub15.sh          
sed -e '102s/Entering/cd ..\/..\/..\//1' sub15.sh >sub16.sh
sed -e '104s/Entering/cd ..\/..\/..\//1' sub16.sh >sub17.sh
sed -e '106s/Entering/cd ..\/..\/..\//1' sub17.sh >sub18.sh
sed -e '108s/Entering/cd ..\/..\/..\//1' sub18.sh >sub19.sh
sed -e '100s/Entering/cd ..\/..\/..\//1' sub19.sh >sub20.sh
sed -e '110s/Entering/cd ..\/..\/..\//1' sub20.sh >sub21.sh
sed -e '112s/Entering/cd ..\/..\/..\//1' sub21.sh >sub22.sh
sed -e '114s/Entering/cd ..\/..\/..\//1' sub22.sh >sub23.sh
sed -e '116s/Entering/cd ..\/..\/..\/..\/..\//1' sub23.sh >sub24.sh
sed -e '118s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub24.sh >sub25.sh
sed -e '120s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub25.sh >sub26.sh
sed -e '122s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub26.sh >sub27.sh
sed -e '124s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub27.sh >sub28.sh
sed -e '126s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub28.sh >sub29.sh
sed -e '128s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub29.sh >sub30.sh
sed -e '134s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub30.sh >sub31.sh
sed -e '136s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub31.sh >sub32.sh
sed -e '138s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub32.sh >sub33.sh
sed -e '140s/Entering/cd ..\/..\/..\/..\/..\//1' sub33.sh >sub34.sh
sed -e '142s/Entering/cd ..\/..\/..\/..\/..\//1' sub34.sh >sub35.sh
sed -e '144s/Entering/cd ..\/..\/..\/..\/..\/..\/..\/..\//1' sub35.sh >sub36.sh
sed -e '162s/Entering/cd ..\/..\/..\/..\/..\//1'         sub36.sh >sub37.sh
sed -e '164s/Entering/cd ..\/..\/..\/..\/..\//1' sub37.sh >sub38.sh
sed -e '166s/Entering/cd ..\/..\/..\/..\//1' sub38.sh >sub39.sh
sed -e '168s/Entering/cd ..\/..\/..\/..\//1' sub39.sh >sub40.sh
sed -e '170s/Entering/cd ..\/..\/..\/..\//1' sub40.sh >sub41.sh
sed -e '172s/Entering/cd ..\/..\/..\/..\//1' sub41.sh >sub42.sh
sed -e '48s/Entering/cd ..\/..\/..\/..\//1' sub42.sh >sub43.sh
sed -e '50s/Entering/cd ..\/..\/..\/..\//1' sub43.sh >sub44.sh
sed -e '52s/Entering/cd ..\/..\/..\/..\//1' sub44.sh >sub45.sh
sed -e '54s/Entering/cd ..\/..\/..\/..\//1' sub45.sh >sub46.sh
sed -e '56s/Entering/cd ..\/..\/..\/..\//1' sub46.sh >sub47.sh
sed -e '58s/Entering/cd ..\/..\/..\/..\//1' sub47.sh >sub48.sh
sed -e '60s/Entering/cd ..\/..\/..\/..\//1' sub48.sh >sub49.sh
sed -e '62s/Entering/cd ..\/..\/..\/..\//1' sub49.sh >sub50.sh
sed -e '64s/Entering/cd ..\/..\/..\/..\//1' sub50.sh >sub51.sh
sed -e '66s/Entering/cd ..\/..\/..\/..\//1' sub51.sh >sub52.sh
sed -e '68s/Entering/cd ..\/..\/..\/..\//1' sub52.sh >sub53.sh
sed -e '70s/Entering/cd ..\/..\/..\/..\//1' sub53.sh >sub54.sh
sed -e '72s/Entering/cd ..\/..\/..\/..\//1' sub54.sh >sub55.sh
sed -e '74s/Entering/cd ..\/..\/..\/..\//1' sub55.sh >sub56.sh
sed -e '130s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub56.sh >sub57.sh
sed -e '132s/Entering/cd ..\/..\/..\/..\/..\/..\/..\//1' sub57.sh >sub58.sh
sed -e '152s/Entering/cd ..\/..\/..\//1' sub58.sh >sub59.sh
sed -e '154s/Entering/cd ..\/..\/..\//1' sub59.sh >sub60.sh
sed -e '156s/Entering/cd ..\/..\/..\//1' sub60.sh >sub61.sh
sed -e '158s/Entering/cd ..\/..\/..\/..\/..\//1' sub61.sh >sub62.sh
sed -e '160s/Entering/cd ..\/..\/..\/..\/..\//1' sub62.sh >sub63.sh
sed -e '174s/Entering/cd ..\/..\/..\/..\//1' sub63.sh >sub64.sh
sed -e '188s/Entering/cd ..\/..\/..\//1' sub64.sh >sub65.sh
sed -e '190s/Entering/cd ..\/..\/..\//1' sub65.sh >sub66.sh
sed -e '192s/Entering/cd ..\/..\/..\//1' sub66.sh >sub67.sh
sed -e '194s/Entering/cd ..\/..\/..\/..\//1' sub67.sh >sub68.sh
sed -e '146s/Entering/cd ..\/..\/..\/..\/..\/..\/..\/..\//1' sub68.sh >sub69.sh
sed -e '176s/Entering/cd ..\/..\/..\/..\//1' sub69.sh >sub70.sh
sed -e '178s/Entering/cd ..\/..\/..\/..\//1' sub70.sh >sub71.sh
sed -e '196s/Entering/cd ..\/..\/..\/..\//1' sub71.sh >sub72.sh
sed -e '198s/Entering/cd ..\/..\/..\/..\//1' sub72.sh >sub73.sh
sed -e '200s/Entering/cd ..\/..\/..\/..\//1' sub73.sh >sub74.sh
sed -e '148s/Entering/cd ..\/..\/..\/..\/..\//1' sub74.sh >sub75.sh
sed -e '180s/Entering/cd ..\/..\/..\/..\//1' sub75.sh >sub76.sh
sed -e 's/Entering/cd ..\/..\/..\//1'        sub76.sh >submodulepush.sh          
#sed -e '79s/cd ..\/..\/..\//cd ..\/..\/..\/..\//g' sub5.sh >submodulepush.sh #search cd ../../../ and edit with cd ../../../../ for 79th line
#rm -rf sub.sh sub1.sh submod.sh sub2.sh sub3.sh sub4.sh sub5.sh
