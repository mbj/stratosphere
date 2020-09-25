{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroup.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutputGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutput
import Stratosphere.ResourceProperties.MediaLiveChannelOutputGroupSettings

-- | Full data type definition for MediaLiveChannelOutputGroup. See
-- 'mediaLiveChannelOutputGroup' for a more convenient constructor.
data MediaLiveChannelOutputGroup =
  MediaLiveChannelOutputGroup
  { _mediaLiveChannelOutputGroupName :: Maybe (Val Text)
  , _mediaLiveChannelOutputGroupOutputGroupSettings :: Maybe MediaLiveChannelOutputGroupSettings
  , _mediaLiveChannelOutputGroupOutputs :: Maybe [MediaLiveChannelOutput]
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutputGroup where
  toJSON MediaLiveChannelOutputGroup{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _mediaLiveChannelOutputGroupName
    , fmap (("OutputGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupOutputGroupSettings
    , fmap (("Outputs",) . toJSON) _mediaLiveChannelOutputGroupOutputs
    ]

-- | Constructor for 'MediaLiveChannelOutputGroup' containing required fields
-- as arguments.
mediaLiveChannelOutputGroup
  :: MediaLiveChannelOutputGroup
mediaLiveChannelOutputGroup  =
  MediaLiveChannelOutputGroup
  { _mediaLiveChannelOutputGroupName = Nothing
  , _mediaLiveChannelOutputGroupOutputGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupOutputs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroup.html#cfn-medialive-channel-outputgroup-name
mlcogName :: Lens' MediaLiveChannelOutputGroup (Maybe (Val Text))
mlcogName = lens _mediaLiveChannelOutputGroupName (\s a -> s { _mediaLiveChannelOutputGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroup.html#cfn-medialive-channel-outputgroup-outputgroupsettings
mlcogOutputGroupSettings :: Lens' MediaLiveChannelOutputGroup (Maybe MediaLiveChannelOutputGroupSettings)
mlcogOutputGroupSettings = lens _mediaLiveChannelOutputGroupOutputGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupOutputGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroup.html#cfn-medialive-channel-outputgroup-outputs
mlcogOutputs :: Lens' MediaLiveChannelOutputGroup (Maybe [MediaLiveChannelOutput])
mlcogOutputs = lens _mediaLiveChannelOutputGroupOutputs (\s a -> s { _mediaLiveChannelOutputGroupOutputs = a })
