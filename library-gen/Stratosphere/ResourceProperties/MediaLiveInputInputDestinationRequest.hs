
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html

module Stratosphere.ResourceProperties.MediaLiveInputInputDestinationRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveInputInputDestinationRequest. See
-- 'mediaLiveInputInputDestinationRequest' for a more convenient
-- constructor.
data MediaLiveInputInputDestinationRequest =
  MediaLiveInputInputDestinationRequest
  { _mediaLiveInputInputDestinationRequestStreamName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputInputDestinationRequest where
  toJSON MediaLiveInputInputDestinationRequest{..} =
    object $
    catMaybes
    [ fmap (("StreamName",) . toJSON) _mediaLiveInputInputDestinationRequestStreamName
    ]

-- | Constructor for 'MediaLiveInputInputDestinationRequest' containing
-- required fields as arguments.
mediaLiveInputInputDestinationRequest
  :: MediaLiveInputInputDestinationRequest
mediaLiveInputInputDestinationRequest  =
  MediaLiveInputInputDestinationRequest
  { _mediaLiveInputInputDestinationRequestStreamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html#cfn-medialive-input-inputdestinationrequest-streamname
mliidrStreamName :: Lens' MediaLiveInputInputDestinationRequest (Maybe (Val Text))
mliidrStreamName = lens _mediaLiveInputInputDestinationRequestStreamName (\s a -> s { _mediaLiveInputInputDestinationRequestStreamName = a })
