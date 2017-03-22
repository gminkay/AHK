/*
我的日常快捷键 daily.ahk
by 李辉
Blog：withlihui.com
Email：withlihui@gmail.com
Github：github.com/greyli

目录
一、打开常用软件、文件和网页
二、发送常用字符
三、常用操作与组合键
四、小工具
*/


;;;;;;;; 一、打开常用软件、文件、文件夹和网页

;;;; 1、程序

;QQ Lite
:://qq::
Run D:\Program Files (x86)\Tencent\QQLite\Bin\QQ.exe
return

;Picasa 3
:://pi::
Run C:\Program Files (x86)\Google\Picasa3\Picasa3.exe
return

;Chrome
:://c::
IfWinExist ahk_exe chrome.exe
WinActivate
else
Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
return

;Steam
:://st::
Run D:\Program Files (x86)\Steam\Steam.exe
return

;PotPlayer
:://pl::
IfWinExist ahk_exe PotPlayerMini64.exe
WinActivate
else
Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
return

;Notepad++
:://n::
Run D:\Program Files (x86)\Notepad++\notepad++.exe
return

;OneNote
:://o::
IfWinExist ahk_exe OneNote.exe
WinActivate
else
Run C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.EXE
return

;PyCharm
:://p::
IfWinExist ahk_exe pycharm64.exe
WinActivate
else
Run D:\Program Files (x86)\JetBrains\PyCharm Community Edition 4.5.4\bin\pycharm64.exe
return

;CCleaner
:://cc::
Run C:\Program Files\CCleaner\CCleaner64.exe
return

;Vmware Player
:://v::
IfWinExist ahk_exe vmplayer.exe
WinActivate
else
Run C:\Program Files (x86)\VMware\VMware Player\vmplayer.exe
return

;ConEmu
:://ce::
Run C:\Program Files\ConEmu\ConEmu64.exe
return

;Everything
:://e::
Run C:\Program Files\Everything\Everything.exe
return

;Gimp
:://gi::
Run C:\Program Files\GIMP 2\bin\gimp-2.8.exe
return

;iTools
:://it::
Run D:\Program Files (x86)\iTools 3\iTools.exe
return

;Evernote
:://en::
Run C:\Program Files (x86)\Evernote\Evernote\Evernote.exe
return

;Xmind
:://xm::
Run C:\Program Files (x86)\XMind\XMind.exe
return

;WinScp
:://wi::
Run C:\Program Files (x86)\WinSCP\WinSCP.exe
return

;Drcom
:://d::
Run C:\Drcom\DrUpdateClient\DrMain.exe
return

;任务管理器
:://t::
Run taskmgr.exe
return

;控制台
:://cmd::
Run cmd
return

;截图
:://j::
Run C:\Windows\system32\SnippingTool.exe
return


;;;; 2、文件和文件夹

;桌面的inbox.txt
#i::
IfWinExist Inbox - 记事本
WinActivate
else
Run C:\Users\Administrator\Desktop\inbox.txt
return

;桌面的goals.txt
#g::
IfWinExist Goals - 记事本
WinActivate
else
Run C:\Users\Administrator\Desktop\Goals.txt
return

;Python文档
:://pd::
Run C:\Python27\Doc\python2711rc1.chm
return

;AHK文档
:://ad::
Run C:\Program Files\AutoHotkey\AutoHotkey_zh.chm
return

;下载文件夹
:://dl::
Run D:\Documents\Downloads
return

;回收站
:://hs::
Run ::{645ff040-5081-101b-9f08-00aa002f954e}
return

;projects
:://pr::
Run D:\projects
return

/*
秘密文件夹。
你可以把一个不想让别人看到的文件夹藏在很深的地方（比如下面的地址），然后使用一串热字符来打开它。
下面的字符只是个示例:P
*/
:://open::
Run C:\Program Files\CMAK\Support\2345\fpg\asd\secret\
return

;;;; 3、网页

;豆瓣
:://dou::
Run https://douban.com
return

;豆瓣fm
:://dfm::
Run https://fm.douban.com
return

;知乎
:://zhi::
Run https://zhihu.com
return


;;;;;;;; 二、常用字符

;;;; 1、邮箱

::@g::
Send withlihui@gmail.com
return

;;;; 2、密码（有一定的安全风险，最好不要和账号放在一起）

::@pwd1::
Send wodemima1
return

::@pwd2::
Send wodemima2
return

::@pwd3::
Send wodemima3
return


;;;; 3、其他文字

;发送当前日期
:://now::
FormatTime, CurrentDateTime,, yyyy-M-d
Send %CurrentDateTime%
return

;手机号
:://phone::
Send 1515****267
return

;地址和邮编
:://addr::
Send 江苏省扬州市邗江区*****（2346***）
return

;身份证号码
:://sfz::
Send 32038219950214****
return

;银行卡号
:://bank::
Send ***
return

;;;;;;;; 三、常用操作

;用Google搜索选中的文字
!g:: 
Send ^c 
Run http://www.google.com/search?q=%clipboard% 
return 

;用淘宝搜索选中的文字
!b:: 
Send ^c 
Run http://s.taobao.com/search?q=%clipboard% 
return 

;打开一个空白记事本
!n:: 
If WinExist Untitled - Notepad 
WinActivate 
else 
Run Notepad 
return 

;使用灵格斯翻译选中的文字
!t::
Send ^c
Send !q
Send ^v{Enter}
return 

;将选中的文字发送到桌面上的Inbox.txt，然后关闭记事本
!z:: 
Send ^c
Send #i
WinWaitActive Inbox - 记事本
Send ^v{Enter}
Send ^s
WinClose Inbox - 记事本
return 

;使用Alt+j、k、l、i上下左右移动光标
!j:: Send {Left}
!l:: Send {Right}
!i:: Send {Up}
!k:: Send {Down}

;选中一行文字
!o:: Send {Home}+{End}

;选择当前位置到行首的文字 
!y:: Send +{Home} 

;选择当前位置到行末的文字 
!p:: Send  +{End} 

;Alt+鼠标中键删除
^MButton:: Send {Delete}

;获取鼠标坐标
:://getxy::
MouseGetPos, xpos, ypos 
Msgbox, The cursor is at X%xpos% Y%ypos%. 
return

;;;;;;;; 四、小工具

;计时器
#c:: 
InputBox UserInput, Counter, Enter a number(minutes):
IfEqual, Errorlevel, 0
{    
    sleep UserInput * 60000
    SoundBeep
    MsgBox 时间到！
}
return

;定时关机
:://sd::
InputBox UserInput, Counter, 输入计划关机的时间（分钟）:
Run cmd
WinWaitActive ahk_class ConsoleWindowClass
time := UserInput * 60
send ^{Space} ;设置英文输入
Send shutdown{Space} -s{Space}-t{Space}%time%{Enter}
return

;取消定时关机
:://stop::
Run cmd
WinWaitActive ahk_class ConsoleWindowClass
send ^{Space} ;设置英文输入
Send shutdown{Space} -a{Space}{Enter}
return

;立刻关机
:://sdn:: 
Shutdown, 1
return

;游戏模式
;禁用Windows键，保持大写锁定
#v::
Run D:\Documents\game.ahk
;game.ahk的内容如下，退出游戏时关闭这个脚本
;LWin::return
;SetCapsLockState, AlwaysOn
