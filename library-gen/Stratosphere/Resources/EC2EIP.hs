{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html

module Stratosphere.Resources.EC2EIP where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2EIP. See 'ec2EIP' for a more convenient
-- | constructor.
data EC2EIP =
  EC2EIP
  { _eC2EIPDomain :: Maybe (Val Text)
  , _eC2EIPInstanceId :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EC2EIP where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

instance FromJSON EC2EIP where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

-- | Constructor for 'EC2EIP' containing required fields as arguments.
ec2EIP
  :: EC2EIP
ec2EIP  =
  EC2EIP
  { _eC2EIPDomain = Nothing
  , _eC2EIPInstanceId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html#cfn-ec2-eip-domain
eceipDomain :: Lens' EC2EIP (Maybe (Val Text))
eceipDomain = lens _eC2EIPDomain (\s a -> s { _eC2EIPDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html#cfn-ec2-eip-instanceid
eceipInstanceId :: Lens' EC2EIP (Maybe (Val Text))
eceipInstanceId = lens _eC2EIPInstanceId (\s a -> s { _eC2EIPInstanceId = a })
