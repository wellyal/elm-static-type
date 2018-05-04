module Main exposing (..)

import Html exposing (..)


main =
    text <| greet <| fido


type alias Named r =
    { r | name : String }


greet : Named r -> String
greet r =
    "Hello " ++ r.name


rename : String -> Named r -> Named r
rename newName r =
    { r | name = newName }


type alias Person =
    { name : String
    , occupation : String
    }


joe : Person
joe =
    Person "Joe" "Developer"


type alias Dog =
    { name : String
    , breed : String
    }


fido : Dog
fido =
    Dog "Fido" "Husky"
