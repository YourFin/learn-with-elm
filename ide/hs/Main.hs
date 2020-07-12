-- | 

module Main where

import Asterius.Types

toShow :: String
toShow = "Hello, asterius"

foreign import javascript
  "(() => {      \
  \  const d = document.createElemnt('div'); \
  \  d.innerHtml = $1; \
  \  document.body.appendChild(d); \
  \ \
  \ })()"
  showHtml :: JSString -> IO ()

main :: IO ()
main = do
  showHtml (toJSString "Hello, world")
