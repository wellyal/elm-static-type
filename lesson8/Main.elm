module Main exposing (..)

import Html exposing (..)


data : Breed
data =
    Crossbreed Husky (Crossbreed Poodle Beagle)


type Breed
    = Beagle
    | Husky
    | Poodle
    | Crossbreed Breed Breed


main =
    text (toString data)
