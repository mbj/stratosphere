{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html

module Stratosphere.Resources.EC2VPCEndpointConnectionNotification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPCEndpointConnectionNotification. See
-- 'ec2VPCEndpointConnectionNotification' for a more convenient constructor.
data EC2VPCEndpointConnectionNotification =
  EC2VPCEndpointConnectionNotification
  { _eC2VPCEndpointConnectionNotificationConnectionEvents :: ValList Text
  , _eC2VPCEndpointConnectionNotificationConnectionNotificationArn :: Val Text
  , _eC2VPCEndpointConnectionNotificationServiceId :: Maybe (Val Text)
  , _eC2VPCEndpointConnectionNotificationVPCEndpointId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPCEndpointConnectionNotification where
  toResourceProperties EC2VPCEndpointConnectionNotification{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPCEndpointConnectionNotification"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ConnectionEvents",) . toJSON) _eC2VPCEndpointConnectionNotificationConnectionEvents
        , (Just . ("ConnectionNotificationArn",) . toJSON) _eC2VPCEndpointConnectionNotificationConnectionNotificationArn
        , fmap (("ServiceId",) . toJSON) _eC2VPCEndpointConnectionNotificationServiceId
        , fmap (("VPCEndpointId",) . toJSON) _eC2VPCEndpointConnectionNotificationVPCEndpointId
        ]
    }

-- | Constructor for 'EC2VPCEndpointConnectionNotification' containing
-- required fields as arguments.
ec2VPCEndpointConnectionNotification
  :: ValList Text -- ^ 'ecvpcecnConnectionEvents'
  -> Val Text -- ^ 'ecvpcecnConnectionNotificationArn'
  -> EC2VPCEndpointConnectionNotification
ec2VPCEndpointConnectionNotification connectionEventsarg connectionNotificationArnarg =
  EC2VPCEndpointConnectionNotification
  { _eC2VPCEndpointConnectionNotificationConnectionEvents = connectionEventsarg
  , _eC2VPCEndpointConnectionNotificationConnectionNotificationArn = connectionNotificationArnarg
  , _eC2VPCEndpointConnectionNotificationServiceId = Nothing
  , _eC2VPCEndpointConnectionNotificationVPCEndpointId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionevents
ecvpcecnConnectionEvents :: Lens' EC2VPCEndpointConnectionNotification (ValList Text)
ecvpcecnConnectionEvents = lens _eC2VPCEndpointConnectionNotificationConnectionEvents (\s a -> s { _eC2VPCEndpointConnectionNotificationConnectionEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionnotificationarn
ecvpcecnConnectionNotificationArn :: Lens' EC2VPCEndpointConnectionNotification (Val Text)
ecvpcecnConnectionNotificationArn = lens _eC2VPCEndpointConnectionNotificationConnectionNotificationArn (\s a -> s { _eC2VPCEndpointConnectionNotificationConnectionNotificationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-serviceid
ecvpcecnServiceId :: Lens' EC2VPCEndpointConnectionNotification (Maybe (Val Text))
ecvpcecnServiceId = lens _eC2VPCEndpointConnectionNotificationServiceId (\s a -> s { _eC2VPCEndpointConnectionNotificationServiceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-vpcendpointid
ecvpcecnVPCEndpointId :: Lens' EC2VPCEndpointConnectionNotification (Maybe (Val Text))
ecvpcecnVPCEndpointId = lens _eC2VPCEndpointConnectionNotificationVPCEndpointId (\s a -> s { _eC2VPCEndpointConnectionNotificationVPCEndpointId = a })
