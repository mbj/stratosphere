
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aribsourcesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAribSourceSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAribSourceSettings. See
-- 'mediaLiveChannelAribSourceSettings' for a more convenient constructor.
data MediaLiveChannelAribSourceSettings =
  MediaLiveChannelAribSourceSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAribSourceSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelAribSourceSettings' containing required
-- fields as arguments.
mediaLiveChannelAribSourceSettings
  :: MediaLiveChannelAribSourceSettings
mediaLiveChannelAribSourceSettings  =
  MediaLiveChannelAribSourceSettings
  { 
  }


