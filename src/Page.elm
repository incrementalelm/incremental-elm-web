module Page exposing (Page, all, view)

import Dimensions exposing (Dimensions)
import Element exposing (Element)
import MarkParser


type alias Page =
    { title : String
    , body : String
    , url : String
    }


view : Page -> Dimensions -> Element msg
view page dimensions =
    page.body
        |> parseMarkup
        |> Element.el
            [ if Dimensions.isMobile dimensions then
                Element.width (Element.fill |> Element.maximum 600)

              else
                Element.width Element.fill
            , Element.height Element.fill
            , if Dimensions.isMobile dimensions then
                Element.padding 20

              else
                Element.paddingXY 200 50
            , Element.spacing 30
            ]


parseMarkup : String -> Element msg
parseMarkup markup =
    markup
        |> MarkParser.parse
        |> (\result ->
                case result of
                    Err message ->
                        Element.text "Couldn't parse!\n"

                    Ok element ->
                        element identity
           )


all : List { body : String, title : String, url : String }
all =
    [ { title = "Elm GraphQL Workshop"
      , body = """| Image
    description = Elm-GraphQL Full-Day Workshop
    src = /assets/elm-graphql-workshop-header.jpg

This workshop will equip you with everything you need to make guaranteed-correct, type-safe API requests from your Elm code! And all without needing to write a single JSON Decoder by hand!

In this hands-on workshop, the author of Elm's type-safe GraphQL query builder library, {Link|dillonkearns\\/elm-graphql|url=https://github.com/dillonkearns/elm-graphql}, will walk you through the core concepts and best practices of the library. Check out {Link|Types Without Borders|url=https://www.youtube.com/watch?v=memIRXFSNkU} from the most recent Elm Conf for some of the underlying philosophy of this library. Or you can {Link|read an overview of features of this library|url=https://medium.com/open-graphql/type-safe-composable-graphql-in-elm-b3378cc8d021}. Check out some highlights at the bottom of this event description.

| Header
    Prerequisites

| List
    - Understanding of at least Elm basics
    - A computer with a Unix shell and NodeJS

| Header
    Workshop Format

Over the course of this full-day workshop, we will cover everything from core GraphQL concepts, to the Elm-GraphQL library fundamentals, and finally advanced elm-graphql techniques.



*Morning (1st Half)*


| List
    #. GraphQL core concepts overview
    #. Elm GraphQL Overview
    #. Making your first GraphQL query
    #. Get it compiling, then get it right
    #. Using your editor to help you build queries quickly
    #. Combining fields together
    #. Basics of modularizing queries - using Elm constructs instead of GraphQL Variables
    #. Mapping into meaningful data structures
    #. Pipelines versus map2, map3..., functions
    #. Advanced techniques for modularizing your API requests in Elm

*Afternoon (2nd Half)*

| List
    #. Handling polymorphic types (Interfaces and Unions)
    #. Handling errors
    #. Getting real-time data using Subscriptions
    #. Paginated queries
    #. Dealing with real-world schema flaws
    #. Improving schemas
    #. Schema design strategies
    #. What is the purpose of custom scalars in GraphQL?
    #. Leveraging Scalars in Elm GraphQL
    #. Using custom Elm JSON decoders for your Custom Scalar Codecs
    #. Advanced techniques for modularizing your API requests in Elm

| Header
    Questions? Feedback?

We'd love to hear from you! Let us know what you think of our workshop agenda. Or {Link|send us an email|url = /contact} and we'll be happy to help! Or ping us in the #graphql channel in the {Link|Elm Slack|url = https://elmlang.herokuapp.com/}.

| Image
    description = Elm-GraphQL Workshop
    src = /assets/oslo-workshop1.jpg
"""
      , url = "elm-graphql-workshop"
      }
    ]