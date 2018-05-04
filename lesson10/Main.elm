module Main exposing (..)

import Html exposing (..)


main =
    text (box |> volume |> toString)


type Shape
    = Sphere { radius : Float }
    | Box { length : Float, height : Float, thickness : Float }
    | Cone { radius : Float, height : Float }


cone =
    Cone { height = 2, radius = 1 }


box =
    Box { length = 1, height = 2, thickness = 3 }


volume : Shape -> Float
volume s =
    case s of
        Sphere { radius } ->
            4 / 3 * pi * radius ^ 3

        Box { length, height, thickness } ->
            length * height * thickness

        Cone { radius, height } ->
            pi * radius ^ 2 * height / 3
