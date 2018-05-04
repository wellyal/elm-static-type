module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String
    , age : Int
    , occupation : String
    , salary : Float
    , dog : Dog
    }


type alias Dog =
    { name : String
    , breed : String
    , sterilized : Bool
    }


joe : Person
joe =
    { name = "Joe"
    , age = 21
    , occupation = "Analyst"
    , salary = 10000
    , dog = fido
    }


fido =
    { name = "Fido"
    , breed = "Husky"
    , sterilized = False
    }


sterilizePet : Person -> Person
sterilizePet p =
    let
        dog =
            p.dog
    in
        { p | dog = { dog | sterilized = True } }


promote p =
    { p
        | occupation = "Manager"
        , salary = p.salary * 1.2
    }


main =
    joe |> promote |> sterilizePet |> toString |> text
