{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rec601settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelRec601Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelRec601Settings. See
-- 'mediaLiveChannelRec601Settings' for a more convenient constructor.
data MediaLiveChannelRec601Settings =
  MediaLiveChannelRec601Settings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelRec601Settings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelRec601Settings' containing required
-- fields as arguments.
mediaLiveChannelRec601Settings
  :: MediaLiveChannelRec601Settings
mediaLiveChannelRec601Settings  =
  MediaLiveChannelRec601Settings
  {
  }
