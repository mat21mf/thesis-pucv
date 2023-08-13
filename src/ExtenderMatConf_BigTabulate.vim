  """ Ejecutar 1 vez para extender, en este caso de 11 a a:strnum
  """ Solo ejecutar para casos de 11 a a:strnum
  """ llamar posicion inicial y busqueda inicial si se llama
  """ la funcion solamente y no el script

  normal gg0
  normal /Cluster=11

  function! ExtenderBloqueBigTabulate (strnum)
    execute 'normal! Vy'. a:strnum. 'p'
    normal! vip:
    let i=11 | '<,'>g/Cluster=11/s/11/\=i/g | let i+=1
    normal! }n
  endfunction

  function! CallExtenderBloqueBigTabulate(strnum)
    execute ':call ExtenderBloqueBigTabulate('. a:strnum .')'
    execute ':call ExtenderBloqueBigTabulate('. a:strnum .')'
    execute ':call ExtenderBloqueBigTabulate('. a:strnum .')'
    execute ':call ExtenderBloqueBigTabulate('. a:strnum .')'
    execute ':call ExtenderBloqueBigTabulate('. a:strnum .')'
    execute ':call ExtenderBloqueBigTabulate('. a:strnum .')'
  endfunction
