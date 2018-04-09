module Tests exposing (..)

import Date exposing (Date, Month(..))
import Date.Extra as Date
import Expect exposing (Expectation)
import FrenchHolidays exposing (offdays)
import Test exposing (..)


date : Int -> Month -> Int -> Date
date year month day =
    Date.fromParts year month day 0 0 0 0


all : Test
all =
    describe "offdays"
        [ test "2017" <|
            \() ->
                Expect.equal (offdays 2017)
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
        , test "2018" <|
            \() ->
                Expect.equal (offdays 2018)
                    [ ( date 2018 Jan 1, "New Year" )
                    , ( date 2018 Apr 2, "Easter Monday" )
                    , ( date 2018 May 1, "Labour Day" )
                    , ( date 2018 May 8, "Victory Europe Day" )
                    , ( date 2018 May 10, "Ascension" )
                    , ( date 2018 May 21, "Whit Monday" )
                    , ( date 2018 Jul 14, "Bastille Day" )
                    , ( date 2018 Aug 15, "Assumption Day" )
                    , ( date 2018 Nov 1, "All Saints Day" )
                    , ( date 2018 Nov 11, "Armistice Day" )
                    , ( date 2018 Dec 25, "Christmas Day" )
                    ]
        ]
