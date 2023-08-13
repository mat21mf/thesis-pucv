---
title: |
       | Aplicación de técnicas de clusterización
       | para la clasificación de grupos vegetacionales.

author: Matías F. Rebolledo G.
mail: matias.rebolledo@gmail.com
output:
  pdf_document:
    highlight: zenburn
    number_sections: true
    includes:
      in_header: tex/header.tex
      before_body: tex/before_body.tex
bibliography: resumen.bib
link-citations: yes
geometry: margin=2.25cm
---

<!--
subtitle: |
          | Trabajo de Memoria de Título de
          | Magíster en Estadística
          | Pontificia Universidad Católica de Valparaíso
-->

\clearpage


\input{vacio}


# Introducción.

El presente informe resume las labores realizadas durante la implementación de
un método de clusterización usando el algoritmo de k-medias para identificar
grupos homogéneos de vegetación. Describe los pasos que involucraron,
preparación de la información, aplicación del método de k-medias, estimación de
métricas de desempeño para obtener el número óptimo de clusters, evaluación de
la precisión mediante el método de matriz de confusión y generación de las
imágenes resultantes clasificadas.

<br>

Tanto en áreas de biodiversidad como en temas medio ambientales diversos, es
necesario identificar zonas que posean características homogéneas que puedan
ser separadas en sub divisiones para poder implementar planes específicos
por cada entidad en virtud de sus características distintivas. Una de las
formas es poder hacer uso de imágenes satelitales que representen un conjunto
de variables de interés las que a su vez puedan ser agrupadas en grupos más
pequeños con características homogéneas entre sí. La imagen satelital además
de ser una fuente de datos, representa una zona determinada del espacio y
es generada mediante sensores presentes en satelites y vehículos de vuelo
especializados. Conforme la tecnología con que el sensor genera la imagen,
se tiene que ésta puede contener errores generados por las condiciones
atmosféricas como por las mismas propiedades físicas con las que cada
sensor genera la información.
Por este motivo toda información espacial debe ser cotejada con métodos
en terreno para corroborar que la información con la que se cuenta sea
lo más exacta posible.

<br>

En las últimas décadas, técnicas estadísticas han sido utilizadas para
la identificación de grupos homogéneos en diferentes zonas espaciales
mediante el uso de información satelital. En nuestro estudio haremos
uso de la técnica denominada algoritmo de k-medias o \emph{k-means} en
inglés que permite separar grupos homogéneos mediante el criterio
de minimización de la suma de cuadrados dentro de cada grupo. A pesar
que esta como otras técnicas han ido adoptándose progresivamente
para responder preguntas de interés de la biodiversidad y el medio
ambiente, hemos sido testigos de un aumento en las capacidades de
cómputo con un consecuente abaratamiento en los costos de adquisición
de nuevas tecnologías. Esto ha tenido una gran implicancia en términos
de viabilidad de implementación de proyectos que requieran mecanismos
automatizados que generen información útil a partir de datos que
sería considerablemente inviables de conseguir operacionalmente,
ya sea en tiempo, costos o mano de obra.

<br>

Siguiendo esta línea, esta investigación incopora un método novedoso
para el procesamiento de información satelital que es de por si de
un tamaño elevado y que ha restringido muchos estudios en cuanto
a recursos computacionales.

\clearpage

# Estado del arte.

En las últimas décadas, las macropresiones se han intensificado tanto
cualitativa como cuantitativamente, debido a un mayor crecimiento económico, el
cual en una economía extractiva como la chilena, ejerce mayor presión por
recursos hídricos, silvícolas, de suelo, mar, alterando los ecosistemas. Por
ejemplo la agricultura, que utiliza amplias coberturas espaciales y está
inserta en ecosistemas vivos, ha generado presión por agua y suelo, llegando ha
afectar/amenazar el bosque esclerófilo mediterráneo, que es endémico de cerros
y quebradas, debido a cultivos vitivinícolas y frutales que se instalan en
ellos. Por parte de la industria forestal, su crecimiento ha afectado al bosque
nativo y su biodiversidad y ha significado un deterioro de la capacidad hídrica
de las cuencas. Se calcula una pérdida o reducción de bosque nativo en a lo
menos 237.126 ha entre 1999 y 2015, tanto por conversión de praderas y
matorrales (48%) como por sustitución por plantaciones forestales exóticas
(41%). El crecimiento de la minería, ha presionado por agua, suelo subsuelo,
aire y glaciares, llegando a un punto crítico en que las macrozonas promedian
un 2000% por aprovechamiento consuntivo de aguas subterráneas, mientras en
algunas de ellas las estaciones de monitoreo muestran caídas de un 20% en las
precipitaciones. El mayor poder adquisitivo de la población, ha aumentado la
presión por agua, ha incrementado el parque automotriz y la contaminación del
aire, presentando graves problemas de concentración de MP10 y MP2.5 en todas
las regiones con excepción de Magallanes. La presión por políticas públicas
medioambientales y fiscalización, será mayor.

La creación del Ministerio del Medio Ambiente, es quizá uno de los mayores
cambios en este contexto y destaca también el avance en materia de regulación
ambiental con la entrada en vigencia de al menos 11 normas de emisión de
contaminantes y cambios en la forma de determinar caudales hidrológicos. La
entrada en vigencia el 2008 de la Ley de bosque nativo y fomento forestal, o el
2016 del derecho real de conservación medioambiental Ley 20.930, son asimismo
pasos importantes para frenar el avance sostenido de la pérdida de bienes de la
naturaleza (suelos, aguas continentales, bosques nativos, biodiversidad del mar
y borde costero). Sin embargo, la fiscalización que pueda realizar la
Superintendencia del Medio Ambiente y las instituciones sectoriales del Estado
es limitada, por ejemplo los brigadistas son escasos, mientras que las
extensiones son muy amplias y se encuentran diseminadas por el territorio nacional. En ese
escenario las tecnologías de monitoreo hidrológicos, satelital, cobran
protagonismo. Contar con más y mejor información es vital. La apertura pública
a las fuentes de la información de monitoreo hidrológico, gatillada en parte
por la promulgación de la Ley sobre el acceso a la información pública, va en
esa dirección. Hoy se cuenta con a lo menos 7 fuentes de datos disponibles en
internet, alguna de ellas, como la de la DGA con datos de “monitoreo
instantáneos”.

En cuanto a la biodiversidad (tierra y mar), es imprescindible contar con
estudios de línea base, se requiere de mucha más investigación, existe una gran
brecha al respecto. Por ejemplo, si queremos saber cual es la evolución de la
biodiversidad genética en Chile, existen escasos antecedentes para realizar
comparaciones. El cuadro \ref{reftabespp} compara datos tomados el año 1999
versus el año 2015:

\input{headtabespp}

Señalar que el aumento de las especies bajo amenaza, se debe además de los
factores señalados, al descubrimiento de nuevas especies, gracias a los
esfuerzos de más investigaciones.

A las especies bajo amenaza del cuadro \ref{reftabespp}, se suman los problemas
de la erosión. En la categoría “suelos graves y muy graves” en 1979 afectaba a
11.506.000 hectáreas, pasando en el 2010 a 18.112.000 has. Según el estudio
“los costos de la inacción de la desertificación y degradación de las tierras”
aquellos suelos áridos, semiáridos y subhúmedos secos superan el 60% del
territorio nacional afectado por algún grado de desertificación, donde se
concentran los mayores daños a los suelos, la biodiversidad y a la
productividad silvoagropecuaria en general. A la falta de estudios sobre estas
materias, se suma la dificultad de estimar el costo o valor económico que
representa la pérdida de patrimonio natural. En el caso de la desertificación,
no existe una masa de estudios que permita comparar resultados y validar
metodologías, mientras por otra parte, la información necesaria para llevar a
cabo las investigaciones en ocasiones no es suficiente, no está actualizada o
no corresponde a lo requerido. Instituciones como el SAG, CNR, CONAF, ODEPA,
CIREN y los censos nacionales agropecuarios, proporcionan ciertos datos e
información, que mediante algunas metodologías, tales como: “costos de reemplazo”,
“costos por erosión” y “estimaciones econométricas de las funciones de
producción y rendimientos” se pudo obtener una valorización de dichos costos de
inacción. Así por ejemplo, la Región de Coquimbo es la más afectada por el
proceso de desertificación, con unos costos de inacción equivalentes al 23,4%
de su PIB agropecuario. Paralelamente en la Región Metropolitana estos costos
representan un 9,36% de su PIB agropecuario regional.

\begin{table}[ht]
 \begin{center}
 \includegraphics[clip=true]{./estado.arte/resumen_word_frd_tab02-crop.pdf}
 \footnotesize{Fuente: Chile, Los costos de la inacción de la desertificación y degradación de las tierras. PNUD-UE-
CEPAL.}
 \caption{Causas, Consecuencias, Impactos y Métodos de estimación de los costos
de la desertificación y degradación de las tierras.}
 \label{reftabcaus}
 \end{center}
\end{table}

Es importante en un mundo economicista, el traducir a valores económicos el impacto que
significa la pérdida de biodiversidad y patrimonio natural. Considerar asimismo que los
esfuerzos en el sector público para establecer estrategias y políticas de sustentabilidad no
han tenido efecto práctico en la conservación de la biodiversidad. Los reiterados déficits en
la aplicación del Sistema de Evaluación de Impacto Ambiental, las tergiversaciones legales
en torno a este sistema y la falta de jerarquización que se le da a la biodiversidad en los
estudios de impacto, han sido también factores de pérdida de especies y deterioro de
ecosistemas.
A todo lo anterior, se suma la intangibilidad de los atributos que tiene o presenta la
biodiversidad tanto para sectores productivos o para el propio ser humano, lo que redunda
en más complejidades para determinar el costo/pérdida. Una metodología utilizada para
esta finalidad es la de “valoración económica total o VET”. Con esta metodología, por
ejemplo se valorizó el impacto que 7 especies exóticas invasoras o EEI, generan al país:

\input{headtabvalo}

Las EEI tienen tal impacto que el año 2005 se creó el “comité operativo para el
control de EEI” (COCEI), el cual vía “resolución exenta 684” del año 2013 se
formalizó y desde el año 2015 se amplió a un “plan de acción para la gestión de
especies exóticas invasoras”, enmarcado en la estrategia nacional de
biodiversidad que se ha planteado Chile. La biomasa chilena (productiva y
biodiversidad) requiere de mayor estudio para saber su efecto multiplicador en
el medio ambiente y también en las actividades económicas. En esa línea, el
impacto de las EEI del cuadro \ref{reftabvalo} supondría una pérdida país
proyectada a 20 años de 2 mil millones de dólares. Si agregamos impacto-costo
que aportaría la actividad productiva, el consumo humano, el cambio climático,
la pérdida sería más elevada.

La situación nacional es extrapolable al concierto global, esto se refleja en que la
conservación y gestión sustentable de la naturaleza es parte de la nueva “Agenda de
Desarrollo Global” para los próximos 15 años. Adoptada en la Asamblea General de las
Naciones Unidas, en septiembre del 2015 y que refleja el consenso universal existente en
torno a la necesidad de cuidar la diversidad biológica de nuestro planeta. De hecho, el
objetivo 15 de este nuevo acuerdo explicita la necesidad de proteger, restaurar y promover
la utilización sostenible de los ecosistemas terrestres, gestionar de manera sostenible el
bosque, combatir la desertificación, detener y revertir la degradación de la tierra, y frenar la
pérdida de diversidad biológica. En este sentido la existencia de áreas protegidas, las
reservas naturales, son claves para resguardar y proteger esta diversidad biológica.

\begin{table}[ht]
 \begin{center}
 \includegraphics[clip=true]{./estado.arte/resumen_word_frd_tab04-crop.pdf}
 \footnotesize{Fuente: Conservando el patrimonio natural de Chile, el aporte de las áreas protegidas.}
 \caption{Relación entre la biodiversidad y los servicios ecosistémicos.}
 \label{reftabrela}
 \end{center}
\end{table}

Las Áreas Silvestres Protegidas del Estado (SNASPE) administrado por CONAF cubren 14,3
millones de ha de los cuales 3,9 millones corresponden a bosque nativo, con escaso
crecimiento entre los años 1999 y 2015. Tendencia diferente presentaron las áreas
protegidas privadas (APP), las cuales crecieron desde 317.000 en 1999 a más de un millón
de hectáreas en 2015. Las áreas silvestres nos entregan servicios ecosistémicos de gran
valor económico, ambiental y cultural. Por ello, contar con un sistema nacional que regule
esta figura en Chile, obedece a la necesidad de proteger el patrimonio natural existente,
configurado por una biodiversidad única en el mundo. El objetivo principal de las áreas
protegidas es la conservación de la biodiversidad, pero también contribuyen de manera
efectiva al desarrollo sustentable de los territorios en los que están insertas. Los servicios
ecosistémicos que proveen las áreas protegidas de Chile demuestran que invertir en
conservación de la biodiversidad tiene impactos positivos en el bienestar de la sociedad
chilena. Hay que entender que el patrimonio natural es el conjunto de valores naturales que
tienen importancia desde un punto de vista estético, cultural, ambiental, científico y
productivo. Este patrimonio está constituido por la variedad de paisajes, elementos físicos
como cerros, ríos y lagos, así como por la flora y la fauna que habita en un territorio. El
patrimonio es aquello reconocido como propio y nuestro, y cambia a lo largo del tiempo. Un
patrimonio se va construyendo en y con el desarrollo de la cultura de los pueblos. Además,
el patrimonio resulta de una serie de cambios, construcciones, destrucciones y decisiones
que se han tomado a lo largo de la historia.

En este sentido el año 1998 la CONAMA expuso explícitamente una declaración política
ambiental, siendo el primer hito en esta materia, el año 2008 se incorporaron cambios
sugeridos en la institucionalidad ambiental; cambio climático, pérdida de biodiversidad,
escasez de agua, la contaminación y la calidad de vida en ciudades y el ingreso de Chile al
OCDE que impone un elevado estándar a las políticas públicas y a la calidad del crecimiento.
La modificación de la Ley 19.300 sobre medio ambiente. A fines del año 2010 (Ley 20.417),
se reformula completamente el Sistema de Evaluación Ambiental y se crea el Ministerio del
Medio Ambiente, el Consejo de Ministros para la Sustentabilidad, el Servicio de Evaluación
Ambiental, los Consejos Consultivos y la Superintendencia del Medio Ambiente. A través de
la Ley 20.600 se establecen tres tribunales ambientales, en Santiago, Valdivia y Antofagasta.
El año 2011 el Ejecutivo somete al Congreso Nacional el Proyecto de Ley que crea el Servicio
de Biodiversidad y Áreas Protegidas.

La institucionalidad Ambiental vigente el 2015, definida a partir de la Ley 20.147, responde
a la creciente demanda por una gestión ambiental con mayores niveles de eficacia y
eficiencia, cada vez mayor cobertura. La evaluación del desempeño ambiental realizada por
la OCDE con apoyo de la CEPAL respecto del periodo 1990 – 2004, concluía que era
“necesario desarrollar y fortalecer las instituciones ambientales en los ámbitos nacional y
regional, así como la capacidad de cumplimiento y fiscalización”. Se definen los cuatro
instrumentos de gestión ambiental, a saber: a) Resoluciones de Calificación Ambiental, b)
Planes de Prevención y/o Descontaminación, c) Normas Ambientales y d) Planes de Manejo.
Posteriormente el informe de desempeño ambiental CEPAL/OCDE de 2016, la capacidad
humana y técnica de las instituciones ambientales había aumentado significativamente,
“pero todavía sin alcanzar el nivel requerido para llevar adelante sus funciones con eficacia”.
El informe enfatiza en que “es preciso fortalecer aún más la base de información utilizada
para fundamentar el proceso de toma de decisiones relativa al medio ambiente”.

El patrimonio natural de Chile posee características únicas, como por ejemplo, contar con el
desierto de Atacama, uno de los sitios con menos precipitación del planeta y a su vez tener
áreas con el mayor número de días lluviosos al año. Asimismo, Chile cuenta con una de las
reservas de agua dulce más importantes del planeta. Estas características particulares de la
naturaleza nacional diferencian su biodiversidad, especialmente la terrestre. A nivel de
ecosistemas, Chile contiene algunos reconocidos por su importancia a nivel mundial, tales
como el desierto de Atacama, el matorral y bosque esclerófilo, el bosque lluvioso templado
valdiviano, la estepa patagónica, los lagos andinos, la puna altoandina y los ecosistemas
marinos costeros asociados a la corriente de Humbolt y a zonas de sugerencias. Además,
aproximadamente un 40% del área terrestre, principalmente la parte centro-norte del país,
así como varias islas cercanas, incluyendo el archipiélago de Juan Fernández, forman parte
del “punto caliente” de los bosques valdivianos lluviosos de invierno de Chile, uno de los 34
puntos críticos de biovidersidad a nivel mundial. Estos puntos se definen como regiones con
unas 1.500 especies de plantas endémicas y que han perdido al menos un 70% de su
hábitat original.

Al mismo tiempo, Chile contiene ecosistemas aún poco intervenidos. Nuestro país abarca el
bloque más grande de bosques templados en el hemisferio sur, y uno de los tramos más
grandes de bosques naturales relativamente sin intervención en el mundo.
El país tiene una larga tradición que ha entrelazado nuestro desarrollo con la naturaleza,
relacionándose de diversos modos con la biovidersidad. Los pueblos originarios basaban su
sistema de vida y costumbres en el uso de diferentes recursos naturales. El sustento de
nuestra economía se basa en el uso de los recursos naturales y en la utilización del medio
ambiente por los distintos productores, como la minería, la pesca, la industria forestal y
acuícola, la agricultura y el turismo. Estas actividades productivas modifican el espacio, al
mismo tiempo que las comunidades desarrollan cierta forma de vida que les es propia:
domestican especies, transforman relieve, hacen caminos, canalizan los ríos. En nuestra
vida cotidiana recibimos constantemente los beneficios de la naturaleza, el desafío,
entonces, es encontrar la forma sustentable para la conservación de este patrimonio diverso.
El ambiente juega un rol de proveedor de bienes y servicios como el agua, el aire, el suelo,
entre otros y debe protegérsele de amenazas, precisamente con el fin de no poner en
peligro las potenciales fuentes de desarrollo de nuevas oportunidades para los seres
humanos de ahora y el futuro.

A lo largo de los años, el país ha creado leyes y organismos para la protección de la
biodiversidad, logrando hasta hoy declarar diversos tipos de áreas protegidas que
representan en conjunto el 20,7% del territorio nacional continental y el 4% del mar
territorial chileno. La naturaleza es parte de nuestra vida cotidiana y está íntimamente
ligada con nuestra identidad y desarrollo como país. Es por ello que la conservación de la
biodiversidad es una inversión que mantiene viva la base de nuestro desarrollo, el bienestar
de los chilenos y las fuentes de oportunidades para las personas. Las tecnologías pueden
aportar a producir y procesar grandes volúmenes de datos, de información, que facilite la
recopilación de cifras comparables, ayude a las investigaciones futuras a disponer de mayor
y mejor calidad de información, oportuna y actualizada. El seguimiento a factores como el
avance de la desertificación, o a las EEI, al reemplazo de bosque nativo por exótico, implica
monitoreo en zona norte, centro y sur como en amplias y variadas extensiones, en ese
escenario sin lugar a dudas que las tecnologías (satelital, drones, de monitoreo) son una
necesidad para generar tanto una línea base como una masa critica de datos e información para
mejorar la toma de decisión y con ello, el diseño de las políticas públicas en materias medio
ambientales y de biodiversidad.

\clearpage

# Marco teórico.

## Método de k-medias.

El método de k-medias fue diseñado a mediados de los años cincuenta
\footnote{El artículo fue publicado casi tres décadas después según Wikipedia.
Consultado en Septiembre 2019.} por el
autor [@lloyd_least_1982] y consiste en un algoritmo iterativo que divide el
conjunto de datos en particiones cuya suma de cuadrados dentro de cada
partición es mínima.

### Estimación puntual.

### Estimación de intervalo.


Para cada valor de $K (1, 2, \ldots, K^{MAX})$:

+ Realizar $M$ corridas (>30), cada una con una semilla al azar.
+ En cada una de las $M$ corridas, calcular las medidas de desempeño ($\text{R}^2$,
  Elbow, CH), obteniendo así $M$ valores de cada una.
+ Entonces considerar la medida x (cualquiera de ellas), calcular el promedio
  $\overline{x}$ sobre los $M$ valores y su desviación estándar:
  $$s = \sqrt{\Sigma_{i=1}^M \frac{x_i-\overline{x}}{M-1} }$$
+ Luego el intervalo de confianza para el desempeño promedio de x se calcula
  como: $$\left[\overline{x} - z^\star \cdot \frac{s}{\sqrt{M}} , \overline{x} +
  z^\star \cdot \frac{s}{\sqrt{M}}\right]$$

Para el caso de que el intervalo tenga un 95% de confianza, el valor de
\textbf{$z^\star$} es 1.96.


\clearpage

# Propuesta.

En esta sección describiremos la estrategia que se usará para poder clasificar
grupos vegetaciones y topográficos usando el algoritmo de k-medias. Esta consiste
en varios pasos necesarios para poder procesar la información de manera eficiente.


## Selección de variables para identificación de grupos homogéneos.

La definición de la muestra consistió en definir un área total para el estudio
y también dividir el área total en áreas más pequeñas siguiendo un modelo de
clasificación de vegetación previamente definido por los autores
[@luebert_sinopsis_2006]. Ellos definen trece zonas vegetacionales para la
Región Metropolitana y la de Valparaíso con las cuales, definimos seis grupos
que constituyen zonas geográficas adyacentes cuya finalidad es disminuir el
área total del proyecto en zonas de menor tamaño y por otro lado, mantener
homogeneidad dada por los grupos colindantes en cuestión.  Adicionalmente se
crea un grupo cero que equivale a la sumatoria de las seis zonas menores (ver
cuadro \ref{reftabdesc}).

<br>

\input{headtabdesc}

<br>

### Descripción de los datos del estudio.

Se seleccionaron en incialmente 6 variables para el estudio
(Ver cuadro \ref{reftabtvar}.). Por un lado, 5
de ellas se derivan de una variable llamada modelo de elevación (DEM) y
la sexta corresponde al índice de humedad relativo en la superficie
foliar (NDMI).

\input{headtabtvar}

Cada una de las 6 variables fue sometida a un proceso de
normalización u homogeneización para lograr que todas tuvieran
un mismo sistema de proyección, tamaño y resolución. Además,
se incoporaron las coordenadas latitud y longitud como las
2 primeras variables comunes a todos los grupos para
poder realizar un análisis espacial de las variables
inicialmente seleccionadas, por lo tanto, pasamos a tener
un total de 8 variables por grupo en vez de 6.

Además de la homogenización de las variables fue también
necesario estandarizarlas, puesto que ellas se encuentran
en unidades de medición y escalas de magnitud diferentes.

\input{headtabsmpl}

## Desarrollo de un procedimiento automatizado de identificación de grupos.

\newpage

### Pre procesamiento de imágenes.

\input{headfigrast}

\newpage

### Transformación de imágenes.

Esta sección consiste principalmente en la conversión de imágenes satelitales
en archivos de tipo big.matrix, cuya diferencia principal es que están
dispuestos en forma de columnas, mientas que cada imagen están en forma de
matriz. El nombre big.matrix es confuso, porque no hace relación a una matriz
propiamente tal, sino a que es un data.frame, pero uno que puede ser accedido
con una tecnología de memoria compartida (shared memory), permitiendo que en la
sesión de trabajo no se consuma memoria RAM en un monto equivalente al tamaño
del archivo, sino que continúe la memoria compartida en el disco y tener una
sesión completamente dedicada a los procesos que se ejecutarán y no a tener un
archivo tan grande levantado en la sesión. Es es uno de los pilares con los que
este trabajo pudo ser llevado a cabo.

\input{headfigixyz}

\newpage

### Aplicación de algoritmo de clasificación.

En esta sección se utiliza el algoritmo de k-medias que realiza una estimación
iterativa en la que calcula la suma cuadrática intra clusters al mismo tiempo
que va asignando valores a cada observación como perteneciente a un grupo
cluster potencial, vuelve a calcular corrigiendo el valor asignado a algunas
observaciones y si obtiene una menor suma cuadrática intra, lo vuelve a re
calcular hasta que la diferencia entre cada etapa no es mayor a un umbral de
tolerancia, más allá del cual se detiene puesto que converge.

\input{headfigbigm}

\newpage

\input{headfigbigk}

\newpage

### Estadígrafos de evaluación del algoritmo k-medias.

Esta sección consiste en calcular a partir de los resultados del procedimiento
de clusterización, algunas métricas que permitan identificar el número óptimo
de clusters, entre las cuales, tenemos, $\text{R}^2$, Elbow, Calinski-Harabasz y
Silhouette. De las cuatro, se implementaron las tres primeras, mientras que la
última tiene una limitación dada por el tamaño muestral lo que conlleva el
cálculo de matrices de distancia de tamaño elevado.

\input{headfigesta}

\newpage

### Reconversión de big matrices en imágenes rasters.

Esta sección consiste en la generación de nuevas imágenes satelitales a partir
de las columnas con los valores clusters obtenidos tras la aplicación de cada
algoritmo. Cada vector columna está en un forma de tipo big.matrix y para
convertirlo en imagen raster es necesario realizar varios pasos, de los
cuales el más imporante, es el de intersección con el vector original
de la imagen que contiene las coordenadas espaciales, de manera
de poder convertirlo en un objeto Ascii grid y posteriormente en un
archivo Geotiff.

\input{headfigoxyz}

### Caracterización de agrupamientos.

Esta etapa consiste en la caracterización de los clusters seleccionados
para asignar nombres a los clusters elegidos. Para ello se calculan
indicadores para cada uno de los clusters, tales como, promedio,
desviación estándar, error estándar, máximo, mínimo, intervalo de
confianza, los que a su vez son graficados para analizar en detalle
como caracterizar cada agrupamiento y así ponerles un nombre
distintivo a cada uno.

Además de caracterizar cada agrupamiento, tiene otro propósito que
es permitir recodificar por tramos los valores de las variables
para poder construir una matriz de confusión y poder así evaluar
qué tan bien clasificó el algoritmo cluster cada una de las
variables originales. En el gráfico \ref{reffigmatc} está el proceso
correspondiente.

\input{headfigmatc}

\clearpage

### Evaluación de precisión de clasificación por matriz de confusión.

Es de interés señalar que no solo para la identificación de zonas
homogéneas con intereses de biodiversidad es posible usar técnicas
estadísticas. Según los autores [@congalton_assessing_2008] existen
protocolos que permiten medir que tan exactas son las mediciones que
se están haciendo a través del uso de información satelital. Esto
forma parte de todo el manejo de información cartográfica espacial
que sea medida de manera indirecta y que requiera entre otras cosas
visitas en terreno para garantizar la exactitud de las áreas
identificadas.

Además de tener una gran variedad de técnicas estadísticas
en la actualidad, se mencionó inicialmente que los sensores
satelitales, por su diseño, están expuestos a fuentes de
perturbación lo que genera errores en los datos medidos.
Tanto esto como cualquier procedimiento estadístico debe
ser sometido a un protocolo de medición de precisión, lo que
conlleva principalmente la puesta en operación de un
plan de muestreo en terreno para la verificación de zonas
de interés siguiendo también en este caso una metodología
estadística como herramienta de planificación.

Si bien es cierto fue de interés para nuestra investigación
identificar este conocimiento como una herramienta con gran
potencial para nuestros análisis, es necesario tomar en
cuenta que esto se enmarca en un problema que es también
de orden transversal en muchas áreas de la información.
Consiste principalmente en tener a disposición información
previamente tipificada. En este caso, es necesario tener
a lo menos una muestra de zonas representativas que hayan
sido previamente categorizadas a un tipo específico
de zona vegetacional o de propiedades topográficas
según sea el caso. Como esto es muchas veces
inviable en términos de presupuesto y tiempo,
no se cuenta con áreas previamente clasificadas
para el estudio por lo que no es posible aplicar
al menos la herramienta de medición denominada
matriz de confusión, puesto que requiere no solo
de los grupos identificados mediante el algoritmo
de k-medias, sino que además requiere de las
áreas nominadas por un protocolo de muestreo
en terreno o en última instancia de información
secundaria asociada a las propiedades de las
zonas de interés, pero no se cuenta con esta
información.

Por su parte, el autor [@bonham-carter_geographic_1994]
señala que para analizar la precisión
del algoritmo de k-medias es posible hacer uso de un
índice de validez interna, tal como, $\text{R}^2$, Elbow y el
Caliski-Harabasz. El autor [@desgraupes_clustercrit_2018]
ha implementado más de cincuenta fórmulas de validación
interna y externa para medir la precisión del algoritmo
de k-medias. No obstante, existen dos restricciones a la
hora de utilizarlos con nuestros datos. Por un lado,
no es compatible con el formato \emph{bigmemory} y por el
otro, varios de ellos requieren el cálculo de la matriz
de distancias, lo que en nuestro estudio es inviable
por tamaño de almacenamiento en disco duro.

\clearpage

# Experimentos.

## Resultados de las corridas de kmedias puntuales.

El cuadro \ref{refkmn_grp00_var08_objetos_print} resume cada una de las 30
corridas de kmedias puntuales realizadas para el grupo del área total, y que a
su vez fue calculado para las seis áreas restantes.

\clearpage

# Conclusiones.

Un aspecto importante a considerar antes de analizar cada conclusión dice
relación con las cosas que no pudieron ser implementadas en el estudio.  Entre
ellas la más importante talvez es el índice \emph{Silhouette} que es muy
conocido y que permite indentificar con mayor exactitud el número óptimo de
clusters.
La restricción principal está en la matriz de distancia y en toda
librería donde existe una versión de este coeficiente es esta
matriz la que se usa como insumo para su cálculo. Otra versión podría
diseñarse que no requiera crear en disco duro dicha matriz.

Otro aspecto importante para casos futuros está el uso del algoritmo
Batch-k-means e incluso Mini-batch-k-means.



\clearpage

\blandscape

# Anexos. {-}

## Resumen cuadros indicadores k-medias puntuales. {-}

\input{headkmn_grp00_var08_objetos_print}

\elandscape

\blandscape

\input{headkmn_grp01_var08_objetos_print}


\elandscape

\blandscape

\input{headkmn_grp02_var08_objetos_print}


\elandscape

\blandscape

\input{headkmn_grp03_var08_objetos_print}


\elandscape

\blandscape

\input{headkmn_grp04_var08_objetos_print}


\elandscape

\blandscape

\input{headkmn_grp05_var08_objetos_print}


\elandscape

\blandscape

\input{headkmn_grp06_var08_objetos_print}


\elandscape

## Resumen gráficos indicadores k-medias puntuales. {-}

# Referencias. {-}

## Enlaces consultados. {-}

### Medición de precisión en mapas temáticos. {-}

- [What is the best approach to evaluate an unsupervised classification](
https://www.researchgate.net/post/What_is_the_best_approach_to_evaluate_an_unsupervised_classification)
- [Evaluation measures of goodness or validity of clustering without having truth](
https://stats.stackexchange.com/questions/21807/evaluation-measures-of-goodness-or-validity-of-clustering-without-having-truth)
- [How to measure classification accuracy in the absence of ground truth](
https://www.researchgate.net/post/How_to_measure_classification_accuracy_in_the_absence_of_ground_truth)

### Creación de matrices de distancia de gran tamaño. {-}

- [R: distm with Big Memory](
https://stackoverflow.com/questions/44313983/r-distm-with-big-memory/44321935#44321935)

### Algoritmos usados en la tesis. {-}

- [K-Means tutorial - MLpack](
https://mlpack.org/doc/mlpack-git/doxygen/kmtutorial.html)

\clearpage

## Artículos consultados. {-}


\providecommand\BIBentryALTinterwordstretchfactor{2.5}
\bibliographystyle{apalike}
\bibliography{resumen}

