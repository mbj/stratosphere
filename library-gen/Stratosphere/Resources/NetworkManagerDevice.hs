{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html

module Stratosphere.Resources.NetworkManagerDevice where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.NetworkManagerDeviceLocation
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NetworkManagerDevice. See
-- 'networkManagerDevice' for a more convenient constructor.
data NetworkManagerDevice =
  NetworkManagerDevice
  { _networkManagerDeviceDescription :: Maybe (Val Text)
  , _networkManagerDeviceGlobalNetworkId :: Val Text
  , _networkManagerDeviceLocation :: Maybe NetworkManagerDeviceLocation
  , _networkManagerDeviceModel :: Maybe (Val Text)
  , _networkManagerDeviceSerialNumber :: Maybe (Val Text)
  , _networkManagerDeviceSiteId :: Maybe (Val Text)
  , _networkManagerDeviceTags :: Maybe [Tag]
  , _networkManagerDeviceType :: Maybe (Val Text)
  , _networkManagerDeviceVendor :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerDevice where
  toResourceProperties NetworkManagerDevice{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::Device"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _networkManagerDeviceDescription
        , (Just . ("GlobalNetworkId",) . toJSON) _networkManagerDeviceGlobalNetworkId
        , fmap (("Location",) . toJSON) _networkManagerDeviceLocation
        , fmap (("Model",) . toJSON) _networkManagerDeviceModel
        , fmap (("SerialNumber",) . toJSON) _networkManagerDeviceSerialNumber
        , fmap (("SiteId",) . toJSON) _networkManagerDeviceSiteId
        , fmap (("Tags",) . toJSON) _networkManagerDeviceTags
        , fmap (("Type",) . toJSON) _networkManagerDeviceType
        , fmap (("Vendor",) . toJSON) _networkManagerDeviceVendor
        ]
    }

-- | Constructor for 'NetworkManagerDevice' containing required fields as
-- arguments.
networkManagerDevice
  :: Val Text -- ^ 'nmdGlobalNetworkId'
  -> NetworkManagerDevice
networkManagerDevice globalNetworkIdarg =
  NetworkManagerDevice
  { _networkManagerDeviceDescription = Nothing
  , _networkManagerDeviceGlobalNetworkId = globalNetworkIdarg
  , _networkManagerDeviceLocation = Nothing
  , _networkManagerDeviceModel = Nothing
  , _networkManagerDeviceSerialNumber = Nothing
  , _networkManagerDeviceSiteId = Nothing
  , _networkManagerDeviceTags = Nothing
  , _networkManagerDeviceType = Nothing
  , _networkManagerDeviceVendor = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-description
nmdDescription :: Lens' NetworkManagerDevice (Maybe (Val Text))
nmdDescription = lens _networkManagerDeviceDescription (\s a -> s { _networkManagerDeviceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-globalnetworkid
nmdGlobalNetworkId :: Lens' NetworkManagerDevice (Val Text)
nmdGlobalNetworkId = lens _networkManagerDeviceGlobalNetworkId (\s a -> s { _networkManagerDeviceGlobalNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-location
nmdLocation :: Lens' NetworkManagerDevice (Maybe NetworkManagerDeviceLocation)
nmdLocation = lens _networkManagerDeviceLocation (\s a -> s { _networkManagerDeviceLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-model
nmdModel :: Lens' NetworkManagerDevice (Maybe (Val Text))
nmdModel = lens _networkManagerDeviceModel (\s a -> s { _networkManagerDeviceModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-serialnumber
nmdSerialNumber :: Lens' NetworkManagerDevice (Maybe (Val Text))
nmdSerialNumber = lens _networkManagerDeviceSerialNumber (\s a -> s { _networkManagerDeviceSerialNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-siteid
nmdSiteId :: Lens' NetworkManagerDevice (Maybe (Val Text))
nmdSiteId = lens _networkManagerDeviceSiteId (\s a -> s { _networkManagerDeviceSiteId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-tags
nmdTags :: Lens' NetworkManagerDevice (Maybe [Tag])
nmdTags = lens _networkManagerDeviceTags (\s a -> s { _networkManagerDeviceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-type
nmdType :: Lens' NetworkManagerDevice (Maybe (Val Text))
nmdType = lens _networkManagerDeviceType (\s a -> s { _networkManagerDeviceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-device.html#cfn-networkmanager-device-vendor
nmdVendor :: Lens' NetworkManagerDevice (Maybe (Val Text))
nmdVendor = lens _networkManagerDeviceVendor (\s a -> s { _networkManagerDeviceVendor = a })
