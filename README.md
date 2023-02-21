Auto-generate-dotenv-bash
===
visto a la necesidad de crear archivos de configuracion de entornos (.env) desarrollé un pequeño script en bash para automatizar un tipo concreto de configuracion basico que suelo escribir de manera recursiva cada vez que empiezo un proyecto.

### Cambiar permisos (opcional)
--- 
permisos para ejecutar de una forma mas rapida

```bash
    $ sudo chmod +x generate-dotenv.sh
```

### Ejecutar el programa
---

* Sin Permisos: 
```bash
    $ bash ./generate-dotenv.sh
```
+ Con permisos:
```bash
    $ ./generate-dotenv.sh