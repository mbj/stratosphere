{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module Stratosphere.Outputs
       ( Output (..)
       , output
       , Outputs (..)
       ) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types (Parser)
import qualified Data.HashMap.Strict as HM
import Data.Maybe (catMaybes)
import qualified Data.Text as T
import GHC.Exts (IsList(..))

import Stratosphere.Helpers (maybeField)
import Stratosphere.Parameters
import Stratosphere.Values

data Output =
  Output
  { outputName :: T.Text
  , outputDescription :: Maybe T.Text
  , outputValue :: Val T.Text
  } deriving (Show)

$(makeFields ''Output)

instance ToRef Output b where
  toRef o = Ref (outputName o)

output
  :: T.Text -- ^ Name
  -> Val T.Text -- ^ Value
  -> Output
output oname oval =
  Output
  { outputName = oname
  , outputDescription = Nothing
  , outputValue = oval
  }

outputToJSON :: Output -> Value
outputToJSON Output {..} =
  object $ catMaybes
  [ Just ("Value" .= outputValue)
  , maybeField "Description" outputDescription
  ]

outputFromJSON :: T.Text -> Object -> Parser Output
outputFromJSON n o =
  Output n
  <$> o .:? "Description"
  <*> o .:  "Value"

newtype Outputs = Outputs { unOutputs :: [Output] }
                   deriving (Show)

instance IsList Outputs where
  type Item Outputs = Output
  fromList = Outputs
  toList = unOutputs

instance ToJSON Outputs where
  toJSON (Outputs os) =
    object $ fmap (\o -> outputName o .= outputToJSON o) os

instance FromJSON Outputs where
  parseJSON v = do
    objs <- parseJSON v :: Parser (HM.HashMap T.Text Value)
    os <- sequence [withObject "output" (outputFromJSON n) obj |
                    (n, obj) <- HM.toList objs]
    return $ Outputs os
