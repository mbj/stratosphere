module Stratosphere.ValuesSpec
  ( spec
  ) where

import Data.Aeson
import Data.Text (Text)
import Prelude
import Stratosphere.Values
import Test.Hspec

spec :: Spec
spec = do
  describe "Val/ValList JSON instances" $ do

    it "Ref and RefList produce the same JSON" $ do
      toJSON (Ref "MyVal" :: Val Text) `shouldBe` toJSON (RefList "MyVal" :: ValList Text)

    it "ImportValue and ImportValueList produce the same JSON" $ do
      toJSON (ImportValue "MyVal" :: Val Text) `shouldBe` toJSON (ImportValueList "MyVal" :: ValList Text)
