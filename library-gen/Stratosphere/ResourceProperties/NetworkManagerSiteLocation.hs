{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-site-location.html

module Stratosphere.ResourceProperties.NetworkManagerSiteLocation where

import Stratosphere.ResourceImports


-- | Full data type definition for NetworkManagerSiteLocation. See
-- 'networkManagerSiteLocation' for a more convenient constructor.
data NetworkManagerSiteLocation =
  NetworkManagerSiteLocation
  { _networkManagerSiteLocationAddress :: Maybe (Val Text)
  , _networkManagerSiteLocationLatitude :: Maybe (Val Text)
  , _networkManagerSiteLocationLongitude :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON NetworkManagerSiteLocation where
  toJSON NetworkManagerSiteLocation{..} =
    object $
    catMaybes
    [ fmap (("Address",) . toJSON) _networkManagerSiteLocationAddress
    , fmap (("Latitude",) . toJSON) _networkManagerSiteLocationLatitude
    , fmap (("Longitude",) . toJSON) _networkManagerSiteLocationLongitude
    ]

-- | Constructor for 'NetworkManagerSiteLocation' containing required fields
-- as arguments.
networkManagerSiteLocation
  :: NetworkManagerSiteLocation
networkManagerSiteLocation  =
  NetworkManagerSiteLocation
  { _networkManagerSiteLocationAddress = Nothing
  , _networkManagerSiteLocationLatitude = Nothing
  , _networkManagerSiteLocationLongitude = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-site-location.html#cfn-networkmanager-site-location-address
nmslAddress :: Lens' NetworkManagerSiteLocation (Maybe (Val Text))
nmslAddress = lens _networkManagerSiteLocationAddress (\s a -> s { _networkManagerSiteLocationAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-site-location.html#cfn-networkmanager-site-location-latitude
nmslLatitude :: Lens' NetworkManagerSiteLocation (Maybe (Val Text))
nmslLatitude = lens _networkManagerSiteLocationLatitude (\s a -> s { _networkManagerSiteLocationLatitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-site-location.html#cfn-networkmanager-site-location-longitude
nmslLongitude :: Lens' NetworkManagerSiteLocation (Maybe (Val Text))
nmslLongitude = lens _networkManagerSiteLocationLongitude (\s a -> s { _networkManagerSiteLocationLongitude = a })
