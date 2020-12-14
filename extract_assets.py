#!/usr/bin/python3
import os
from shutil import copyfile

def ExtractFile(xmlPath, outputPath):
	execStr = "tools/ZAP2/ZAP2.out e -i %s -b baserom/ -o %s -gsf 1 -sm tools/ZAP2/SymbolMap_OoTMqDbg.txt" % (xmlPath, outputPath)

	print(execStr)
	os.system(execStr)

	# Copy generated C file to parent folder...
	#fileName = os.path.basename(xmlPath)
	#dirPath = os.path.dirname(xmlPath)
	#copyfile(outputPath + "/" + fileName.replace(".xml", ".c"), outputPath + "/../" + fileName.replace(".xml", ".c"))


# Textures
ExtractFile("assets/textures/xml/icon_item_24_static.xml", "assets/textures/icon_item_24_static")
ExtractFile("assets/textures/xml/icon_item_dungeon_static.xml", "assets/textures/icon_item_dungeon_static")
ExtractFile("assets/textures/xml/icon_item_field_static.xml", "assets/textures/icon_item_field_static")
ExtractFile("assets/textures/xml/icon_item_gameover_static.xml", "assets/textures/icon_item_gameover_static")
ExtractFile("assets/textures/xml/icon_item_nes_static.xml", "assets/textures/icon_item_nes_static")
ExtractFile("assets/textures/xml/icon_item_static.xml", "assets/textures/icon_item_static")

# Scenes and Rooms
# ExtractFile("scenes/xml/test_levels/test01.xml", "scenes/test_levels/test01")
# ExtractFile("scenes/xml/test_levels/testroom.xml", "scenes/test_levels/testroom")
# ExtractFile("scenes/xml/test_levels/sutaru.xml", "scenes/test_levels/sutaru")
# ExtractFile("scenes/xml/test_levels/syotes.xml", "scenes/test_levels/syotes")
# ExtractFile("scenes/xml/test_levels/syotes2.xml", "scenes/test_levels/syotes2")
# ExtractFile("scenes/xml/test_levels/besitu.xml", "scenes/test_levels/besitu")
# ExtractFile("scenes/xml/test_levels/sasatest.xml", "scenes/test_levels/sasatest")
# ExtractFile("scenes/xml/test_levels/depth_test.xml", "scenes/test_levels/depth_test")

# ExtractFile("scenes/xml/misc/kinsuta.xml", "scenes/misc/kinsuta")
# ExtractFile("scenes/xml/misc/kakusiana.xml", "scenes/misc/kakusiana")
# ExtractFile("scenes/xml/misc/hakaana.xml", "scenes/misc/hakaana")
# ExtractFile("scenes/xml/misc/hakaana2.xml", "scenes/misc/hakaana2")
# ExtractFile("scenes/xml/misc/hakaana_ouke.xml", "scenes/misc/hakaana_ouke")
# ExtractFile("scenes/xml/misc/hiral_demo.xml", "scenes/misc/hiral_demo")
# ExtractFile("scenes/xml/misc/market_day.xml", "scenes/misc/market_day")
# ExtractFile("scenes/xml/misc/market_night.xml", "scenes/misc/market_night")
# ExtractFile("scenes/xml/misc/market_ruins.xml", "scenes/misc/market_ruins")
# ExtractFile("scenes/xml/misc/market_alley.xml", "scenes/misc/market_alley")
# ExtractFile("scenes/xml/misc/market_alley_n.xml", "scenes/misc/market_alley_n")
# ExtractFile("scenes/xml/misc/kakariko3.xml", "scenes/misc/kakariko3")
# ExtractFile("scenes/xml/misc/turibori.xml", "scenes/misc/turibori")
# ExtractFile("scenes/xml/misc/shrine.xml", "scenes/misc/shrine")
# ExtractFile("scenes/xml/misc/shrine_n.xml", "scenes/misc/shrine_n")
# ExtractFile("scenes/xml/misc/shrine_r.xml", "scenes/misc/shrine_r")
# ExtractFile("scenes/xml/misc/entra_n.xml", "scenes/misc/entra_n")
# ExtractFile("scenes/xml/misc/enrui.xml", "scenes/misc/enrui")

# ExtractFile("scenes/xml/overworld/spot00.xml", "scenes/overworld/spot00")
# ExtractFile("scenes/xml/overworld/spot01.xml", "scenes/overworld/spot01")
# ExtractFile("scenes/xml/overworld/spot02.xml", "scenes/overworld/spot02")
# ExtractFile("scenes/xml/overworld/spot03.xml", "scenes/overworld/spot03")
# ExtractFile("scenes/xml/overworld/spot04.xml", "scenes/overworld/spot04")
# ExtractFile("scenes/xml/overworld/spot05.xml", "scenes/overworld/spot05")
# ExtractFile("scenes/xml/overworld/spot06.xml", "scenes/overworld/spot06")
# ExtractFile("scenes/xml/overworld/spot07.xml", "scenes/overworld/spot07")
# ExtractFile("scenes/xml/overworld/spot08.xml", "scenes/overworld/spot08")
# ExtractFile("scenes/xml/overworld/spot09.xml", "scenes/overworld/spot09")
# ExtractFile("scenes/xml/overworld/spot10.xml", "scenes/overworld/spot10")
# ExtractFile("scenes/xml/overworld/spot11.xml", "scenes/overworld/spot11")
# ExtractFile("scenes/xml/overworld/spot12.xml", "scenes/overworld/spot12")
# ExtractFile("scenes/xml/overworld/spot13.xml", "scenes/overworld/spot13")
# ExtractFile("scenes/xml/overworld/spot15.xml", "scenes/overworld/spot15")
# ExtractFile("scenes/xml/overworld/spot16.xml", "scenes/overworld/spot16")
# ExtractFile("scenes/xml/overworld/spot17.xml", "scenes/overworld/spot17")
# ExtractFile("scenes/xml/overworld/spot18.xml", "scenes/overworld/spot18")
# ExtractFile("scenes/xml/overworld/spot20.xml", "scenes/overworld/spot20")
# ExtractFile("scenes/xml/overworld/souko.xml", "scenes/overworld/souko")
# ExtractFile("scenes/xml/overworld/entra.xml", "scenes/overworld/entra")

# ExtractFile("scenes/xml/indoors/takaraya.xml", "scenes/indoors/takaraya")
# ExtractFile("scenes/xml/indoors/tokinoma.xml", "scenes/indoors/tokinoma")
# ExtractFile("scenes/xml/indoors/kenjyanoma.xml", "scenes/indoors/kenjyanoma")
# ExtractFile("scenes/xml/indoors/hylia_labo.xml", "scenes/indoors/hylia_labo")
# ExtractFile("scenes/xml/indoors/miharigoya.xml", "scenes/indoors/miharigoya")
# ExtractFile("scenes/xml/indoors/mahouya.xml", "scenes/indoors/mahouya")
# ExtractFile("scenes/xml/indoors/syatekijyou.xml", "scenes/indoors/syatekijyou")
# ExtractFile("scenes/xml/indoors/hairal_niwa.xml", "scenes/indoors/hairal_niwa")
# ExtractFile("scenes/xml/indoors/hairal_niwa2.xml", "scenes/indoors/hairal_niwa2")
# ExtractFile("scenes/xml/indoors/hairal_niwa_n.xml", "scenes/indoors/hairal_niwa_n")
# ExtractFile("scenes/xml/indoors/labo.xml", "scenes/indoors/labo")
# ExtractFile("scenes/xml/indoors/tent.xml", "scenes/indoors/tent")
# ExtractFile("scenes/xml/indoors/impa.xml", "scenes/indoors/impa")
# ExtractFile("scenes/xml/indoors/bowling.xml", "scenes/indoors/bowling")
# ExtractFile("scenes/xml/indoors/hakasitarelay.xml", "scenes/indoors/hakasitarelay")
# ExtractFile("scenes/xml/indoors/nakaniwa.xml", "scenes/indoors/nakaniwa")
# ExtractFile("scenes/xml/indoors/daiyousei_izumi.xml", "scenes/indoors/daiyousei_izumi")
# ExtractFile("scenes/xml/indoors/yousei_izumi_tate.xml", "scenes/indoors/yousei_izumi_tate")
# ExtractFile("scenes/xml/indoors/yousei_izumi_yoko.xml", "scenes/indoors/yousei_izumi_yoko")
# ExtractFile("scenes/xml/indoors/malon_stable.xml", "scenes/indoors/malon_stable")
# ExtractFile("scenes/xml/indoors/kakariko.xml", "scenes/indoors/kakariko")
# ExtractFile("scenes/xml/indoors/hut.xml", "scenes/indoors/hut")
# ExtractFile("scenes/xml/indoors/kokiri_home.xml", "scenes/indoors/kokiri_home")
# ExtractFile("scenes/xml/indoors/kokiri_home3.xml", "scenes/indoors/kokiri_home3")
# ExtractFile("scenes/xml/indoors/kokiri_home4.xml", "scenes/indoors/kokiri_home4")
# ExtractFile("scenes/xml/indoors/kokiri_home5.xml", "scenes/indoors/kokiri_home5")
# ExtractFile("scenes/xml/indoors/link_home.xml", "scenes/indoors/link_home")

# ExtractFile("scenes/xml/shops/golon.xml", "scenes/shops/golon")
# ExtractFile("scenes/xml/shops/zoora.xml", "scenes/shops/zoora")
# ExtractFile("scenes/xml/shops/drag.xml", "scenes/shops/drag")
# ExtractFile("scenes/xml/shops/alley_shop.xml", "scenes/shops/alley_shop")
# ExtractFile("scenes/xml/shops/night_shop.xml", "scenes/shops/night_shop")
# ExtractFile("scenes/xml/shops/face_shop.xml", "scenes/shops/face_shop")
# ExtractFile("scenes/xml/shops/kokiri_shop.xml", "scenes/shops/kokiri_shop")
# ExtractFile("scenes/xml/shops/shop1.xml", "scenes/shops/shop1")

# ExtractFile("scenes/xml/dungeons/ydan.xml", "scenes/dungeons/ydan")
# ExtractFile("scenes/xml/dungeons/ydan_boss.xml", "scenes/dungeons/ydan_boss")
# ExtractFile("scenes/xml/dungeons/ddan.xml", "scenes/dungeons/ddan")
# ExtractFile("scenes/xml/dungeons/ddan_boss.xml", "scenes/dungeons/ddan_boss")
# ExtractFile("scenes/xml/dungeons/bdan.xml", "scenes/dungeons/bdan")
# ExtractFile("scenes/xml/dungeons/bdan_boss.xml", "scenes/dungeons/bdan_boss")
# ExtractFile("scenes/xml/dungeons/Bmori1.xml", "scenes/dungeons/Bmori1")
# ExtractFile("scenes/xml/dungeons/FIRE_bs.xml", "scenes/dungeons/FIRE_bs")
# ExtractFile("scenes/xml/dungeons/moribossroom.xml", "scenes/dungeons/moribossroom")
# ExtractFile("scenes/xml/dungeons/HIDAN.xml", "scenes/dungeons/HIDAN")
# ExtractFile("scenes/xml/dungeons/MIZUsin.xml", "scenes/dungeons/MIZUsin")
# ExtractFile("scenes/xml/dungeons/MIZUsin_bs.xml", "scenes/dungeons/MIZUsin_bs")
# ExtractFile("scenes/xml/dungeons/jyasinzou.xml", "scenes/dungeons/jyasinzou")
# ExtractFile("scenes/xml/dungeons/HAKAdan.xml", "scenes/dungeons/HAKAdan")
# ExtractFile("scenes/xml/dungeons/HAKAdan_bs.xml", "scenes/dungeons/HAKAdan_bs")
# ExtractFile("scenes/xml/dungeons/HAKAdanCH.xml", "scenes/dungeons/HAKAdanCH")
# ExtractFile("scenes/xml/dungeons/ice_doukutu.xml", "scenes/dungeons/ice_doukutu")
# ExtractFile("scenes/xml/dungeons/jyasinboss.xml", "scenes/dungeons/jyasinboss")
# ExtractFile("scenes/xml/dungeons/men.xml", "scenes/dungeons/men")
# ExtractFile("scenes/xml/dungeons/gerudoway.xml", "scenes/dungeons/gerudoway")
# ExtractFile("scenes/xml/dungeons/ganontika.xml", "scenes/dungeons/ganontika")
# ExtractFile("scenes/xml/dungeons/ganontikasonogo.xml", "scenes/dungeons/ganontikasonogo")
# ExtractFile("scenes/xml/dungeons/ganon.xml", "scenes/dungeons/ganon")
# ExtractFile("scenes/xml/dungeons/ganon_boss.xml", "scenes/dungeons/ganon_boss")
# ExtractFile("scenes/xml/dungeons/ganon_demo.xml", "scenes/dungeons/ganon_demo")
# ExtractFile("scenes/xml/dungeons/ganon_final.xml", "scenes/dungeons/ganon_final")
# ExtractFile("scenes/xml/dungeons/ganon_sonogo.xml", "scenes/dungeons/ganon_sonogo")
# ExtractFile("scenes/xml/dungeons/ganon_tou.xml", "scenes/dungeons/ganon_tou")