# Ejemplos del uso de Guile
Están sacados de [el manual de GNU](https://www.gnu.org/software/guile/manual/html_node/Scripting-Examples.html)

En lugar de ejecutarlos con `guile` se puede dar permiso de ejecución a los ficheros con `chmod u+x fichero.scm` y ejecutarlos directamente con `./fichero.scm`. Para hacerlo puede que haya que modificar el shebang a `/usr/bin/guile` o hacer un enlace simbólico en `/usr/local/bin/guile`, dependiendo de la instalación.

## helloworld.scm
`./helloworld.scm`

## factorial.scm
`./factorial.scm NUM`

Si queremos usar la definición de `fact` desde otro script tenemos que cambiar la declaración del shebang, porque si no, al cargar `factorial.scm` desde otro script, porque intentará computar y mostrar el valor del factorial al cargarlo.

## factload1.scm
`./factload1.scm NUM`

Es igual que `factorial.scm` pero se puede cargar desde otros scripts.


## choose.scm
No sé bien qué hace, pero ilustra cómo cargar `factload1.scm` desde otro script.
