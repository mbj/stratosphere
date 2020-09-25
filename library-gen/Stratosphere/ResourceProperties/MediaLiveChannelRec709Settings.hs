{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rec709settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelRec709Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelRec709Settings. See
-- 'mediaLiveChannelRec709Settings' for a more convenient constructor.
data MediaLiveChannelRec709Settings =
  MediaLiveChannelRec709Settings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelRec709Settings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelRec709Settings' containing required
-- fields as arguments.
mediaLiveChannelRec709Settings
  :: MediaLiveChannelRec709Settings
mediaLiveChannelRec709Settings  =
  MediaLiveChannelRec709Settings
  { 
  }


