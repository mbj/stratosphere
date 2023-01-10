
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-mediaconnectflowrequest.html

module Stratosphere.ResourceProperties.MediaLiveInputMediaConnectFlowRequest where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveInputMediaConnectFlowRequest. See
-- 'mediaLiveInputMediaConnectFlowRequest' for a more convenient
-- constructor.
data MediaLiveInputMediaConnectFlowRequest =
  MediaLiveInputMediaConnectFlowRequest
  { _mediaLiveInputMediaConnectFlowRequestFlowArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputMediaConnectFlowRequest where
  toJSON MediaLiveInputMediaConnectFlowRequest{..} =
    object $
    catMaybes
    [ fmap (("FlowArn",) . toJSON) _mediaLiveInputMediaConnectFlowRequestFlowArn
    ]

-- | Constructor for 'MediaLiveInputMediaConnectFlowRequest' containing
-- required fields as arguments.
mediaLiveInputMediaConnectFlowRequest
  :: MediaLiveInputMediaConnectFlowRequest
mediaLiveInputMediaConnectFlowRequest  =
  MediaLiveInputMediaConnectFlowRequest
  { _mediaLiveInputMediaConnectFlowRequestFlowArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-mediaconnectflowrequest.html#cfn-medialive-input-mediaconnectflowrequest-flowarn
mlimcfrFlowArn :: Lens' MediaLiveInputMediaConnectFlowRequest (Maybe (Val Text))
mlimcfrFlowArn = lens _mediaLiveInputMediaConnectFlowRequestFlowArn (\s a -> s { _mediaLiveInputMediaConnectFlowRequestFlowArn = a })
