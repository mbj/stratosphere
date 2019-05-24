{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-reputationoptions.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetReputationOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetReputationOptions. See
-- 'pinpointEmailConfigurationSetReputationOptions' for a more convenient
-- constructor.
data PinpointEmailConfigurationSetReputationOptions =
  PinpointEmailConfigurationSetReputationOptions
  { _pinpointEmailConfigurationSetReputationOptionsReputationMetricsEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetReputationOptions where
  toJSON PinpointEmailConfigurationSetReputationOptions{..} =
    object $
    catMaybes
    [ fmap (("ReputationMetricsEnabled",) . toJSON) _pinpointEmailConfigurationSetReputationOptionsReputationMetricsEnabled
    ]

-- | Constructor for 'PinpointEmailConfigurationSetReputationOptions'
-- containing required fields as arguments.
pinpointEmailConfigurationSetReputationOptions
  :: PinpointEmailConfigurationSetReputationOptions
pinpointEmailConfigurationSetReputationOptions  =
  PinpointEmailConfigurationSetReputationOptions
  { _pinpointEmailConfigurationSetReputationOptionsReputationMetricsEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-reputationoptions.html#cfn-pinpointemail-configurationset-reputationoptions-reputationmetricsenabled
pecsroReputationMetricsEnabled :: Lens' PinpointEmailConfigurationSetReputationOptions (Maybe (Val Bool))
pecsroReputationMetricsEnabled = lens _pinpointEmailConfigurationSetReputationOptionsReputationMetricsEnabled (\s a -> s { _pinpointEmailConfigurationSetReputationOptionsReputationMetricsEnabled = a })
