{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html

module Stratosphere.Resources.PinpointApp where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointApp. See 'pinpointApp' for a more
-- convenient constructor.
data PinpointApp =
  PinpointApp
  { _pinpointAppName :: Val Text
  , _pinpointAppTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties PinpointApp where
  toResourceProperties PinpointApp{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::App"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _pinpointAppName
        , fmap (("Tags",) . toJSON) _pinpointAppTags
        ]
    }

-- | Constructor for 'PinpointApp' containing required fields as arguments.
pinpointApp
  :: Val Text -- ^ 'paName'
  -> PinpointApp
pinpointApp namearg =
  PinpointApp
  { _pinpointAppName = namearg
  , _pinpointAppTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-name
paName :: Lens' PinpointApp (Val Text)
paName = lens _pinpointAppName (\s a -> s { _pinpointAppName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-tags
paTags :: Lens' PinpointApp (Maybe Object)
paTags = lens _pinpointAppTags (\s a -> s { _pinpointAppTags = a })
