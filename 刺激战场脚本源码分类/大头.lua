--�̼�ս��GG�ű� ÿ����� ��Դ 
--����QQ:1039227140
--��ֹ�κηǷ����� �����ڿ�Դѧϰ�о�
--�ұ��ⲻ���ƻ���Ϸƽ��  ϣ���ٷ������޸�������һ����ɫ���õ���Ϸ����
--github:https://github.com/jia110/
function ��ͷ()
	 
  require("com.xplugin.memory")
  toast("���ڿ���...",1000,toastOption)
  jcgf=app.getFront()  
 ssll={
       {["lv"]=88.50576019287},
       {["lv"]=87.27782440186,["offset"]=4},
	   {["lv"]=1,["offset"]=12},-------��
	   {["lv"]=1,["offset"]=16},-------
       {["lv"]=1,["offset"]=20}--------��
       }       
        app.memorySearchModeSet(2)
 ssjg,ssdz=app.memorySearch(jcgf,true,0,ssll,'F32')
 if ssjg then
 toast("Դ������github:https://github.com/jia110/�����ɹ�",1000,toastOption)
 for xrxh=1,#ssdz do
xdz1=ssdz[xrxh]+20 
xrjg1,cw1=app.memoryWrite(jcgf,xdz1,2,'F32')
xrjg1,cw1=app.memoryWrite(jcgf,ssdz[xrxh]+16,2,'F32')
xrjg1,cw1=app.memoryWrite(jcgf,ssdz[xrxh]+12,2,'F32')


 end
  else
  toast("����ʧ��",1000,toastOption)
  end
 end  