
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-device-location.html

module Stratosphere.ResourceProperties.NetworkManagerDeviceLocation where

import Stratosphere.ResourceImports


-- | Full data type definition for NetworkManagerDeviceLocation. See
-- 'networkManagerDeviceLocation' for a more convenient constructor.
data NetworkManagerDeviceLocation =
  NetworkManagerDeviceLocation
  { _networkManagerDeviceLocationAddress :: Maybe (Val Text)
  , _networkManagerDeviceLocationLatitude :: Maybe (Val Text)
  , _networkManagerDeviceLocationLongitude :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON NetworkManagerDeviceLocation where
  toJSON NetworkManagerDeviceLocation{..} =
    object $
    catMaybes
    [ fmap (("Address",) . toJSON) _networkManagerDeviceLocationAddress
    , fmap (("Latitude",) . toJSON) _networkManagerDeviceLocationLatitude
    , fmap (("Longitude",) . toJSON) _networkManagerDeviceLocationLongitude
    ]

-- | Constructor for 'NetworkManagerDeviceLocation' containing required fields
-- as arguments.
networkManagerDeviceLocation
  :: NetworkManagerDeviceLocation
networkManagerDeviceLocation  =
  NetworkManagerDeviceLocation
  { _networkManagerDeviceLocationAddress = Nothing
  , _networkManagerDeviceLocationLatitude = Nothing
  , _networkManagerDeviceLocationLongitude = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-device-location.html#cfn-networkmanager-device-location-address
nmdlAddress :: Lens' NetworkManagerDeviceLocation (Maybe (Val Text))
nmdlAddress = lens _networkManagerDeviceLocationAddress (\s a -> s { _networkManagerDeviceLocationAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-device-location.html#cfn-networkmanager-device-location-latitude
nmdlLatitude :: Lens' NetworkManagerDeviceLocation (Maybe (Val Text))
nmdlLatitude = lens _networkManagerDeviceLocationLatitude (\s a -> s { _networkManagerDeviceLocationLatitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-device-location.html#cfn-networkmanager-device-location-longitude
nmdlLongitude :: Lens' NetworkManagerDeviceLocation (Maybe (Val Text))
nmdlLongitude = lens _networkManagerDeviceLocationLongitude (\s a -> s { _networkManagerDeviceLocationLongitude = a })
