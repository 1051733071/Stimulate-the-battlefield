--�̼�ս��GG�ű� ÿ����� ��Դ 
--����QQ:1039227140
--��ֹ�κηǷ����� �����ڿ�Դѧϰ�о�
--�ұ��ⲻ���ƻ���Ϸƽ��  ϣ���ٷ������޸�������һ����ɫ���õ���Ϸ����
--github:https://github.com/jia110/
function ��Ƥ����()
    packageName = app.getFront()
    print(packageName)
    xscript.logCat(packageName)
    tb={
		
			
			{["lv"] = 1,},
			{["lv"] = 120,["offset"] = 0x4,},
			{["lv"] = 150,["offset"] = 0x8,},
			--{["lv"] = -0.00004248717,["offset"] = 0x8,},
		
		
		}
   local  isOk,tbb = app.memorySearch("com.tencent.tmgp.pubgmhd", true, 0, tb, "F32", 100)
    print(isOk,tbb)
    logcat(isOk,tbb)

    if not isOk then
        print("����ʧ��")
		toast("��ſ������뿪��Ƥ�������أ�")
		sleep(1500)
        exit()
    end
    -- logcat(isOk,#tbb,table.concat(tbb,"\n"))
    -- ��ӡǰ5����ַ
    -- for i = 1,#tbb do
    for i = 1,table.maxn(tbb)+1 do
        if i == table.maxn(tbb)+1 then break end
		app.memoryWrite(packageName, tbb[i],9, "F32")
		--logcat( string.format("0x%08X",tbb[i]))
		toast("�����ѿ���")
    end

	
end
----------------------------
function ��Ƥ�ر�()
  packageName = app.getFront()
    print(packageName)
    xscript.logCat(packageName)
    tb={
		
			
			{["lv"] = 9,},
			{["lv"] = 120,["offset"] = 0x4,},
			{["lv"] = 150,["offset"] = 0x8,},
			--{["lv"] = -0.00004248717,["offset"] = 0x8,},
		
		
		}
   isOk,tbb = app.memorySearch("com.tencent.tmgp.pubgmhd", true, 0, tb, "F32", 100)
    print(isOk,tbb)
    logcat(isOk,tbb)

    if not isOk then
        print("����ʧ��")
		toast("ſ���ڹرգ��᲻���ð���")
		sleep(1500)
        exit()
    end
    -- logcat(isOk,#tbb,table.concat(tbb,"\n"))
    -- ��ӡǰ5����ַ
    -- for i = 1,#tbb do
    for i = 1,table.maxn(tbb)+1 do
        if i == table.maxn(tbb)+1 then break end
		app.memoryWrite("com.tencent.tmgp.pubgmhd", tbb[i],1, "F32")
		--logcat( string.format("0x%08X",tbb[i]))
		toast("�رճɹ�")
    end
end