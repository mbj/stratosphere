{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html

module Stratosphere.ResourceProperties.EC2DHCPOptionsTag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2DHCPOptionsTag. See 'ec2DHCPOptionsTag'
-- | for a more convenient constructor.
data EC2DHCPOptionsTag =
  EC2DHCPOptionsTag
  { _eC2DHCPOptionsTagKey :: Val Text
  , _eC2DHCPOptionsTagValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2DHCPOptionsTag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON EC2DHCPOptionsTag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'EC2DHCPOptionsTag' containing required fields as
-- | arguments.
ec2DHCPOptionsTag
  :: Val Text -- ^ 'ecdhcpotKey'
  -> Val Text -- ^ 'ecdhcpotValue'
  -> EC2DHCPOptionsTag
ec2DHCPOptionsTag keyarg valuearg =
  EC2DHCPOptionsTag
  { _eC2DHCPOptionsTagKey = keyarg
  , _eC2DHCPOptionsTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-key
ecdhcpotKey :: Lens' EC2DHCPOptionsTag (Val Text)
ecdhcpotKey = lens _eC2DHCPOptionsTagKey (\s a -> s { _eC2DHCPOptionsTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-value
ecdhcpotValue :: Lens' EC2DHCPOptionsTag (Val Text)
ecdhcpotValue = lens _eC2DHCPOptionsTagValue (\s a -> s { _eC2DHCPOptionsTagValue = a })
