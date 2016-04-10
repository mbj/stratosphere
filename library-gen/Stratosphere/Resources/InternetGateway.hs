{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a new Internet gateway in your AWS account. After creating the
-- Internet gateway, you then attach it to a VPC.

module Stratosphere.Resources.InternetGateway where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for InternetGateway. See 'internetGateway' for
-- a more convenient constructor.
data InternetGateway =
  InternetGateway
  { _internetGatewayTags :: Maybe [ResourceTag]
  } deriving (Show, Generic)

instance ToJSON InternetGateway where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON InternetGateway where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'InternetGateway' containing required fields as
-- arguments.
internetGateway
  :: InternetGateway
internetGateway  =
  InternetGateway
  { _internetGatewayTags = Nothing
  }

-- | An arbitrary set of tags (key–value pairs) for this resource.
igTags :: Lens' InternetGateway (Maybe [ResourceTag])
igTags = lens _internetGatewayTags (\s a -> s { _internetGatewayTags = a })