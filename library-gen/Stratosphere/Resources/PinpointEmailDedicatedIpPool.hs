{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html

module Stratosphere.Resources.PinpointEmailDedicatedIpPool where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointEmailDedicatedIpPoolTags

-- | Full data type definition for PinpointEmailDedicatedIpPool. See
-- 'pinpointEmailDedicatedIpPool' for a more convenient constructor.
data PinpointEmailDedicatedIpPool =
  PinpointEmailDedicatedIpPool
  { _pinpointEmailDedicatedIpPoolPoolName :: Maybe (Val Text)
  , _pinpointEmailDedicatedIpPoolTags :: Maybe [PinpointEmailDedicatedIpPoolTags]
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEmailDedicatedIpPool where
  toResourceProperties PinpointEmailDedicatedIpPool{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::PinpointEmail::DedicatedIpPool"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("PoolName",) . toJSON) _pinpointEmailDedicatedIpPoolPoolName
        , fmap (("Tags",) . toJSON) _pinpointEmailDedicatedIpPoolTags
        ]
    }

-- | Constructor for 'PinpointEmailDedicatedIpPool' containing required fields
-- as arguments.
pinpointEmailDedicatedIpPool
  :: PinpointEmailDedicatedIpPool
pinpointEmailDedicatedIpPool  =
  PinpointEmailDedicatedIpPool
  { _pinpointEmailDedicatedIpPoolPoolName = Nothing
  , _pinpointEmailDedicatedIpPoolTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html#cfn-pinpointemail-dedicatedippool-poolname
pedipPoolName :: Lens' PinpointEmailDedicatedIpPool (Maybe (Val Text))
pedipPoolName = lens _pinpointEmailDedicatedIpPoolPoolName (\s a -> s { _pinpointEmailDedicatedIpPoolPoolName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html#cfn-pinpointemail-dedicatedippool-tags
pedipTags :: Lens' PinpointEmailDedicatedIpPool (Maybe [PinpointEmailDedicatedIpPoolTags])
pedipTags = lens _pinpointEmailDedicatedIpPoolTags (\s a -> s { _pinpointEmailDedicatedIpPoolTags = a })
