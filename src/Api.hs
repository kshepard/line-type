module Api where

import           Data.Proxy
import           Data.Text                      ( Text )
import           Servant.API

type API  = Get '[PlainText] Text


api :: Proxy API
api = Proxy
