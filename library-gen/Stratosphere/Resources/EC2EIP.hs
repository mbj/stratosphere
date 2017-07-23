{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html

module Stratosphere.Resources.EC2EIP where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2EIP. See 'ec2EIP' for a more convenient
-- constructor.
data EC2EIP =
  EC2EIP
  { _eC2EIPDomain :: Maybe (Val Text)
  , _eC2EIPInstanceId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EIP where
  toJSON EC2EIP{..} =
    object $
    catMaybes
    [ fmap (("Domain",) . toJSON) _eC2EIPDomain
    , fmap (("InstanceId",) . toJSON) _eC2EIPInstanceId
    ]

instance FromJSON EC2EIP where
  parseJSON (Object obj) =
    EC2EIP <$>
      (obj .:? "Domain") <*>
      (obj .:? "InstanceId")
  parseJSON _ = mempty

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
