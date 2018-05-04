module Main exposing (..)

import Html exposing (..)


data : Rating
data =
    Other "Appalling"


main =
    text (render data)


type Rating
    = Excellent
    | Good
    | Poor
    | Other String


render : Rating -> String
render rating =
    case rating of
        Other s ->
            s

        _ ->
            toString rating
