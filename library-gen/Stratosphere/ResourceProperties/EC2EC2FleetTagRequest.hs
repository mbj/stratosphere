{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetTagRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2EC2FleetTagRequest. See
-- 'ec2EC2FleetTagRequest' for a more convenient constructor.
data EC2EC2FleetTagRequest =
  EC2EC2FleetTagRequest
  { _eC2EC2FleetTagRequestKey :: Maybe (Val Text)
  , _eC2EC2FleetTagRequestValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetTagRequest where
  toJSON EC2EC2FleetTagRequest{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _eC2EC2FleetTagRequestKey
    , fmap (("Value",) . toJSON) _eC2EC2FleetTagRequestValue
    ]

-- | Constructor for 'EC2EC2FleetTagRequest' containing required fields as
-- arguments.
ec2EC2FleetTagRequest
  :: EC2EC2FleetTagRequest
ec2EC2FleetTagRequest  =
  EC2EC2FleetTagRequest
  { _eC2EC2FleetTagRequestKey = Nothing
  , _eC2EC2FleetTagRequestValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html#cfn-ec2-ec2fleet-tagrequest-key
ececftrKey :: Lens' EC2EC2FleetTagRequest (Maybe (Val Text))
ececftrKey = lens _eC2EC2FleetTagRequestKey (\s a -> s { _eC2EC2FleetTagRequestKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html#cfn-ec2-ec2fleet-tagrequest-value
ececftrValue :: Lens' EC2EC2FleetTagRequest (Maybe (Val Text))
ececftrValue = lens _eC2EC2FleetTagRequestValue (\s a -> s { _eC2EC2FleetTagRequestValue = a })
