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
            [ text "Hello World!" ]
        , Svg.svg
            [ viewBox "0 0 100 100", width "300px" ]
            [ Svg.g []
                [ Svg.path
                    [ d "M10,20 L20,10 a10,10 0 0 1 5,-3 h 20"

                    -- [ d "M10,20 L20 10"
                    , fill "none"
                    , stroke "blue"
                    , strokeWidth "2"
                    ]
                    []
                , Svg.circle
                    [ cx "20", cy "30", r "2", fill "orange" ]
                    []
                ]
            ]
        ]
