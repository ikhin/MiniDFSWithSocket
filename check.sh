### 
# @Description: Copyright(c) All rights reserved.
 # @Company: YUSUR
 # @Author: Guangqing Yi
 # @Date: 2019-11-20 15:02:06
 # @LastEditors: Guangqing Yi
 # @LastEditTime: 2019-11-20 17:15:14
 ###
function md5(){ md5sum $1 | awk '{ print $1 }'}

for i in dfs/datanode0/*; do
    i=`basename $i`
    diff <(md5 dfs/datanode0/$i) <(md5 dfs/datanode1/$i)
    diff <(md5 dfs/datanode0/$i) <(md5 dfs/datanode2/$i)
    diff <(md5 dfs/datanode0/$i) <(md5 dfs/datanode3/$i)
done

echo 'OK'