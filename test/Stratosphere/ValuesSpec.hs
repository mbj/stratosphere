module Stratosphere.ValuesSpec
  ( spec
  ) where

import Data.Text (Text)
import Prelude
import Stratosphere.Value
import Test.Syd

import qualified Data.Aeson as JSON

spec :: Spec
spec = do
  describe "JSON instances" $ do
    it "Ref and RefList produce the same JSON" $ do
      JSON.toJSON (Ref "MyVal" :: Value Text) `shouldBe` JSON.toJSON (RefList "MyVal" :: ValueList Text)

    it "ImportValue and ImportValueList produce the same JSON" $ do
      JSON.toJSON (ImportValue "MyVal" :: Value Text) `shouldBe` JSON.toJSON (ImportValueList "MyVal" :: ValueList Text)

    it "Cidr produces expected JSON" $ do
      JSON.toJSON @(ValueList Text) (Cidr "192.168.0.0/24" "6" "5") `shouldBe` JSON.object [("Fn::Cidr", JSON.Array ["192.168.0.0/24", "6", "5"])]
