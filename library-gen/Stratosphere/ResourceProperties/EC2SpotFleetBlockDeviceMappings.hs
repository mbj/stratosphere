{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html

module Stratosphere.ResourceProperties.EC2SpotFleetBlockDeviceMappings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SpotFleetEbs

-- | Full data type definition for EC2SpotFleetBlockDeviceMappings. See
-- | 'ec2SpotFleetBlockDeviceMappings' for a more convenient constructor.
data EC2SpotFleetBlockDeviceMappings =
  EC2SpotFleetBlockDeviceMappings
  { _eC2SpotFleetBlockDeviceMappingsDeviceName :: Val Text
  , _eC2SpotFleetBlockDeviceMappingsEbs :: Maybe EC2SpotFleetEbs
  , _eC2SpotFleetBlockDeviceMappingsNoDevice :: Maybe (Val Bool')
  , _eC2SpotFleetBlockDeviceMappingsVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EC2SpotFleetBlockDeviceMappings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

instance FromJSON EC2SpotFleetBlockDeviceMappings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetBlockDeviceMappings' containing required
-- | fields as arguments.
ec2SpotFleetBlockDeviceMappings
  :: Val Text -- ^ 'ecsfbdmDeviceName'
  -> EC2SpotFleetBlockDeviceMappings
ec2SpotFleetBlockDeviceMappings deviceNamearg =
  EC2SpotFleetBlockDeviceMappings
  { _eC2SpotFleetBlockDeviceMappingsDeviceName = deviceNamearg
  , _eC2SpotFleetBlockDeviceMappingsEbs = Nothing
  , _eC2SpotFleetBlockDeviceMappingsNoDevice = Nothing
  , _eC2SpotFleetBlockDeviceMappingsVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemappings-devicename
ecsfbdmDeviceName :: Lens' EC2SpotFleetBlockDeviceMappings (Val Text)
ecsfbdmDeviceName = lens _eC2SpotFleetBlockDeviceMappingsDeviceName (\s a -> s { _eC2SpotFleetBlockDeviceMappingsDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemappings-ebs
ecsfbdmEbs :: Lens' EC2SpotFleetBlockDeviceMappings (Maybe EC2SpotFleetEbs)
ecsfbdmEbs = lens _eC2SpotFleetBlockDeviceMappingsEbs (\s a -> s { _eC2SpotFleetBlockDeviceMappingsEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemappings-nodevice
ecsfbdmNoDevice :: Lens' EC2SpotFleetBlockDeviceMappings (Maybe (Val Bool'))
ecsfbdmNoDevice = lens _eC2SpotFleetBlockDeviceMappingsNoDevice (\s a -> s { _eC2SpotFleetBlockDeviceMappingsNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemappings-virtualname
ecsfbdmVirtualName :: Lens' EC2SpotFleetBlockDeviceMappings (Maybe (Val Text))
ecsfbdmVirtualName = lens _eC2SpotFleetBlockDeviceMappingsVirtualName (\s a -> s { _eC2SpotFleetBlockDeviceMappingsVirtualName = a })
