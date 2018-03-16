{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
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
  , OutputExport (..)
  , Outputs (..)
  , outputName
  , outputDescription
  , outputValue
  , outputExport
  ) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types (Parser)
import Data.Maybe (catMaybes)
import Data.Semigroup (Semigroup)
import Data.Text (Text)
import GHC.Exts (IsList(..))

import Stratosphere.Helpers
import Stratosphere.Values

data OutputExport
  = OutputExport
  { outputExportName :: Val Text
  } deriving (Show, Eq)

instance ToJSON OutputExport where
  toJSON OutputExport{..} =
    object
    [ "Name" .= outputExportName
    ]

instance FromJSON OutputExport where
  parseJSON (Object o) =
    OutputExport <$>
      o .: "Name"
  parseJSON _ = mempty

-- | See 'output' for a convenient constructor.
data Output =
  Output
  { _outputName :: Text
    -- ^ An identifier for this output. The logical ID must be alphanumeric
    -- (A-Za-z0-9) and unique within the template.
  , _outputDescription :: Maybe Text
    -- ^ A String type up to 4K in length describing the output value.
  , _outputValue :: Val Text
    -- ^ The value of the property that is returned by the aws cloudformation
    -- describe-stacks command. The value of an output can be literals,
    -- parameter references, pseudo parameters, a mapping value, and intrinsic
    -- functions.
  , _outputExport :: Maybe OutputExport
  } deriving (Show, Eq)

$(makeLenses ''Output)

instance ToRef Output b where
  toRef o = Ref (_outputName o)

-- | Constructor for 'Output'
output
  :: Text -- ^ Name
  -> Val Text -- ^ Value
  -> Output
output oname oval =
  Output
  { _outputName = oname
  , _outputDescription = Nothing
  , _outputValue = oval
  , _outputExport = Nothing
  }

outputToJSON :: Output -> Value
outputToJSON Output {..} =
  object $ catMaybes
  [ Just ("Value" .= _outputValue)
  , maybeField "Description" _outputDescription
  , maybeField "Export" _outputExport
  ]

outputFromJSON :: Text -> Object -> Parser Output
outputFromJSON n o =
  Output n
  <$> o .:? "Description"
  <*> o .: "Value"
  <*> o .:? "Export"

-- | Wrapper around a list of 'Output's to we can modify the aeson instances.
newtype Outputs = Outputs { unOutputs :: [Output] }
  deriving (Show, Eq, Semigroup, Monoid)

instance IsList Outputs where
  type Item Outputs = Output
  fromList = Outputs
  toList = unOutputs

instance NamedItem Output where
  itemName = _outputName
  nameToJSON = outputToJSON
  nameParseJSON = outputFromJSON

instance ToJSON Outputs where
  toJSON = namedItemToJSON . unOutputs

instance FromJSON Outputs where
  parseJSON v = Outputs <$> namedItemFromJSON v
