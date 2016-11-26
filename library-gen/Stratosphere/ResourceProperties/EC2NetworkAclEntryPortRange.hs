{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html

module Stratosphere.ResourceProperties.EC2NetworkAclEntryPortRange where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2NetworkAclEntryPortRange. See
-- | 'ec2NetworkAclEntryPortRange' for a more convenient constructor.
data EC2NetworkAclEntryPortRange =
  EC2NetworkAclEntryPortRange
  { _eC2NetworkAclEntryPortRangeFrom :: Maybe (Val Integer')
  , _eC2NetworkAclEntryPortRangeTo :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON EC2NetworkAclEntryPortRange where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON EC2NetworkAclEntryPortRange where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'EC2NetworkAclEntryPortRange' containing required fields
-- | as arguments.
ec2NetworkAclEntryPortRange
  :: EC2NetworkAclEntryPortRange
ec2NetworkAclEntryPortRange  =
  EC2NetworkAclEntryPortRange
  { _eC2NetworkAclEntryPortRangeFrom = Nothing
  , _eC2NetworkAclEntryPortRangeTo = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-from
ecnaeprFrom :: Lens' EC2NetworkAclEntryPortRange (Maybe (Val Integer'))
ecnaeprFrom = lens _eC2NetworkAclEntryPortRangeFrom (\s a -> s { _eC2NetworkAclEntryPortRangeFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to
ecnaeprTo :: Lens' EC2NetworkAclEntryPortRange (Maybe (Val Integer'))
ecnaeprTo = lens _eC2NetworkAclEntryPortRangeTo (\s a -> s { _eC2NetworkAclEntryPortRangeTo = a })
