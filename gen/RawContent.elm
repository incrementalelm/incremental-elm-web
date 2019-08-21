module RawContent exposing (content)

import Dict exposing (Dict)


content : List ( List String, { extension: String, frontMatter : String, body : Maybe String } )
content =
    [ 
  ( ["accelerator-application"]
    , { frontMatter = """
|> Page
    title = Accelerator Application
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["accelerator-program"]
    , { frontMatter = """
|> Page
    title = Elm Accelerator Group Coaching Program
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["articles", "exit-gatekeepers"]
    , { frontMatter = """
|> Article
    title = Using elm types to prevent logging social security #'s
    src = article-cover/exit.jpg
    description = One of the most successful techniques I've seen for making sure you don't break elm code the next time you touch it is a technique I call an *Exit Gatekeeper*.
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["articles"]
    , { frontMatter = """
|> Page
    title = Articles
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["articles", "moving-faster-with-tiny-steps"]
    , { frontMatter = """
|> Article
    title = Moving Faster with Tiny Steps in Elm
    src = article-cover/mountains.jpg
    description = In this post, we're going to be looking up an Article in an Elm Dict, using the tiniest steps possible.
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["articles", "to-test-or-not-to-test"]
    , { frontMatter = """
|> Article
    title = To test, or not to test elm code?
    src = article-cover/thinker.jpg
    description = Is it as simple as "only test your business logic?"
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["contact"]
    , { frontMatter = """
|> Page
    title = Contact
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["core-skills-seminar"]
    , { frontMatter = """
|> Page
    title = Core Skills Seminar
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["custom-scalar-checklist"]
    , { frontMatter = """
|> Page
    title = Custom Scalar Checklist
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["elm-graphql-seminar"]
    , { frontMatter = """
|> Page
    title = Elm GraphQL Seminar
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["elm-graphql-workshop"]
    , { frontMatter = """
|> Page
    title = Elm GraphQL Workshop
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["incremental-weekly-unsubscribe"]
    , { frontMatter = """
|> Page
    title = Incremental Elm Weekly Unsubscribe
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( []
    , { frontMatter = """
|> Page
    title = Incremental Elm Consulting
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["introducing-custom-scalars-course"]
    , { frontMatter = """
|> Page
    title = Introducing Custom Scalars to your Codebase
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["learn", "architecture"]
    , { frontMatter = """
|> Learn
    title = The Elm Architecture
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["learn", "editor-config"]
    , { frontMatter = """
|> Learn
    title = Recommended Editor Configuration
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["learn", "getting-started"]
    , { frontMatter = """
|> Learn
    title = Getting Started Resources
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["learn"]
    , { frontMatter = """
|> Page
    title = Learning Resources
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["scalar-codecs-tutorial"]
    , { frontMatter = """
|> Page
    title = elm-graphql - Scalar Codecs Tutorial
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["services"]
    , { frontMatter = """
|> Page
    title = Incremental Elm Services
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["thank-you"]
    , { frontMatter = """
|> Page
    title = Sign up confirmation
""" , body = Nothing
    , extension = "emu"
    } )
  ,
  ( ["tips"]
    , { frontMatter = """
|> Page
    title = Weekly elm Tips!
""" , body = Nothing
    , extension = "emu"
    } )
  
    ]
    