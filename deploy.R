# deploy.R
# --------------------------------------------------
# Reconstruye tu sitio Hugo y publica automáticamente
# en GitHub Pages usando SSH.
# --------------------------------------------------

# 1️⃣ Borrar la carpeta 'public' antigua (opcional)
unlink("public", recursive = TRUE)

# 2️⃣ Reconstruir el sitio
blogdown::build_site()

# 3️⃣ Entrar en la carpeta 'public'
setwd("public")

# 4️⃣ Inicializar git si es la primera vez (descomentar la primera vez)
# system("git init")
# system("git branch -M gh-pages")
# system("git remote add origin git@github.com:celia1933/Alcorques-con-rejilla.git")

# 5️⃣ Añadir todos los archivos
system("git add .")

# 6️⃣ Hacer commit con mensaje automático
commit_msg <- paste0("Actualizar sitio: ", Sys.time())
system(paste("git commit -m", shQuote(commit_msg)))

# 7️⃣ Subir los cambios a GitHub Pages (SSH)
system("git push origin gh-pages --force")

# 8️⃣ Volver al directorio raíz del proyecto
setwd("..")

# ✅ Mensaje final
cat("Sitio publicado en GitHub Pages vía SSH!\n")
