{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html

module Stratosphere.Resources.PinpointEventStream where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEventStream. See
-- 'pinpointEventStream' for a more convenient constructor.
data PinpointEventStream =
  PinpointEventStream
  { _pinpointEventStreamApplicationId :: Val Text
  , _pinpointEventStreamDestinationStreamArn :: Val Text
  , _pinpointEventStreamRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEventStream where
  toResourceProperties PinpointEventStream{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::EventStream"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointEventStreamApplicationId
        , (Just . ("DestinationStreamArn",) . toJSON) _pinpointEventStreamDestinationStreamArn
        , (Just . ("RoleArn",) . toJSON) _pinpointEventStreamRoleArn
        ]
    }

-- | Constructor for 'PinpointEventStream' containing required fields as
-- arguments.
pinpointEventStream
  :: Val Text -- ^ 'pesApplicationId'
  -> Val Text -- ^ 'pesDestinationStreamArn'
  -> Val Text -- ^ 'pesRoleArn'
  -> PinpointEventStream
pinpointEventStream applicationIdarg destinationStreamArnarg roleArnarg =
  PinpointEventStream
  { _pinpointEventStreamApplicationId = applicationIdarg
  , _pinpointEventStreamDestinationStreamArn = destinationStreamArnarg
  , _pinpointEventStreamRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-applicationid
pesApplicationId :: Lens' PinpointEventStream (Val Text)
pesApplicationId = lens _pinpointEventStreamApplicationId (\s a -> s { _pinpointEventStreamApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-destinationstreamarn
pesDestinationStreamArn :: Lens' PinpointEventStream (Val Text)
pesDestinationStreamArn = lens _pinpointEventStreamDestinationStreamArn (\s a -> s { _pinpointEventStreamDestinationStreamArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-rolearn
pesRoleArn :: Lens' PinpointEventStream (Val Text)
pesRoleArn = lens _pinpointEventStreamRoleArn (\s a -> s { _pinpointEventStreamRoleArn = a })
