# elm-workalendar

elm-workalendar is a pure Elm library for computing French holidays for a given year.

For now it only supports FrenchHolidays.

Based on [the workalendar Python lib](https://github.com/peopledoc/workalendar/).


## Example

    -- Holidays for 2017
    offdays 2017 ==
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

See
[the Elm package](http://package.elm-lang.org/packages/Natim/elm-workalendar/latest) for
full documentation.


## Development

Run the test suite:

    elm-test
