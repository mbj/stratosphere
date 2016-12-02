{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-internet-gateway.html

module Stratosphere.Resources.EC2InternetGateway where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2InternetGateway. See
-- | 'ec2InternetGateway' for a more convenient constructor.
data EC2InternetGateway =
  EC2InternetGateway
  { _eC2InternetGatewayTags :: Maybe [Tag]
  } deriving (Show, Generic)

instance ToJSON EC2InternetGateway where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON EC2InternetGateway where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'EC2InternetGateway' containing required fields as
-- | arguments.
ec2InternetGateway
  :: EC2InternetGateway
ec2InternetGateway  =
  EC2InternetGateway
  { _eC2InternetGatewayTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-internet-gateway.html#cfn-ec2-internetgateway-tags
ecigTags :: Lens' EC2InternetGateway (Maybe [Tag])
ecigTags = lens _eC2InternetGatewayTags (\s a -> s { _eC2InternetGatewayTags = a })
