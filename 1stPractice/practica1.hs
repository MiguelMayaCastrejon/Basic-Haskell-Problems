{-
Estructuras discretas 2021-1
Práctica 1 Básicos del lenguaje de programación Haskell.
Profesor: Alejandro Hernández Mora alejandrohmora@ciencias.unam.mx 
Ayudantes: Pablo Camacho González pablopcg1@ciencias.unam.mx | Adrián Felipe Vélez Rivera adrianf_velez@ciencias.unam.mx
Ayudantes de laboratorio: Luis Manuel Martínez Damaso	LuisManuel@ciencias.unam.mx | Edith Araceli Reyes López edithareyesl@ciencias.unam.mx
Alumnos: Daniela Anaya Solis danielaanayas@ciencias.unam.mx |Mauricio Javier Salas Martinéz maw@ciencias.unam.mx | Joel Miguel Maya Castrejón mike.maya@ciencias.unam.mx

-}

module Practica1 where 

{-1. Evaluación de una función cuadrática. La función va a recibir 4 parámetros a, b, c, x, donde a, b y c representan a la ecuación
ax²+bx+c. La x es el valor con el que vamos a evaluar a dicha ecuación. -}
evaluacionCuadratica :: Float -> Float -> Float -> Float -> Float
evaluacionCuadratica a b c x = (a * x * x) + (b*x) + c

{- 2. Hipotenusa de un triagulo. La función debe calcular la hipotenusa de un triángulo con base b y altura h. -}
hipotenusa :: Float -> Float -> Float
hipotenusa b h  = sqrt(b^2 + h^2 )

{- 3. Norma (longitud, medida) de un vector en el plano. La función debe calcular la (longitud, medida) norma del vector (x, y). -}
normaVectorial :: (Float,Float) -> Float
normaVectorial (x, y) = sqrt(x^2 + y^2) --En la terminal ingresar los valores como esta en la firma.


{- 4. Comparador. La función recibe dos números tipo Float a y b. La función debe devolver 0 si los a es igual
a b, 1 si a es mayor a b y −1 si a es menor a b. -}
comparador :: Float -> Float -> Int
comparador a b = if a == b
                    then 0
                    else if a>b 
                        then 1
                        else -1

{- 5. Suma de fracciones. La función recibe dos tuplas que representa a las fracciones a/b y c/d. La función debe
devolver una tupla con el resultado de sumar las fracciones que recibe comó parámetros. -}
sumaFraciones :: (Int,Int) -> (Int,Int) -> (Int,Int)
sumaFraciones (a,b) (c,d) = if b==d 
                                then ((a+c),b) 
                                else ((d*a + b*c), b*d) 

{- 6. Producto punto en el plano. La Función debe calcular el producto punto entre los vectores (x 1 , y 1 ) y
(x 2 , y 2 ). -}
productoPunto :: (Float,Float) -> (Float,Float) -> Float
productoPunto (x1,y1) (x2,y2) = x1*x2 + y1*y2

{- 7. Función distancia entre dos puntos en el plano. La función debe calcular la distancia entre los puntos
(x 1 , y 1 ) y (x 2 , y 2 ). -}
distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float
distanciaPuntos (x1,y1) (x2,y2) = sqrt((x2-x1)^2 + (y2-y1)^2)

{- 8. Pendiente de la recta que pasa por dos puntos. La función debe calcular la pendiente de la recta que
pasa por los puntos (x 1 , y 1 ) y (x 2 , y 2 ). -}
pendienteRecta :: (Float,Float) -> (Float,Float) -> Float
pendienteRecta (x1,y1) (x2,y2) = (y2-y1)/(x2-x1)

{- 9. Raices de una ecuación cuadratica. La función recibe como parámetros tres valores de tipo Float a, b y
c que representan a la ecuación ax^2 + bx + c = 0. El resultado debe ser una tupla con las dos raices. Cada raı́z
es una tupla que representa a un número complejo. Si la ráiz no tiene parte imaginaria, la segunda entrada
debe ser 0. -}

raicesCuadraticas :: Float -> Float -> Float -> ((Float,Float), (Float, Float))
raicesCuadraticas a b c 
                | d >= 0  = ( ((-b + d)/ t, (0) ), ((-b - d)/ t, (0) ))
                | otherwise = ( ( (-b)/t ,sqrt((negate (b^2-4*a*c)))/t ) , ( (-b)/t , - sqrt((negate (b^2-4*a*c)))/t )  )
                where
                    d = sqrt(b^2 -4*a*c)
                    t = 2*a

{- 10. Volumen de una pirámide regular. La función recibe como parámetros tres valores de tipo Float l, h y
n. El parámetro l representa es el tamaño de los lados de la pirámide, h es la altura y n es el número de lados
de la base. La función debe calcular de volumen de la piramide representada por los parámetros l, h y n. -}

--Funciones auxiliares
angulo:: Float -> Float
angulo n = (2 *pi)/n

apotema:: Float -> Float -> Float
apotema l n = l/(2* tan ((angulo n )/2))

areaPoligono :: Float -> Float -> Float
areaPoligono l n = (l* n *(apotema l n))/2

volumenPiramidal :: Float -> Float -> Float -> Float
volumenPiramidal  l h n = (((l* n *(apotema l n))/2) * h)/3