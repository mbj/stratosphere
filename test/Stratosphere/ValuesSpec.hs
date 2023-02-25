module Stratosphere.ValuesSpec
  ( spec
  ) where

import Data.Text (Text)
import Prelude
import Stratosphere.Value
import Test.Hspec

import qualified Data.Aeson as JSON

spec :: Spec
spec = do
  describe "JSON instances" $ do
    it "Ref and RefList produce the same JSON" $ do
      JSON.toJSON (Ref "MyVal" :: Value Text) `shouldBe` JSON.toJSON (RefList "MyVal" :: ValueList Text)

    it "ImportValue and ImportValueList produce the same JSON" $ do
      JSON.toJSON (ImportValue "MyVal" :: Value Text) `shouldBe` JSON.toJSON (ImportValueList "MyVal" :: ValueList Text)
