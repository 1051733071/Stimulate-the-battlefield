--刺激战场GG脚本 每天更新 开源 
--作者QQ:1039227140
--禁止任何非法销售 仅用于开源学习研究
--我本意不是破坏游戏平衡  希望官方尽快修复，创造一个绿色良好的游戏环境
--github:https://github.com/jia110/
function 踏空跳远()
	 
  require("com.xplugin.memory")
  toast("正在开启...",1000,toastOption)
  jcgf=app.getFront()  
 ssll={
       {["lv"]=-0.70710676908},
       {["lv"]=0.70710670948,["offset"]=4},
	   {["lv"]=64,["offset"]=16}
       }       
        app.memorySearchModeSet(2)
 ssjg,ssdz=app.memorySearch(jcgf,true,0,ssll,'F32')
 if ssjg then
 toast("开启成功",1000,toastOption)
 for xrxh=1,#ssdz do
xdz1=ssdz[xrxh]+32 
xrjg1,cw1=app.memoryWrite(jcgf,xdz1,2,'U32')


 end
  else
  toast("开启失败",1000,toastOption)
  end
 end  