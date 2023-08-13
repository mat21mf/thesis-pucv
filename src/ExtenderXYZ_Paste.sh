# gawk 'NR>=92 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_kmn0018_var08.sh
# gawk 'NR>=92 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_kmn0024_var08.sh
# sed -r -i 's/kmn0010/kmn0018/g'                  RutinaXYZ_Paste_kmn0018_var08.sh
# sed -r -i 's/kmn0010/kmn0024/g'                  RutinaXYZ_Paste_kmn0024_var08.sh

  gawk 'NR==51 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_grupo01_kmn0006_var08.sh
  gawk 'NR==52 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_grupo02_kmn0010_var08.sh
  gawk 'NR==53 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_grupo03_kmn0007_var08.sh
  gawk 'NR==54 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_grupo04_kmn0008_var08.sh
  gawk 'NR==55 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_grupo05_kmn0008_var08.sh
  gawk 'NR==56 {print $0}' RutinaXYZ_Paste.sh > RutinaXYZ_Paste_grupo06_kmn0009_var08.sh
  sed -r -i 's/kmn[0-9]{4}/kmn0006/g'                  RutinaXYZ_Paste_grupo01_kmn0006_var08.sh
  sed -r -i 's/kmn[0-9]{4}/kmn0010/g'                  RutinaXYZ_Paste_grupo02_kmn0010_var08.sh
  sed -r -i 's/kmn[0-9]{4}/kmn0007/g'                  RutinaXYZ_Paste_grupo03_kmn0007_var08.sh
  sed -r -i 's/kmn[0-9]{4}/kmn0008/g'                  RutinaXYZ_Paste_grupo04_kmn0008_var08.sh
  sed -r -i 's/kmn[0-9]{4}/kmn0008/g'                  RutinaXYZ_Paste_grupo05_kmn0008_var08.sh
  sed -r -i 's/kmn[0-9]{4}/kmn0009/g'                  RutinaXYZ_Paste_grupo06_kmn0009_var08.sh
