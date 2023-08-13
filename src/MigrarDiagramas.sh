# cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_01.jq
# cat ./diag/diagrama_02_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_02.jq
# cat ./diag/diagrama_03_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_03.jq
# cat ./diag/diagrama_04_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_04.jq
# cat ./diag/diagrama_05_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_05.jq
# cat ./diag/diagrama_06_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_06.jq
# cat ./diag/diagrama_07_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_07.jq
# cat ./diag/diagrama_08_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"' > RutasNodosDiagrama_08.jq

  function ExtraerRutasGraphml ()
  {
    cat "${1}" \
      | pup 'json{}' \
      | jq --compact-output 'paths' \
      | grep -i --color '\"'"${2}"'\"' \
      | gawk '{print "cat '"${1}"' | pup '\''json{}'\'' | jq --compact-output --raw-output '\''"$0"'\''"}' \
      | sed -r 's/"//g' \
      | sed -r 's/children,/children\[/g' \
      | sed -r 's/,children/\]\.children/g' \
      | sed -r 's/,([a-z])/\]\.\1/' \
      | sed -r 's/\[([0-9])\]/\[\.\[\1\]/' \
    # > "${3}"
  }
  export -f ExtraerRutasGraphml

  function ExtraerNodosGraphml ()
  {
    bash "${1}" \
      > "${2}"
  }
  export -f ExtraerNodosGraphml

# ExtraerRutasGraphml ./diag/diagrama_01_rasters.graphml      text  # ./uml/RutasNodosDiagrama_01.jq
# ExtraerRutasGraphml ./diag/diagrama_02_xyz.graphml          text  # ./uml/RutasNodosDiagrama_02.jq
# ExtraerRutasGraphml ./diag/diagrama_03_bigmatrices.graphml  text  # ./uml/RutasNodosDiagrama_03.jq
# ExtraerRutasGraphml ./diag/diagrama_04_bigkmeans.graphml    text  # ./uml/RutasNodosDiagrama_04.jq
# ExtraerRutasGraphml ./diag/diagrama_05_estadigrafos.graphml text  # ./uml/RutasNodosDiagrama_05.jq
# ExtraerRutasGraphml ./diag/diagrama_06_invertir_xyz.graphml text  # ./uml/RutasNodosDiagrama_06.jq
# ExtraerRutasGraphml ./diag/diagrama_07_matconf.graphml      text  # ./uml/RutasNodosDiagrama_07.jq
# ExtraerRutasGraphml ./diag/diagrama_08_silhouette.graphml   text  # ./uml/RutasNodosDiagrama_08.jq

# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_01.jq ./uml/NodosDiagrama_01.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_02.jq ./uml/NodosDiagrama_02.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_03.jq ./uml/NodosDiagrama_03.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_04.jq ./uml/NodosDiagrama_04.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_05.jq ./uml/NodosDiagrama_05.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_06.jq ./uml/NodosDiagrama_06.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_07.jq ./uml/NodosDiagrama_07.txt
# ExtraerNodosGraphml ./uml/RutasNodosDiagrama_08.jq ./uml/NodosDiagrama_08.txt

# wc -l ./uml/NodosDiagrama_01.txt
# wc -l ./uml/NodosDiagrama_02.txt
# wc -l ./uml/NodosDiagrama_03.txt
# wc -l ./uml/NodosDiagrama_04.txt
# wc -l ./uml/NodosDiagrama_05.txt
# wc -l ./uml/NodosDiagrama_06.txt
# wc -l ./uml/NodosDiagrama_07.txt
# wc -l ./uml/NodosDiagrama_08.txt

# cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"node\"'   | gawk -F, '{if(NF==36) print $0}' | wc -l
# cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"text\"'   | gawk -F, '{if(NF==48) print $0}' | wc -l
# cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"source\"' | gawk -F, '{if(NF==36) print $0}' | wc -l
# cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"target\"' | gawk -F, '{if(NF==36) print $0}' | wc -l
# cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output 'paths' | grep -i --color '\"id\"'     | gawk -F, '{if(NF==36) print $0}' | wc -l
 #cat ./diag/diagrama_01_rasters.graphml | pup 'json{}' | jq --compact-output '[.[0].children[0].children[1].children[0].children[0].children[0].children[0].children[0].children[0].children[0].children[0].children[0].children[0].children[0].children[0].children[0].edgedefault]'

 ExtraerRutasGraphml ./diag/diagrama_01_rasters.graphml id     | bash
