{-
Estructuras discretas 2021-1
Práctica 1 Básicos del lenguaje de programación Haskell.
Profesor: Alejandro Hernández Mora alejandrohmora@ciencias.unam.mx 
Ayudante: Pablo Camacho González pablopcg1@ciencias.unam.mx | Adrián Felipe Vélez Rivera adrianf_velez@ciencias.unam.mx |
Edith Araceli Reyes López
Ayudante de laboratorio: Luis Manuel Martínez Damaso	LuisManuel@ciencias.unam.mx 
Alumnos: Joel Miguel Maya Castrejón  
-}

module Practica1 where 

{-1. Evaluación de una función cuadrática.La función recibe cuatro parámetros a, b, c y v La función debe
calcular calcular la evaluación de valor v en la ecuación ax 2 + bx + c sustituyendo a x por v.  -}
--evaluacionFuncionCuadratica :: (Float -> Float -> Float -> Float) -> Float

{- 2. Hipotenusa de un triagulo. La función debe calcular la hipotenusa de un triángulo con base b y altura h. -}
hipotenusa :: Float -> Float -> Float
hipotenusa b h  = sqrt(b^2 + h^2 )

{- 3. Norma de un vector en el plano. La función debe calcular la norma del vector (x, y). -}
--normaVectorial :: (Float,Float) -> Float

{- 4. Comparador. La función recibe dos números tipo Float a y b. La función debe devolver 0 si los a es igual
a b, 1 si a es mayor a b y −1 si a es menor a b. -}
--comparador :: Float -> Float -> Int

{- 5. Suma de fracciones. La función recibe dos tuplas que representa a las fracciones a/b y c/d. La función debe
devolver una tupla con el resultado de sumar las fracciones que recibe comó parámetros. -}
--sumaFraciones :: (Int,Int) -> (Int,Int) -> (Int,Int)

{- 6. Producto punto en el plano. La Función debe calcular el producto punto entre los vectores (x 1 , y 1 ) y
(x 2 , y 2 ). -}
--productoPunto :: (Float,Float) -> (Float,Float) -> Float

{- 7. Función distancia entre dos puntos en el plano. La función debe calcular la distancia entre los puntos
(x 1 , y 1 ) y (x 2 , y 2 ). -}
--distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float

{- 8. Pendiente de la recta que pasa por dos puntos. La función debe calcular la pendiente de la recta que
pasa por los puntos (x 1 , y 1 ) y (x 2 , y 2 ). -}
--pendienteRecta :: (Float,Float) -> (Float,Float) -> Float

{- 9. Raices de una ecuación cuadratica. La función recibe como parámetros tres valores de tipo Float a, b y
c que representan a la ecuación ax 2 + bx + c = 0. El resultado debe ser una tupla con las dos raices. Cada raı́z
es una tupla que representa a un número complejo. Si la ráiz no tiene parte imaginaria, la segunda entrada
debe ser 0. -}
--raicesCuadraticas :: Float -> Float -> Float -> ((Float,Float),(Float,Float))

{- 10. Volumen de una pirámide regular. La función recibe como parámetros tres valores de tipo Float l, h y
n. El parámetro l representa es el tamaño de los lados de la pirámide, h es la altura y n es el número de lados
de la base. La función debe calcular de volumen de la piramide representada por los parámetros l, h y n. -}
--volumenPiramidal :: Float -> Float -> Float -> Float

