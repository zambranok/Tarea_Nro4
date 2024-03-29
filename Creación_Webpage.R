##creacion html

install.packages(<<rvest>>,repos='http://cran.us.r-proyect.org')
library("rvest")

#creacion de la variable webpage a la cual se le asiganara la pagina creada 
webpage <- 'file:///C:/Users/user/Desktop/TAREA_4.html'

#leer el codigo html de la pagina 
influenza_html <- read_html ("file:///C:/Users/user/Desktop/TAREA_4.html")

influenza_html %>%
  html_nodes(css="<html>
                                <head>
                                <style>
                                body{background-color: blue;}
                              div{background-color: blue; float: rigth; border: solid 50px orangered; height: auto;}
                              
                              .noticia{width: "auto";}
                              .imagen{width: "auto";}
                              .productos{width: "auto";}
                              table, tr, td, th{background-color: red; float: rigth;  text-align: center; border: solid 10px green;}
                              
                              </style>
                                </head>
                                <body>
                                <h1>INFLUENZA</h1>   
                                <div class="noticia">
                                <div class="imagen">
                                <img src="[https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiaoLKz_rDjAhVvLLkGHUHQBkcQjhx6BAgBEAM&url=https%3A%2F%2Fwww.clinicalascondes.cl%2FCENTROS-Y-ESPECIALIDADES%2FEspecialidades%2FPediatria%2FNoticias%2FTe-Puede-Interesar%2FInfluenza-al-acecho&psig=AOvVaw0kAWQzWQgxh-hRA8VXXSAr&ust=1563076067049884]" alt="Influenza" width="auto" height="auto">
                                </div>
                                <div class="noticia">
                                <h1>Autoridades indican que el virus de la influenza registrar� peak a fines de junio</h1>
                                <p class="justificado">
                                <h2>El grupo de riesgo son los menores de 6 a�os y los mayores de 65 a�os.</h2>
                                <p class="justificado">
                                Luego de confirmarse la vig�sima v�ctima por influenza AH1N1 en la regi�n del Bio B�o, las autoridades hacen un llamado a acudir a centros vacunatorios, 
                              sobre todo a los grupos de mayor riesgo que son los menores de 6 a�os y los mayores de 65 a�os.<br><br>
                                <p class="justificado">
                                La subsecretaria de Salud P�blica, Paula Daza, se�al� que "los n�meros son parecidos a los del a�o pasado o el antepasado; sin embargo, 
	no nos deja de lamentar, es por eso que nosotros hemos hecho una campa�a importante para que estos grupos de riesgo, que son los que la influencia 
	pueda impactar de una mayor manera, disminuyan", indic�.<br><br>
                                <p class="justificado">
                                Rodrigo Blamey, infect�logo de la cl�nica de Las Condes, afirm� que "el llamado es a que todos se vacunen, aunque no hemos llegado al peak, 
	hay que recordar que cepas de influenza hay varias, por lo menos existen 3 m�s frecuentes, dos tipo A y otra tipo B. Nosotros el a�o pasado tuvimos 
	un peak en julio; sin embargo, analizando las cepas B, muchas veces hemos tenido peak en septiembre, incluso en octubre", finaliz�.<br><br>
                                <p class="justificado">
                                LUN realiz� una recopilaci�n de las 27 preguntas m�s frecuentes para evitar la influenza, en donde destacan que los principales s�ntomas son fiebre 
                              sobre 38 grados, dolores musculares y tos seca inicial e irritativa. Con respecto a las diferencias entre el virus y el resfriado com�n, se indica que 
                              ambas tienen fiebre y dolor muscular, pero que la influenza no tiene tanta congesti�n nasal y que los s�ntomas aparecen violentamente.<br><br>
                                <p class="justificado">
                                En cuanto a los m�todos de contagio, se afirma que puede ser mediante la tos, el estornudo o incluso el habla; en definitiva, cualquier contacto con el virus, 
                              incluso tocar una manilla, puede concluir en un contagio.<br><br>
                                <p class="justificado">
                                El cuadro puede durar hasta 15 d�as, en donde el virus atacar� con gripe, dolor corporal, tos, fiebre y cefalea intensa.
                              <br><br>
                                
                                <div class="imagen">
                                <img src="[https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjtt5aO_7DjAhV4FbkGHfBDAUkQjhx6BAgBEAM&url=https%3A%2F%2Ftecreview.tec.mx%2Finfluenza-2016-no-bajes-la-guardia%2F&psig=AOvVaw3i9WtZ9KS_tgxHKf5O4NrF&ust=1563076295824064]" border="10" alt="Sintomas" width="auto" height="auto"><br><br>
                                </div>
                                
                                
                                </p>
                                
                                </div>
                                </div>
                                
                                <h1>TABLA DE PRECIOS</h1>
                                <div class="productos">
                                <table>
                                <tr>
                                <th>PRODUCTO</th>
                                <th>LIDER</th>
                                <th>JUMBO</th>
                                </tr>
                                <tr>
                                <td>Papel Higienico CONFORT doble hoja 30 mtr</td>
                                <td>$2190</td>
                                <td>$1999</td>
                                </tr>
                                <tr>
                                <td>Tallarines N 78 LUCCHETTI 400GR</td>
                                <td>$659</td>
                                <td>$689</td>
                                </tr>
                                <tr>
                                <td>Leche SOPROLE sin lactosa 1L</td>
                                <td>$840</td>
                                <td>$979</td>
                                </tr> 
                                <tr>
                                <td>Salsa de tomates POMAROLA 200GR</td>
                                <td>$430</td>
                                <td>$460</td>
                                </tr>
                                <tr>
                                <td>Cloro concentrado CLOROX 1kg</td>
                                <td>$830</td>
                                <td>$919</td>
                                </tr>
                                </table>
                                </body>
                                </html>")%>%
html_text()

##clase css del titulo
css_titulo <- "div class="noticia">
  <h1>Autoridades indican que el virus de la influenza registrar� peak a fines de junio</h1>
  <p class="justificado">"
titulo_html <- html_nodes(webpage,css_titulo)  
  
titulo_texto <- html_text(titulo_html)

##clase css del contenido
css_contenido <- "<h2>El grupo de riesgo son los menores de 6 a�os y los mayores de 65 a�os.</h2>
  <p class="justificado">
  Luego de confirmarse la vig�sima v�ctima por influenza AH1N1 en la regi�n del Bio B�o, las autoridades hacen un llamado a acudir a centros vacunatorios, 
sobre todo a los grupos de mayor riesgo que son los menores de 6 a�os y los mayores de 65 a�os.<br><br>
  <p class="justificado">
  La subsecretaria de Salud P�blica, Paula Daza, se�al� que "los n�meros son parecidos a los del a�o pasado o el antepasado; sin embargo, 
	no nos deja de lamentar, es por eso que nosotros hemos hecho una campa�a importante para que estos grupos de riesgo, que son los que la influencia 
	pueda impactar de una mayor manera, disminuyan", indic�.<br><br>
  <p class="justificado">
  Rodrigo Blamey, infect�logo de la cl�nica de Las Condes, afirm� que "el llamado es a que todos se vacunen, aunque no hemos llegado al peak, 
	hay que recordar que cepas de influenza hay varias, por lo menos existen 3 m�s frecuentes, dos tipo A y otra tipo B. Nosotros el a�o pasado tuvimos 
	un peak en julio; sin embargo, analizando las cepas B, muchas veces hemos tenido peak en septiembre, incluso en octubre", finaliz�.<br><br>
  <p class="justificado">
  LUN realiz� una recopilaci�n de las 27 preguntas m�s frecuentes para evitar la influenza, en donde destacan que los principales s�ntomas son fiebre 
sobre 38 grados, dolores musculares y tos seca inicial e irritativa. Con respecto a las diferencias entre el virus y el resfriado com�n, se indica que 
ambas tienen fiebre y dolor muscular, pero que la influenza no tiene tanta congesti�n nasal y que los s�ntomas aparecen violentamente.<br><br>
  <p class="justificado">
  En cuanto a los m�todos de contagio, se afirma que puede ser mediante la tos, el estornudo o incluso el habla; en definitiva, cualquier contacto con el virus, 
incluso tocar una manilla, puede concluir en un contagio.<br><br>
  <p class="justificado">
  El cuadro puede durar hasta 15 d�as, en donde el virus atacar� con gripe, dolor corporal, tos, fiebre y cefalea intensa.
<br><br>"

	contenido_html <- html_nodes(webpage,css_contenido)  
	
	contenido_texto <- html_text(contenido_html)


texto=c("Autoridades indican que el virus de la influenza registrar� peak a fines de junio","El grupo de riesgo son los menores de 6 a�os y los mayores de 65 a�os",
        "Luego de confirmarse la vig�sima v�ctima por influenza AH1N1 en la regi�n del Bio B�o, las autoridades hacen un llamado a acudir a centros vacunatorios, 
	sobre todo a los grupos de mayor riesgo que son los menores de 6 a�os y los mayores de 65 a�os","La subsecretaria de Salud P�blica, Paula Daza, se�al� que los n�meros son parecidos a los del a�o pasado o el antepasado; sin embargo, 
        no nos deja de lamentar, es por eso que nosotros hemos hecho una campa�a importante para que estos grupos de riesgo, que son los que la influencia 
        pueda impactar de una mayor manera, disminuyan, indic�","Rodrigo Blamey, infect�logo de la cl�nica de Las Condes, afirm� que el llamado es a que todos se vacunen, aunque no hemos llegado al peak, 
        hay que recordar que cepas de influenza hay varias, por lo menos existen 3 m�s frecuentes, dos tipo A y otra tipo B. Nosotros el a�o pasado tuvimos 
        un peak en julio; sin embargo, analizando las cepas B, muchas veces hemos tenido peak en septiembre, incluso en octubre, finaliz�", "LUN realiz� una recopilaci�n de las 27 preguntas m�s frecuentes para evitar la influenza, en donde destacan que los principales s�ntomas son fiebre 
	sobre 38 grados, dolores musculares y tos seca inicial e irritativa. Con respecto a las diferencias entre el virus y el resfriado com�n, se indica que 
	ambas tienen fiebre y dolor muscular, pero que la influenza no tiene tanta congesti�n nasal y que los s�ntomas aparecen violentamente","En cuanto a los m�todos de contagio, se afirma que puede ser mediante la tos, el estornudo o incluso el habla; en definitiva, cualquier contacto con el virus, 
	incluso tocar una manilla, puede concluir en un contagio","El cuadro puede durar hasta 15 d�as, en donde el virus atacar� con gripe, dolor corporal, tos, fiebre y cefalea intensa")

#crear data frame

texto_split = strsplit(text,split=" ")
texto_columnas = data.frame(unlist(texto_split))

#extracci�n de los datos de la tabla de precios y almacenamiento tipo data 



#ADNRADIO.CL
WEBADN <- "https://adnradio.cl/noticias/actualida/"
WEBADN <- READ_HTML(WENADN)
WEBADNnodes <- html_attr(WEBADNnodes,"href")

for(ADNR in 1:lenght(WEBADNnodes){
  print(ADNR)
  NOTICIAS <- read_html(ADNR)
  NOTACTUALIDAD <- HTML_TEXT(html_nodes(NOTICIAS,"ACTUALIDAD"))
  print(NOTACTUALIDAD)
}
  