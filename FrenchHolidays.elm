module FrenchHolidays exposing (offdays)

{-| This library makes it easy to compute the list of French Holidays for a given year

@docs offdays

-}

import Easter exposing (EasterMethod(..), easter)
import Date exposing (Date, Month(..))
import Date.Extra as Date exposing (Interval(..))


compare : ( Date, String ) -> ( Date, String ) -> Order
compare ( d1, _ ) ( d2, _ ) =
    Date.compare d1 d2


{-| Return a list of Dates with their description

    import FrenchHolidays exposing (offdays)

    offdays 2017

    ==
       [ ( Date.fromParts 2017 Jan 1 0 0 0 0, "New Year" )
       , ( Date.fromParts 2017 Apr 17 0 0 0 0, "Easter Monday" )
       , ( Date.fromParts 2017 May 1 0 0 0 0, "Labour Day" )
       , ( Date.fromParts 2017 May 8 0 0 0 0, "Victory Europe Day" )
       , ( Date.fromParts 2017 May 25 0 0 0 0, "Ascension" )
       , ( Date.fromParts 2017 Jun 5 0 0 0 0, "Whit Monday" )
       , ( Date.fromParts 2017 Jul 14 0 0 0 0, "Bastille Day" )
       , ( Date.fromParts 2017 Aug 15 0 0 0 0, "Assumption Day" )
       , ( Date.fromParts 2017 Nov 1 0 0 0 0, "All Saints Day" )
       , ( Date.fromParts 2017 Nov 11 0 0 0 0, "Armistice Day" )
       , ( Date.fromParts 2017 Dec 25 0 0 0 0, "Christmas Day" )
       ]

-}
offdays : Int -> List ( Date, String )
offdays year =
    let
        easterDay =
            easter Western year
    in
        List.sortWith compare
            [ ( Date.fromParts year Jan 1 0 0 0 0, "New Year" )
            , ( Date.fromParts year May 1 0 0 0 0, "Labour Day" )
            , ( Date.fromParts year May 8 0 0 0 0, "Victory Europe Day" )
            , ( Date.fromParts year Jul 14 0 0 0 0, "Bastille Day" )
            , ( Date.fromParts year Aug 15 0 0 0 0, "Assumption Day" )
            , ( Date.fromParts year Nov 1 0 0 0 0, "All Saints Day" )
            , ( Date.fromParts year Nov 11 0 0 0 0, "Armistice Day" )
            , ( Date.fromParts year Dec 25 0 0 0 0, "Christmas Day" )
            , ( Date.add Day 1 easterDay, "Easter Monday" )
            , ( Date.add Day 39 easterDay, "Ascension" )
            , ( Date.add Day 50 easterDay, "Whit Monday" )
            ]
