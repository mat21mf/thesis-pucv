  """ Ejecutar 1 vez para extender, en este caso de 20 a 30
  """ Solo ejecutar para casos de 20 a 30

  normal gg0
  normal /kmn0020

  function! ExtenderBloqueReplica()
    normal nVy10p1k
    let i=20 | .,+10g/kmn0020/s//\='kmn'.printf('%04d',i)/ | let i+=1
  endfunction

  call ExtenderBloqueReplica()
  call ExtenderBloqueReplica()
  call ExtenderBloqueReplica()
  call ExtenderBloqueReplica()
  call ExtenderBloqueReplica()
  call ExtenderBloqueReplica()
  call ExtenderBloqueReplica()

  function! ExtenderBloqueEdicion()
    normal nVy10p1k
    let i=20 | .,+10g/kmn0020/s/20 \([0-9] [0-9]\)/\=i.' '.submatch(1)/ | let i+=1
    normal 10k
    let i=20 | .,+10g/kmn0020/s//\='kmn'.printf('%04d',i)/ | let i+=1
  endfunction

  call ExtenderBloqueEdicion()
  call ExtenderBloqueEdicion()
  call ExtenderBloqueEdicion()
  call ExtenderBloqueEdicion()
  call ExtenderBloqueEdicion()
  call ExtenderBloqueEdicion()
  call ExtenderBloqueEdicion()

  normal gg0
  normal /

  function! ExtenderBloqueComentario()
    g!/kmn0021\|kmn0022\|kmn0023\|kmn0024\|kmn0025\|kmn0026\|kmn0027\|kmn0028\|kmn0029\|kmn0030/s/^  cat/# cat/
    g!/kmn0021\|kmn0022\|kmn0023\|kmn0024\|kmn0025\|kmn0026\|kmn0027\|kmn0028\|kmn0029\|kmn0030/s/^  EditarAtributosBigKmeans/# EditarAtributosBigKmeans/
    g!/kmn0021\|kmn0022\|kmn0023\|kmn0024\|kmn0025\|kmn0026\|kmn0027\|kmn0028\|kmn0029\|kmn0030/s/^  R --slave/# R --slave/
  endfunction

  call ExtenderBloqueComentario()
