module Main exposing (..)

import Html exposing (div, text, Html)
import Html.Attributes exposing (style)


type alias Rectangle =
    ( Int, Int )


rect : Rectangle
rect =
    ( 200, 50 )


render : Rectangle -> Html msg
render ( w, h ) =
    div
        [ style
            [ ( "background-color", "red" )
            , ( "width", (toString w) ++ "px" )
            , ( "height", (toString h) ++ "px" )
            ]
        ]
        []


main =
    render rect
