### crear matriz de confusión de ejemplo
cm<-c(35,14,11,1,4,11,3,0,12,9,38,4,2,5,12,2)
cm<-matrix(cm, 4, 4, byrow=T)
rownames(cm)<-c("A","B","C","D")
colnames(cm)<-c("A","B","C","D")
print(cm)
#str(cm)

### cargar funciones en sesion
source( "kappa.R" )
source( "tau.R" )
source( "kw.R" )

### calcular naive kappa
x<-kappa(cm); summary.kappa(x)
summary.kappa(x, alpha=0.1)
x<-tau(cm); summary.tau(x)
x<-tau(cm, c(.1,.4,.1,.4)); summary.tau(x)

### calcular precision aproximada
w<-c(1,0,.67,1,0,1,0,0,1,0,1,1,.91,0,.61,1)
w<-matrix(w, 4, 4, byrow=T)
print(w)
x<-kw(cm,w)
summary.kw(x, 0.01)
