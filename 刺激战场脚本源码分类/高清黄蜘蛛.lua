--�̼�ս��GG�ű� ÿ����� ��Դ 
--����QQ:1039227140
--��ֹ�κηǷ����� �����ڿ�Դѧϰ�о�
--�ұ��ⲻ���ƻ���Ϸƽ��  ϣ���ٷ������޸�������һ����ɫ���õ���Ϸ����
--github:https://github.com/jia110/
function �����֩��()
    packageName = app.getFront()
    print(packageName)
    xscript.logCat(packageName)
    tb={
			{["lv"] = 8196},
			{["lv"] = 5,["offset"] = 0xC30},
		--	{["lv"] = 1081612544,["offset"] = 0x4},
			--{["lv"] =262151,["offset"] = 0x8},
			--{["lv"] = 1081606148,["offset"] = 0xC},
		
		}
	app.memorySearchModeSet(-1)
   local  isOk,tbb = app.memorySearch("com.tencent.tmgp.pubgmhd", true, 0X0, tb, "U32", 1024)
    print(isOk,tbb)
    logcat(isOk,tbb)

    if not isOk then
	
        print("����ʧ��")
		toast("��֩��ʧ��")
		sleep(1500)
        exit()
    end
    -- logcat(isOk,#tbb,table.concat(tbb,"\n"))
    -- ��ӡǰ5����ַ
    -- for i = 1,#tbb do
 for i = 1,table.maxn(tbb)+1 do
       if i == table.maxn(tbb)+1 then break end
			logcat( string.format("0x%08X",tbb[i]))
			isSuccess,data = app.memoryWrite("com.tencent.tmgp.pubgmhd", tbb[i]+0xC30, 1, "U32")
		
			---����ط���ƫ����10���Ƶ�
-- 			if isSuccess then
-- 				logcat("д��ɹ�,��ֵַΪ",data)
-- 			else
-- 				logcat("д��ʧ��,������Ϣ:",data)
-- 			end
			toast("��֩���ѿ���")
				app.memorySearchModeSet(0)
			
		end
end