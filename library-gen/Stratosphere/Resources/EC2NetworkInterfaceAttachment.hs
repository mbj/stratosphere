{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html

module Stratosphere.Resources.EC2NetworkInterfaceAttachment where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2NetworkInterfaceAttachment. See
-- 'ec2NetworkInterfaceAttachment' for a more convenient constructor.
data EC2NetworkInterfaceAttachment =
  EC2NetworkInterfaceAttachment
  { _eC2NetworkInterfaceAttachmentDeleteOnTermination :: Maybe (Val Bool)
  , _eC2NetworkInterfaceAttachmentDeviceIndex :: Val Text
  , _eC2NetworkInterfaceAttachmentInstanceId :: Val Text
  , _eC2NetworkInterfaceAttachmentNetworkInterfaceId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2NetworkInterfaceAttachment where
  toResourceProperties EC2NetworkInterfaceAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::NetworkInterfaceAttachment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeleteOnTermination",) . toJSON) _eC2NetworkInterfaceAttachmentDeleteOnTermination
        , (Just . ("DeviceIndex",) . toJSON) _eC2NetworkInterfaceAttachmentDeviceIndex
        , (Just . ("InstanceId",) . toJSON) _eC2NetworkInterfaceAttachmentInstanceId
        , (Just . ("NetworkInterfaceId",) . toJSON) _eC2NetworkInterfaceAttachmentNetworkInterfaceId
        ]
    }

-- | Constructor for 'EC2NetworkInterfaceAttachment' containing required
-- fields as arguments.
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
ecniaDeleteOnTermination :: Lens' EC2NetworkInterfaceAttachment (Maybe (Val Bool))
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
