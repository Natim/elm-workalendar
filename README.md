# elm-workalendar

elm-workalendar is a pure Elm library for computing French holidays for a given year.

For now it only supports FrenchHolidays.

Based on [the workalendar Python lib](https://github.com/peopledoc/workalendar/).


## Example

    import Date exposing (Date, Month(..))
    import Date.Extra as Date
    
    
    date : Int -> Month -> Int -> Date
    date year month day =
        Date.fromParts year month day 0 0 0 0

    
    -- Holidays for 2017
    offdays 2017 ==
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

See
[the Elm package](http://package.elm-lang.org/packages/Natim/elm-workalendar/latest) for
full documentation.


## Development

Run the test suite:

    elm-test
