module Main exposing (..)

import Html exposing (..)


type List a
    = Nil
    | Cons a (List a)


l1 =
    Nil


l2 =
    Cons 1 Nil


l3 =
    Cons 1 (Cons 2 Nil)


main =
    text "Hello World!"
