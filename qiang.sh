#!/bin/sh
#encoding:utf8
#用于内外抢楼
exit=0;
while(($exit==0))
do  
curl 'https://www.aliway.com/read.php?fid=20&tid=315373&page=17' -H 'accept-encoding: gzip, deflate, sdch' -H 'accept-language: zh-CN,zh;q=0.8,en;q=0.6' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'cache-control: max-age=0' -H 'cookie: 30358_lastvisit=0%091458192990%09%2Fread.php%3Ffid%3D38%26tid%3D315119; PHPSESSID=pa44b39vvcghbj45ur9j7dilv3; 30358_threadlog=%2C20%2C; LAST_HEART_BEAT_TIME=453q3l363v3k6c38453k3r5b5g5945365e47523d; aliway_SSO_TOKEN=4o393p5f3u335j5f4q4u3r5b5e6j3p5d5d4a5m313u3q4t56666r3t6v3u3j355f2f2o223l2c2k253p2d3q223l2e3a331l; emplid=103473; 30358newwinduser=UFsHUgBXOAYHAwYEAANUXQdQBFACUgRSAVAHVAQFW1NXUwVaWVMAbzkGVEdBOFZaD1ANS1UbIQNZD0AESBtWXl88UgFQUQVQ; 30358USERID=MDA1MDAw; CNZZDATA30076366=cnzz_eid%3D1566683997-1458192954-%26ntime%3D1458214768; 30358_lastpos=other; adposter=2' -H 'referer: https://www.aliway.com/read.php?fid=20&tid=315373&page=16' --compressed >tmp.txt
value=`sed -n 264p ./tmp.txt|awk -F '>' '{print $8}'|awk -F '<' '{print $1}'`
echo $value
if [ $value -ge 395 ];then
	 curl 'https://www.aliway.com/post.php?' -H 'origin: https://www.aliway.com' -H 'accept-encoding: gzip, deflate' -H 'accept-language: zh-CN,zh;q=0.8,en;q=0.6' -H 'cookie: 30358_lastvisit=0%091458192990%09%2Fread.php%3Ffid%3D38%26tid%3D315119; PHPSESSID=pa44b39vvcghbj45ur9j7dilv3; 30358_threadlog=%2C20%2C; LAST_HEART_BEAT_TIME=454a4n363t4q5639454q3r5b5g5945365e47523d; aliway_SSO_TOKEN=4p3u3p394i335f5d44483o585f5p3p395d4a5i354j3q4p565g5l404o3u3j35392d3e213q2c2k2i3n2e1j2a3n2d3e291g; emplid=103473; 30358newwinduser=UFsHUgBXOAYHAwYEAANUXQdQBFACUgRSAVAHVAQFW1NXUwVaWVMAbzkGVEdBOFZaD1ANS1UbIQNZD0AESBtWXl88UgFQUQVQ; 30358USERID=MDA1MDAw; readRefresh_315373=1458216702; CNZZDATA30076366=cnzz_eid%3D1566683997-1458192954-%26ntime%3D1458214768; adposter=8; 30358_lastpos=other' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36' -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundaryrozB8GW3IjS1EU5v' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'cache-control: max-age=0' -H 'referer: https://www.aliway.com/read.php?fid=20&tid=315373&page=e&' --data-binary $'------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="atc_usesign"\r\n\r\n1\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="atc_convert"\r\n\r\n1\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="atc_autourl"\r\n\r\n1\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="step"\r\n\r\n2\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="action"\r\n\r\nreply\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="fid"\r\n\r\n20\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="tid"\r\n\r\n315373\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="atid"\r\n\r\n0\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="to_pid"\r\n\r\n0\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="verify"\r\n\r\n72f14082\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="_hexie"\r\n\r\nf90d87e4\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="atc_title"\r\n\r\nRe:\xbf\xb4UC\xc3\xf7\xd0\xc7\xd5\xe6\xc8\xcb\xbb\xa5\xb6\xaf\xbe\xe7 \xc6\xc6\xbd\xe2\xc3\xd4\xb0\xb8\xc1\xec\xc9\xcd\xbd\xf0\xa3\xa1\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v\r\nContent-Disposition: form-data; name="atc_content"\r\n\r\n<p>1</p>\r\n------WebKitFormBoundaryrozB8GW3IjS1EU5v--\r\n' --compressed
    	# exit=1
      sleep 10;
	rm -f ./tmp.txt
fi
if [ $value -ge 25 ];then
	sleep 0.1
elif [ $value -ge 65 ];then
	sleep 1;
elif [ $value -ge 35 ];then
	sleep 5;
elif [ $value -ge 50 ];then
	sleep 10;
else
	sleep 120;
fi
done