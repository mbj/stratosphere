
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html

module Stratosphere.ResourceProperties.EC2SpotFleetBlockDeviceMapping where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetEbsBlockDevice

-- | Full data type definition for EC2SpotFleetBlockDeviceMapping. See
-- 'ec2SpotFleetBlockDeviceMapping' for a more convenient constructor.
data EC2SpotFleetBlockDeviceMapping =
  EC2SpotFleetBlockDeviceMapping
  { _eC2SpotFleetBlockDeviceMappingDeviceName :: Val Text
  , _eC2SpotFleetBlockDeviceMappingEbs :: Maybe EC2SpotFleetEbsBlockDevice
  , _eC2SpotFleetBlockDeviceMappingNoDevice :: Maybe (Val Text)
  , _eC2SpotFleetBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetBlockDeviceMapping where
  toJSON EC2SpotFleetBlockDeviceMapping{..} =
    object $
    catMaybes
    [ (Just . ("DeviceName",) . toJSON) _eC2SpotFleetBlockDeviceMappingDeviceName
    , fmap (("Ebs",) . toJSON) _eC2SpotFleetBlockDeviceMappingEbs
    , fmap (("NoDevice",) . toJSON) _eC2SpotFleetBlockDeviceMappingNoDevice
    , fmap (("VirtualName",) . toJSON) _eC2SpotFleetBlockDeviceMappingVirtualName
    ]

-- | Constructor for 'EC2SpotFleetBlockDeviceMapping' containing required
-- fields as arguments.
ec2SpotFleetBlockDeviceMapping
  :: Val Text -- ^ 'ecsfbdmDeviceName'
  -> EC2SpotFleetBlockDeviceMapping
ec2SpotFleetBlockDeviceMapping deviceNamearg =
  EC2SpotFleetBlockDeviceMapping
  { _eC2SpotFleetBlockDeviceMappingDeviceName = deviceNamearg
  , _eC2SpotFleetBlockDeviceMappingEbs = Nothing
  , _eC2SpotFleetBlockDeviceMappingNoDevice = Nothing
  , _eC2SpotFleetBlockDeviceMappingVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-devicename
ecsfbdmDeviceName :: Lens' EC2SpotFleetBlockDeviceMapping (Val Text)
ecsfbdmDeviceName = lens _eC2SpotFleetBlockDeviceMappingDeviceName (\s a -> s { _eC2SpotFleetBlockDeviceMappingDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-ebs
ecsfbdmEbs :: Lens' EC2SpotFleetBlockDeviceMapping (Maybe EC2SpotFleetEbsBlockDevice)
ecsfbdmEbs = lens _eC2SpotFleetBlockDeviceMappingEbs (\s a -> s { _eC2SpotFleetBlockDeviceMappingEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-nodevice
ecsfbdmNoDevice :: Lens' EC2SpotFleetBlockDeviceMapping (Maybe (Val Text))
ecsfbdmNoDevice = lens _eC2SpotFleetBlockDeviceMappingNoDevice (\s a -> s { _eC2SpotFleetBlockDeviceMappingNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-virtualname
ecsfbdmVirtualName :: Lens' EC2SpotFleetBlockDeviceMapping (Maybe (Val Text))
ecsfbdmVirtualName = lens _eC2SpotFleetBlockDeviceMappingVirtualName (\s a -> s { _eC2SpotFleetBlockDeviceMappingVirtualName = a })
