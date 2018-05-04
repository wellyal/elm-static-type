module Main exposing (..)

import Html exposing (..)


main =
    fido |> describe |> text


type alias Dog =
    { name : String
    , breed : String
    }


fido : Dog
fido =
    Dog "Fido" "Husky"


describe : Dog -> String
describe { name, breed } =
    name ++ " is a " ++ breed
