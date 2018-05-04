module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String
    , age : Int
    , occupation : String
    }


joe : Person
joe =
    { name = "Joe"
    , age = 21
    , occupation = "Analyst"
    }


fido =
    { name = "Fido", breed = "Husky" }


promote p =
    { p | occupation = "Manager" }


greet : Person -> String
greet r =
    "Hello " ++ r.name


main =
    joe |> promote |> toString |> text
