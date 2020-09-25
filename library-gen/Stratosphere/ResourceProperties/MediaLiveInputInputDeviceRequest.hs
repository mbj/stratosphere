{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdevicerequest.html

module Stratosphere.ResourceProperties.MediaLiveInputInputDeviceRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveInputInputDeviceRequest. See
-- 'mediaLiveInputInputDeviceRequest' for a more convenient constructor.
data MediaLiveInputInputDeviceRequest =
  MediaLiveInputInputDeviceRequest
  { _mediaLiveInputInputDeviceRequestId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputInputDeviceRequest where
  toJSON MediaLiveInputInputDeviceRequest{..} =
    object $
    catMaybes
    [ fmap (("Id",) . toJSON) _mediaLiveInputInputDeviceRequestId
    ]

-- | Constructor for 'MediaLiveInputInputDeviceRequest' containing required
-- fields as arguments.
mediaLiveInputInputDeviceRequest
  :: MediaLiveInputInputDeviceRequest
mediaLiveInputInputDeviceRequest  =
  MediaLiveInputInputDeviceRequest
  { _mediaLiveInputInputDeviceRequestId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdevicerequest.html#cfn-medialive-input-inputdevicerequest-id
mliidrId :: Lens' MediaLiveInputInputDeviceRequest (Maybe (Val Text))
mliidrId = lens _mediaLiveInputInputDeviceRequestId (\s a -> s { _mediaLiveInputInputDeviceRequestId = a })
