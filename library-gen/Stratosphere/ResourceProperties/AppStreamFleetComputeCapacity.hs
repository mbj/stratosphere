{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-computecapacity.html

module Stratosphere.ResourceProperties.AppStreamFleetComputeCapacity where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamFleetComputeCapacity. See
-- 'appStreamFleetComputeCapacity' for a more convenient constructor.
data AppStreamFleetComputeCapacity =
  AppStreamFleetComputeCapacity
  { _appStreamFleetComputeCapacityDesiredInstances :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppStreamFleetComputeCapacity where
  toJSON AppStreamFleetComputeCapacity{..} =
    object $
    catMaybes
    [ (Just . ("DesiredInstances",) . toJSON . fmap Integer') _appStreamFleetComputeCapacityDesiredInstances
    ]

-- | Constructor for 'AppStreamFleetComputeCapacity' containing required
-- fields as arguments.
appStreamFleetComputeCapacity
  :: Val Integer -- ^ 'asfccDesiredInstances'
  -> AppStreamFleetComputeCapacity
appStreamFleetComputeCapacity desiredInstancesarg =
  AppStreamFleetComputeCapacity
  { _appStreamFleetComputeCapacityDesiredInstances = desiredInstancesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-computecapacity.html#cfn-appstream-fleet-computecapacity-desiredinstances
asfccDesiredInstances :: Lens' AppStreamFleetComputeCapacity (Val Integer)
asfccDesiredInstances = lens _appStreamFleetComputeCapacityDesiredInstances (\s a -> s { _appStreamFleetComputeCapacityDesiredInstances = a })
