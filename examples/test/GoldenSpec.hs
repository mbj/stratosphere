module GoldenSpec (spec) where

import Control.Monad
import Stratosphere
import Stratosphere.Examples.Main
import Test.Syd
import Prelude

spec :: Spec
spec =
  forM_ templates $ \(name, template) ->
    it (unwords ["outputs the", name, "template the same way"]) $ do
      pureGoldenLazyByteStringFile
        ("test_resources/" ++ name ++ ".json")
        (encodeTemplate template)
