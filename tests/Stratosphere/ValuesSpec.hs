{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

module Stratosphere.ValuesSpec
  ( spec
  ) where

import Data.Aeson
import Data.Text (Text)
import Test.Hspec

import Stratosphere.Values

spec :: Spec
spec = do
  describe "Val/ValList JSON instances" $ do
    it "is idempotent for Sub" $ do
      idempotentJSON (sub "MyString")
      idempotentJSON (Sub "${Greeting} ${Name}" (Just []) :: Val Text)
      let
        values =
          [ ("Greeting", "Hello")
          , ("Name", "Bob")
          ]
      idempotentJSON (Sub "${Greeting} ${Name}" (Just values) :: Val Text)

    it "Ref and RefList produce the same JSON" $ do
      toJSON (Ref "MyVal" :: Val Text) `shouldBe` toJSON (RefList "MyVal" :: ValList Text)

    it "ImportValue and ImportValueList produce the same JSON" $ do
      toJSON (ImportValue "MyVal" :: Val Text) `shouldBe` toJSON (ImportValueList "MyVal" :: ValList Text)

    it "Functor conversions in nested Vals work" $ do
      let
        input :: Val Integer
        input =
          Select 1 $
            ValList
            [ Literal 1
            , Ref "Hello"
            , Literal 2
            ]
        expected =
          Select 1 $
            ValList
            [ Literal 2
            , Ref "Hello"
            , Literal 3
            ]
      fmap (+1) input `shouldBe` expected

idempotentJSON :: (ToJSON a, FromJSON a, Show a, Eq a) => a -> Expectation
idempotentJSON x = decode (encode x) `shouldBe` Just x
