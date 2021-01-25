{-  
Estructuras discretas 2021-1
Práctica 3  Creación de tipos en Haskell.
Profesor: Alejandro Hernández Mora alejandrohmora@ciencias.unam.mx 
Ayudantes: Pablo Camacho González pablopcg1@ciencias.unam.mx | Adrián Felipe Vélez Rivera adrianf_velez@ciencias.unam.mx
Ayudantes de laboratorio: Luis Manuel Martínez Damaso	LuisManuel@ciencias.unam.mx | Edith Araceli Reyes López edithareyesl@ciencias.unam.mx
Alumnos: Daniela Anaya Solis danielaanayas@ciencias.unam.mx |Mauricio Javier Salas Martinéz maw@ciencias.unam.mx | Joel Miguel Maya Castrejón mike.maya@ciencias.unam.mx
-}

module Practica3 where 

data Var = A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z deriving (Show, Eq, Ord)

data Formula = Prop Var 
            | Neg Formula
            | Formula :&: Formula
            | Formula :|: Formula
            | Formula :=>: Formula
            | Formula :<=>: Formula deriving (Show, Eq, Ord)

infixl 9 :&:
infixl 9 :|:
infixl 7 :=>:
infixl 8 :<=>:

{- 1.- Negación. Una función recibe una fórmula y devuelve su negación. Hay que aplicar las reglas de la negación. -}
{- Ej. negar ((Prop P) :<=>: (Prop Q))
(Prop P :&: Neg (Prop Q)) :|: (Prop Q :&: Neg (Prop P)) -}
negar :: Formula -> Formula
negar (Prop p) = Neg (Prop p)
negar (Neg f) = f
negar ( p :&: q) = (negar p) :|: (negar q)
negar ( p :|: q) = (negar p) :&: (negar q)
negar ( p :=>: q) = (p) :&: (negar q)
negar ( p :<=>: q) = ((p) :&: (negar q)) :|: ((q) :&: (negar p))

{- 2. Variables de la fórmula. La función devuelve una lista con todas las variables de una fórmula. La lista no
debe contener repetidos.-}
variables :: Formula -> [Var]
variables (Prop p) = [p]
variables (Neg f) = variables f
variables ( p :&: q) = variables p `repetidos` variables q
variables ( p :|: q) = variables p `repetidos` variables q
variables ( p :=>: q) = variables p `repetidos` variables q
variables ( p :<=>: q) = variables p `repetidos` variables q

--Funcion auxiliar usada en "variables"
repetidos :: Eq a => [a] -> [a] -> [a]
repetidos xs ys = xs ++ [y | y <- ys, y `notElem` xs]

{- 3. Equivalencia. La función recibe una fórmula y devuelve la fórmula equivalente sin condicionales, bicondicio-
nales y la negación sólo está frente a variables proposicionales. -}
equivalencia :: Formula -> Formula
equivalencia (Neg(Prop p)) = negar (Prop p)
equivalencia (Neg (p :&: q)) = (negar p) :|: (negar q)
equivalencia (Neg (p :|: q)) = (negar p) :&: (negar q)
equivalencia ( p :=>: q) = negar (p) :|: (q)
equivalencia ( p :<=>: q) = (negar (p) :|: (q)) :&: (negar (q) :|: (p))

{- 4. Interpretación. La función recibe una fórmula y una lista con parejas formadas por una variable y su valor
booleano. La función debe devolver la interpretación de la fórmula usando la lista de parejas. Puedes asumir
que todas las variables tienen su valor en la lista de parejas. -}
--interpretacion :: Formula -> [(Var,Bool)] -> Bool

{- 5. Tabla de Verdad. La función calcula la tabla de verdad de una lista de variables.-}
--tablaVerdad :: [Var] -> [(Var,Bool)]

{- 6.- Tautología. La función verifica si una fórmula es una tautología. -}
--tautologia :: Formula -> Bool