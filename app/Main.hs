module Main where

import           Api
import           Network.Wai.Handler.Warp
import           Servant

server :: Server API
server = return "Hello world"

app :: Application
app = serve api server

main :: IO ()
main = run 8025 app
