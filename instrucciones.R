
Pasos para actualizar la web: 
  
#Poner la ubicación bien: 
  > setwd("~/Documents/acr6")

#. Hacer los cambios en la web


#No necesitas borrar public/ cada vez, a menos que quieras forzar una reconstrucción limpia:
unlink("public", recursive = TRUE)

#. Reconstruir el sitio. 
blogdown::build_site()
#. Reconstruir el sitio excluyendo drafts. 

blogdown::hugo_build(buildDrafts = FALSE) # genera sitio excluyendo drafts


#Ve a la carpeta Public.En la Terminal de RStudio: 
cd public && pwd
# Para asegurarte de que estás en /Users/celia/Documents/acr6/public

#OPCIONAL: Revisa los cambios que has hecho. En la terminal: 
git status

#Añadir cambios. En la terminal: 
git add .

#Hacer commit (guardar un conjunto de cambios en código fuente de forma permanente)
git commit -m "Actualizar sitio con cambios recientes"

#Subir los cambios a GutHub Pages (esto me da error no se por que)
git push origin gh-pages --force

#Todo esto lo voy a guardar como un Deploy. Cada vez que haga un cambio en mi web, abro RStudio y ejecuto:
source("deploy.R")




