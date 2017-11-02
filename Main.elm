module Main exposing (..)

import Html exposing (..)
import Svg as Svg
import Svg.Attributes exposing (..)


main =
    Html.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


type Msg
    = Int


init =
    ( 0, Cmd.none )


update msg model =
    ( model, Cmd.none )


subscriptions model =
    Sub.none


view model =
    div []
        [ h1 []
            [ text "Bike Stripping" ]
        , Svg.svg
            [ viewBox "0 0 100 100", width "300px" ]
            [ Svg.g []
                [ Svg.path
                    [ d
                        ("M10,20 L20,10 a8,8 0 0 1 5,-3 h 20 a8,8 0 0 1 3,3"
                            ++ "l 3,6 l 3,-3 l-4,9 l-7.5,-2 l4, -1.9 l-2.3,-4"
                            ++ "a8,8 0 0 0 -3, -3 h-10"
                        )
                    , fill "none"
                    , stroke "blue"
                    , strokeWidth "1"
                    ]
                    []
                ]
            ]
        ]
