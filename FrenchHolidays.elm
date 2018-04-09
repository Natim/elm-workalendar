module FrenchHolidays exposing (offdays)

{-| This library makes it easy to compute the list of French Holidays for a given year

@docs offdays

-}

import Easter exposing (EasterMethod(..), easter)
import Date exposing (Date, Month(..))
import Date.Extra as Date exposing (Interval(..))


date : Int -> Month -> Int -> Date
date year month day =
    Date.fromParts year month day 0 0 0 0


compare : ( Date, String ) -> ( Date, String ) -> Order
compare ( d1, _ ) ( d2, _ ) =
    Date.compare d1 d2


{-| Return a list of Dates with their description

    import FrenchHolidays exposing (offdays)
    import Date exposing (Date, Month)
    import Date.Extra as Date


    date : Int -> Month -> Int -> Date
    date year month day =
        Date.fromParts year month day 0 0 0 0


    offdays 2017

    ==
       [ ( date 2017 Jan 1, "New Year" )
       , ( date 2017 Apr 17, "Easter Monday" )
       , ( date 2017 May 1, "Labour Day" )
       , ( date 2017 May 8, "Victory Europe Day" )
       , ( date 2017 May 25, "Ascension" )
       , ( date 2017 Jun 5, "Whit Monday" )
       , ( date 2017 Jul 14, "Bastille Day" )
       , ( date 2017 Aug 15, "Assumption Day" )
       , ( date 2017 Nov 1, "All Saints Day" )
       , ( date 2017 Nov 11, "Armistice Day" )
       , ( date 2017 Dec 25, "Christmas Day" )
       ]

-}
offdays : Int -> List ( Date, String )
offdays year =
    let
        easterDay =
            easter Western year
    in
        List.sortWith compare
            [ ( date year Jan 1, "New Year" )
            , ( date year May 1, "Labour Day" )
            , ( date year May 8, "Victory Europe Day" )
            , ( date year Jul 14, "Bastille Day" )
            , ( date year Aug 15, "Assumption Day" )
            , ( date year Nov 1, "All Saints Day" )
            , ( date year Nov 11, "Armistice Day" )
            , ( date year Dec 25, "Christmas Day" )
            , ( Date.add Day 1 easterDay, "Easter Monday" )
            , ( Date.add Day 39 easterDay, "Ascension" )
            , ( Date.add Day 50 easterDay, "Whit Monday" )
            ]
