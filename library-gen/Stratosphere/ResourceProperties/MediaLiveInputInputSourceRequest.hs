
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html

module Stratosphere.ResourceProperties.MediaLiveInputInputSourceRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveInputInputSourceRequest. See
-- 'mediaLiveInputInputSourceRequest' for a more convenient constructor.
data MediaLiveInputInputSourceRequest =
  MediaLiveInputInputSourceRequest
  { _mediaLiveInputInputSourceRequestPasswordParam :: Maybe (Val Text)
  , _mediaLiveInputInputSourceRequestUrl :: Maybe (Val Text)
  , _mediaLiveInputInputSourceRequestUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputInputSourceRequest where
  toJSON MediaLiveInputInputSourceRequest{..} =
    object $
    catMaybes
    [ fmap (("PasswordParam",) . toJSON) _mediaLiveInputInputSourceRequestPasswordParam
    , fmap (("Url",) . toJSON) _mediaLiveInputInputSourceRequestUrl
    , fmap (("Username",) . toJSON) _mediaLiveInputInputSourceRequestUsername
    ]

-- | Constructor for 'MediaLiveInputInputSourceRequest' containing required
-- fields as arguments.
mediaLiveInputInputSourceRequest
  :: MediaLiveInputInputSourceRequest
mediaLiveInputInputSourceRequest  =
  MediaLiveInputInputSourceRequest
  { _mediaLiveInputInputSourceRequestPasswordParam = Nothing
  , _mediaLiveInputInputSourceRequestUrl = Nothing
  , _mediaLiveInputInputSourceRequestUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-passwordparam
mliisrPasswordParam :: Lens' MediaLiveInputInputSourceRequest (Maybe (Val Text))
mliisrPasswordParam = lens _mediaLiveInputInputSourceRequestPasswordParam (\s a -> s { _mediaLiveInputInputSourceRequestPasswordParam = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-url
mliisrUrl :: Lens' MediaLiveInputInputSourceRequest (Maybe (Val Text))
mliisrUrl = lens _mediaLiveInputInputSourceRequestUrl (\s a -> s { _mediaLiveInputInputSourceRequestUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-username
mliisrUsername :: Lens' MediaLiveInputInputSourceRequest (Maybe (Val Text))
mliisrUsername = lens _mediaLiveInputInputSourceRequestUsername (\s a -> s { _mediaLiveInputInputSourceRequestUsername = a })
