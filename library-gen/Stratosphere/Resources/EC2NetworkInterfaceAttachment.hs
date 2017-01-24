{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html

module Stratosphere.Resources.EC2NetworkInterfaceAttachment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2NetworkInterfaceAttachment. See
-- | 'ec2NetworkInterfaceAttachment' for a more convenient constructor.
data EC2NetworkInterfaceAttachment =
  EC2NetworkInterfaceAttachment
  { _eC2NetworkInterfaceAttachmentDeleteOnTermination :: Maybe (Val Bool')
  , _eC2NetworkInterfaceAttachmentDeviceIndex :: Val Text
  , _eC2NetworkInterfaceAttachmentInstanceId :: Val Text
  , _eC2NetworkInterfaceAttachmentNetworkInterfaceId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2NetworkInterfaceAttachment where
  toJSON EC2NetworkInterfaceAttachment{..} =
    object
    [ "DeleteOnTermination" .= _eC2NetworkInterfaceAttachmentDeleteOnTermination
    , "DeviceIndex" .= _eC2NetworkInterfaceAttachmentDeviceIndex
    , "InstanceId" .= _eC2NetworkInterfaceAttachmentInstanceId
    , "NetworkInterfaceId" .= _eC2NetworkInterfaceAttachmentNetworkInterfaceId
    ]

instance FromJSON EC2NetworkInterfaceAttachment where
  parseJSON (Object obj) =
    EC2NetworkInterfaceAttachment <$>
      obj .: "DeleteOnTermination" <*>
      obj .: "DeviceIndex" <*>
      obj .: "InstanceId" <*>
      obj .: "NetworkInterfaceId"
  parseJSON _ = mempty

-- | Constructor for 'EC2NetworkInterfaceAttachment' containing required
-- | fields as arguments.
ec2NetworkInterfaceAttachment
  :: Val Text -- ^ 'ecniaDeviceIndex'
  -> Val Text -- ^ 'ecniaInstanceId'
  -> Val Text -- ^ 'ecniaNetworkInterfaceId'
  -> EC2NetworkInterfaceAttachment
ec2NetworkInterfaceAttachment deviceIndexarg instanceIdarg networkInterfaceIdarg =
  EC2NetworkInterfaceAttachment
  { _eC2NetworkInterfaceAttachmentDeleteOnTermination = Nothing
  , _eC2NetworkInterfaceAttachmentDeviceIndex = deviceIndexarg
  , _eC2NetworkInterfaceAttachmentInstanceId = instanceIdarg
  , _eC2NetworkInterfaceAttachmentNetworkInterfaceId = networkInterfaceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-deleteonterm
ecniaDeleteOnTermination :: Lens' EC2NetworkInterfaceAttachment (Maybe (Val Bool'))
ecniaDeleteOnTermination = lens _eC2NetworkInterfaceAttachmentDeleteOnTermination (\s a -> s { _eC2NetworkInterfaceAttachmentDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-deviceindex
ecniaDeviceIndex :: Lens' EC2NetworkInterfaceAttachment (Val Text)
ecniaDeviceIndex = lens _eC2NetworkInterfaceAttachmentDeviceIndex (\s a -> s { _eC2NetworkInterfaceAttachmentDeviceIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-instanceid
ecniaInstanceId :: Lens' EC2NetworkInterfaceAttachment (Val Text)
ecniaInstanceId = lens _eC2NetworkInterfaceAttachmentInstanceId (\s a -> s { _eC2NetworkInterfaceAttachmentInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-networkinterfaceid
ecniaNetworkInterfaceId :: Lens' EC2NetworkInterfaceAttachment (Val Text)
ecniaNetworkInterfaceId = lens _eC2NetworkInterfaceAttachmentNetworkInterfaceId (\s a -> s { _eC2NetworkInterfaceAttachmentNetworkInterfaceId = a })
