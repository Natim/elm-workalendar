module Tests exposing (..)

import Date exposing (Month(..))
import Date.Extra as Date
import Expect exposing (Expectation)
import FrenchHolidays exposing (offdays)
import Test exposing (..)


all : Test
all =
    describe "offdays"
        [ test "2017" <|
            \() ->
                Expect.equal (offdays 2017)
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
        , test "2018" <|
            \() ->
                Expect.equal (offdays 2018)
                    [ ( Date.fromParts 2018 Jan 1 0 0 0 0, "New Year" )
                    , ( Date.fromParts 2018 Apr 2 0 0 0 0, "Easter Monday" )
                    , ( Date.fromParts 2018 May 1 0 0 0 0, "Labour Day" )
                    , ( Date.fromParts 2018 May 8 0 0 0 0, "Victory Europe Day" )
                    , ( Date.fromParts 2018 May 10 0 0 0 0, "Ascension" )
                    , ( Date.fromParts 2018 May 21 0 0 0 0, "Whit Monday" )
                    , ( Date.fromParts 2018 Jul 14 0 0 0 0, "Bastille Day" )
                    , ( Date.fromParts 2018 Aug 15 0 0 0 0, "Assumption Day" )
                    , ( Date.fromParts 2018 Nov 1 0 0 0 0, "All Saints Day" )
                    , ( Date.fromParts 2018 Nov 11 0 0 0 0, "Armistice Day" )
                    , ( Date.fromParts 2018 Dec 25 0 0 0 0, "Christmas Day" )
                    ]
        ]
