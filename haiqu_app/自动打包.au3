#Include <File.au3>
#include <Array.au3>

;Դ·��
$appname = "��Сţ,�ֿ���,Ȥ��׬,С����,��׬׬,�ڵ��,��Ǯ׬,����,��׬,�кϺ���,׬׬���";
$repo="repo2,repo3,repo4,repo5,repo6,repo7,repo8,repo9,repo10,repo11,repo12";
$hbuliderid="135,136,137,138,139,140,141,142,143,144,145";	�滻\xxx\js\reg.js  ���ַ� localStorage.appId = '134'
$packagename="com.cow.momo,com.lekankan.reach,com.quwanzhuan,com.brid.mel,com.bear.cn,diandian.sound,com.youqian.lucky,com.youshang.happy";
$packagename&=",com.lucky.man,com.zhongheluck.cn,zhuanduo.mcn";  �滻\xxx\mainfest.js ���ַ��� com.pretty.fish
;$packagename="com.pretty.fish,com.cow.momo";
$htmlfile="index.html,detail.html reg.html,withdraw.html"  ;�滻4���ļ���repo1/css repo1/js Ϊ��Ӧ����

$cardpath="./card"; copy card/repox/* xxx\images\
$csspath="./css";;������ʽ copy css/repox/* xxx/css

$arrayappname = StringSplit($appname,",",1);
$arrayrepo=StringSplit($repo,",",1);

$arrayhbuliderid=StringSplit($hbuliderid,",",1);
$arraypackagename=StringSplit($packagename,",",1);
$arrayhtmlfile=StringSplit($htmlfile,",",1);

dircopy("./project/�����","./release/�����",1);����Ŀ¼
For $i= 0 To UBound($arrayappname) -1
;MsgBox(64,"�ָ��ַ���", "�ָ���������" & $array[$i]);
If $i<>0 Then
dircopy("./project/�����","./release/"&$arrayappname[$i],1);����Ŀ¼
;MsgBox(0,"","./base/card/"&$arrayrepo[$i]&"/*.*"&" to "&$arrayappname[$i]&"/images")
;dircopy("./base/card/"&$arrayrepo[$i]&"/a.png","./release/"&$arrayappname[$i]&"/images/a.png",1);����Ŀ¼
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/a.png","./release/"&$arrayappname[$i]&"/images/a.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/b.png","./release/"&$arrayappname[$i]&"/images/b.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/c.png","./release/"&$arrayappname[$i]&"/images/c.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/d.png","./release/"&$arrayappname[$i]&"/images/d.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/e.png","./release/"&$arrayappname[$i]&"/images/e.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/f.png","./release/"&$arrayappname[$i]&"/images/f.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/g.png","./release/"&$arrayappname[$i]&"/images/g.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/h.png","./release/"&$arrayappname[$i]&"/images/h.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/i.png","./release/"&$arrayappname[$i]&"/images/i.png",1 )
FileCopy ( "./base/card/"&$arrayrepo[$i]&"/j.png","./release/"&$arrayappname[$i]&"/images/j.png",1 )
FileCopy ( "./base/mainfest/"&$arrayrepo[$i]&"/manifest.json","./release/"&$arrayappname[$i]&"/manifest.json",1 )
FileCopy ( "./base/reg/"&$arrayrepo[$i]&"/4.png","./release/"&$arrayappname[$i]&"/images/4.png",1 )
FileCopy ( "./base/reg/"&$arrayrepo[$i]&"/mainBg.jpg","./release/"&$arrayappname[$i]&"/images/mainBg.jpg",1 )
FileCopy ( "./base/reg/"&$arrayrepo[$i]&"/regBg.jpg","./release/"&$arrayappname[$i]&"/images/regBg.jpg",1 )

dircopy("./base/icon/"&$arrayrepo[$i]&"/res","release\"&$arrayappname[$i]&"\unpackage\res",1);����Ŀ


EndIf;
Next
MsgBox(0, "", "׼������") 
;Exit;


;;;;;;;;�����ļ���
For $i= 1 To UBound($arrayappname) -1
	;MsgBox(0,"",$arrayappname[$i])
					$path="./release/"&$arrayappname[$i]&"/"&"manifest.json";
					$jspath="./release/"&$arrayappname[$i]&"/js/reg.js";     \xxx\js\reg.js 
					$indexhtmlpath="./release/"&$arrayappname[$i]&"/html/index.html";
					$detailhtmlpath="./release/"&$arrayappname[$i]&"/html/detail.html";
					$reghtmlpath="./release/"&$arrayappname[$i]&"/html/reg.html";
					$withdrawhtmlpath="./release/"&$arrayappname[$i]&"/html/withdraw.html";
					
				;���ļ�
				;$file = FileOpen($path, 0)
				$jsfile=FileOpen($jspath,0);
				
				$indexhtmlfile=FileOpen($indexhtmlpath,0);
				$detailhtmlfile=FileOpen($detailhtmlpath,0);
				$reghtmlfile=FileOpen($reghtmlpath,0);
				$withdrawhtmlfile=FileOpen($withdrawhtmlpath,0);
				
				$Lines="";
				$jsLines="";
				$indexhtmlLines="";
				$detailhtmLines="";
				$reghtmlLines="";
				$withdrawhtmlLines="";
				;;manifest.json�޸�
			    While 1
						$indexhtmlline= FileReadLine($indexhtmlfile);;
						 If @error = -1 Then ExitLoop
										;;html�ļ��滻
										$indexhtmlline=StringReplace($indexhtmlline, "repo1/css",$arrayrepo[$i]&"/css")
										$indexhtmlline=StringReplace($indexhtmlline, "repo1/js",$arrayrepo[$i]&"/js")
								
								If $indexhtmlline <> "" Then
									$indexhtmlLines &= $indexhtmlline & @CRLF;
								EndIf
								
						
				WEnd
					
				While 1
						$jsline=FileReadLine($jsfile);
							 If @error = -1 Then ExitLoop
								
								$jsline=StringReplace($jsline, "localStorage.appId = '134'","localStorage.appId = '"&$arrayhbuliderid[$i]&"'" )
									If $jsline <> "" Then
									$jsLines &= $jsline & @CRLF;
								EndIf
							
						
					WEnd
				
				While 1
					$detailhtmline= FileReadLine($detailhtmlfile)
					 If @error = -1 Then ExitLoop
									
										
										$detailhtmline=StringReplace($detailhtmline, "repo1/css",$arrayrepo[$i]&"/css")
										$detailhtmline=StringReplace($detailhtmline, "repo1/js",$arrayrepo[$i]&"/js")
										
							

								If $detailhtmline <> "" Then
									$detailhtmLines&= $detailhtmline & @CRLF;
								EndIf
							
					
				WEnd
				
				While 1
					$reghtmlline= FileReadLine($reghtmlfile);
					 If @error = -1 Then ExitLoop
									
										
										$reghtmlline=StringReplace($reghtmlline, "repo1/css",$arrayrepo[$i]&"/css")
										$reghtmlline=StringReplace($reghtmlline, "repo1/js",$arrayrepo[$i]&"/js")
								
								If $reghtmlline <> "" Then
									$reghtmlLines &= $reghtmlline & @CRLF;
								EndIf
							
				WEnd
				
				While 1
				$withdrawhtmlline= FileReadLine($withdrawhtmlfile);;
				 If @error = -1 Then ExitLoop
									
										
										$withdrawhtmlline=StringReplace($withdrawhtmlline, "repo1/css",$arrayrepo[$i]&"/css")
										$withdrawhtmlline=StringReplace($withdrawhtmlline, "repo1/js",$arrayrepo[$i]&"/js")

							
								If $withdrawhtmlline <> "" Then
									$withdrawhtmlLines &= $withdrawhtmlline & @CRLF;
								EndIf
				WEnd
				
				
			;	FileClose($file);
				FileClose($jsfile);
				FileClose($indexhtmlfile);
				FileClose($detailhtmlfile);
				FileClose($reghtmlfile);
				FileClose($withdrawhtmlfile);

				;���¸����ļ�
			;	$file2 = FileOpen($path, 2)
				$jsfile2 = FileOpen($jspath, 2)
				$indexhtmlfile2=FileOpen($indexhtmlpath, 2)
				$detailhtmlfile2=FileOpen($detailhtmlpath, 2)
				$reghtmlfile2=FileOpen($reghtmlpath, 2)
				$withdrawhtmlfile2=FileOpen($withdrawhtmlpath, 2)
				
			;	FileWrite($file2, $Lines)
				FileWrite($jsfile2, $jsLines)
				;MsgBox(0,"123",$indexhtmlLines)
				FileWrite($indexhtmlfile2,$indexhtmlLines)
				FileWrite($detailhtmlfile2,$detailhtmLines)
				FileWrite($reghtmlfile2,$reghtmlLines)
				FileWrite($withdrawhtmlfile2,$withdrawhtmlLines)
				
				;FileClose($file2)
				FileClose($jsfile2)
				FileClose($indexhtmlfile2)
				FileClose($detailhtmlfile2)
				FileClose($reghtmlfile2)
				FileClose($withdrawhtmlfile2)
;Exit;	
Next;
MsgBox(0, "", "������ɣ��޸���js html�ļ�") 





