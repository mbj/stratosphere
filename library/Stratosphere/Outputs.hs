{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html
--
-- The optional Outputs section declares output values that you want to view
-- from the AWS CloudFormation console or that you want to return in response
-- to describe stack calls. For example, you can output the Amazon S3 bucket
-- name for a stack so that you can easily find it.

module Stratosphere.Outputs
       ( Output (..)
       , output
       , Outputs (..)
       , name
       , description
       , value
       ) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types (Parser)
import Data.Maybe (catMaybes)
import qualified Data.Text as T
import GHC.Exts (IsList(..))

import Stratosphere.Helpers
import Stratosphere.Parameters
import Stratosphere.Values

-- | See 'output' for a convenient constructor.
data Output =
  Output
  { outputName :: T.Text
    -- ^ An identifier for this output. The logical ID must be alphanumeric
    -- (A-Za-z0-9) and unique within the template.
  , outputDescription :: Maybe T.Text
    -- ^ A String type up to 4K in length describing the output value.
  , outputValue :: Val T.Text
    -- ^ The value of the property that is returned by the aws cloudformation
    -- describe-stacks command. The value of an output can be literals,
    -- parameter references, pseudo parameters, a mapping value, and intrinsic
    -- functions.
  } deriving (Show)

$(makeFields ''Output)

instance ToRef Output b where
  toRef o = Ref (outputName o)

-- | Constructor for 'Output'
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

-- | Wrapper around a list of 'Output's to we can modify the aeson instances.
newtype Outputs = Outputs { unOutputs :: [Output] }
                   deriving (Show)

instance IsList Outputs where
  type Item Outputs = Output
  fromList = Outputs
  toList = unOutputs

instance NamedItem Output where
  itemName = outputName
  nameToJSON = outputToJSON
  nameParseJSON = outputFromJSON

instance ToJSON Outputs where
  toJSON = namedItemToJSON . unOutputs

instance FromJSON Outputs where
  parseJSON v = Outputs <$> namedItemFromJSON v
