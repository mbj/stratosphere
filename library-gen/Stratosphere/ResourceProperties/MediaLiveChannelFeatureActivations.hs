{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-featureactivations.html

module Stratosphere.ResourceProperties.MediaLiveChannelFeatureActivations where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelFeatureActivations. See
-- 'mediaLiveChannelFeatureActivations' for a more convenient constructor.
data MediaLiveChannelFeatureActivations =
  MediaLiveChannelFeatureActivations
  { _mediaLiveChannelFeatureActivationsInputPrepareScheduleActions :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelFeatureActivations where
  toJSON MediaLiveChannelFeatureActivations{..} =
    object $
    catMaybes
    [ fmap (("InputPrepareScheduleActions",) . toJSON) _mediaLiveChannelFeatureActivationsInputPrepareScheduleActions
    ]

-- | Constructor for 'MediaLiveChannelFeatureActivations' containing required
-- fields as arguments.
mediaLiveChannelFeatureActivations
  :: MediaLiveChannelFeatureActivations
mediaLiveChannelFeatureActivations  =
  MediaLiveChannelFeatureActivations
  { _mediaLiveChannelFeatureActivationsInputPrepareScheduleActions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-featureactivations.html#cfn-medialive-channel-featureactivations-inputpreparescheduleactions
mlcfaInputPrepareScheduleActions :: Lens' MediaLiveChannelFeatureActivations (Maybe (Val Text))
mlcfaInputPrepareScheduleActions = lens _mediaLiveChannelFeatureActivationsInputPrepareScheduleActions (\s a -> s { _mediaLiveChannelFeatureActivationsInputPrepareScheduleActions = a })
