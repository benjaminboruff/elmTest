module Main exposing (..)

import Browser
import Html exposing (Html, button, div, hr, text)
import Html.Events exposing (onClick)



-- Main


main =
    Browser.sandbox { init = init, update = update, view = view }



-- Model


type alias Model =
    Int


init : Model
init =
    0



-- Update


type Msg
    = Increment
    | Decrement
    | Reset
    | PlusTen


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0

        PlusTen ->
            model + 10



-- View


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , hr [] []
        , button [ onClick Reset ] [ text "Reset" ]
        , button [ onClick PlusTen ] [ text "Add 10" ]
        ]
