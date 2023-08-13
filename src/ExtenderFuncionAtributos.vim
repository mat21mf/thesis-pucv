  """ Ejecutar 1 vez para extender, en este caso de 20 a 30
  """ Solo ejecutar para casos de 20 a 30

  normal gg0
  normal /    if [[ "\${1}" == 20 \]\] ; then

  function! ExtenderBloqueKmeans()
    normal nV5jy10P
    let i=20 | .,+66g/\(== \)20/s//\=submatch(1).i/ | let i+=1
    normal 
    let i=21 | .,+66g/\(centers=\)21/s//\=submatch(1).i/ | let i+=1
    normal 
    let i=21 | .,+66g/\(nstart=\)21/s//\=submatch(1).i/ | let i+=1
    normal 
    let i=20 | .,+66g/\(kmn\)0020/s//\=submatch(1).printf('%04d',i)/ | let i+=1
    normal 
    let i=20 | .,+66g/\(kmc\)0020/s//\=submatch(1).printf('%04d',i)/ | let i+=1
    normal 
  endfunction

  call ExtenderBloqueKmeans()
