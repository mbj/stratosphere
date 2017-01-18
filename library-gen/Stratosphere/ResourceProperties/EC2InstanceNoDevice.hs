{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-nodevice.html

module Stratosphere.ResourceProperties.EC2InstanceNoDevice where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2InstanceNoDevice. See
-- | 'ec2InstanceNoDevice' for a more convenient constructor.
data EC2InstanceNoDevice =
  EC2InstanceNoDevice
  { 
  } deriving (Show, Eq, Generic)

instance ToJSON EC2InstanceNoDevice where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON EC2InstanceNoDevice where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'EC2InstanceNoDevice' containing required fields as
-- | arguments.
ec2InstanceNoDevice
  :: EC2InstanceNoDevice
ec2InstanceNoDevice  =
  EC2InstanceNoDevice
  { 
  }


