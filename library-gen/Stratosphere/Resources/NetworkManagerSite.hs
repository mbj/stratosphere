{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html

module Stratosphere.Resources.NetworkManagerSite where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.NetworkManagerSiteLocation
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NetworkManagerSite. See
-- 'networkManagerSite' for a more convenient constructor.
data NetworkManagerSite =
  NetworkManagerSite
  { _networkManagerSiteDescription :: Maybe (Val Text)
  , _networkManagerSiteGlobalNetworkId :: Val Text
  , _networkManagerSiteLocation :: Maybe NetworkManagerSiteLocation
  , _networkManagerSiteTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerSite where
  toResourceProperties NetworkManagerSite{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::Site"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _networkManagerSiteDescription
        , (Just . ("GlobalNetworkId",) . toJSON) _networkManagerSiteGlobalNetworkId
        , fmap (("Location",) . toJSON) _networkManagerSiteLocation
        , fmap (("Tags",) . toJSON) _networkManagerSiteTags
        ]
    }

-- | Constructor for 'NetworkManagerSite' containing required fields as
-- arguments.
networkManagerSite
  :: Val Text -- ^ 'nmsGlobalNetworkId'
  -> NetworkManagerSite
networkManagerSite globalNetworkIdarg =
  NetworkManagerSite
  { _networkManagerSiteDescription = Nothing
  , _networkManagerSiteGlobalNetworkId = globalNetworkIdarg
  , _networkManagerSiteLocation = Nothing
  , _networkManagerSiteTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-description
nmsDescription :: Lens' NetworkManagerSite (Maybe (Val Text))
nmsDescription = lens _networkManagerSiteDescription (\s a -> s { _networkManagerSiteDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-globalnetworkid
nmsGlobalNetworkId :: Lens' NetworkManagerSite (Val Text)
nmsGlobalNetworkId = lens _networkManagerSiteGlobalNetworkId (\s a -> s { _networkManagerSiteGlobalNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-location
nmsLocation :: Lens' NetworkManagerSite (Maybe NetworkManagerSiteLocation)
nmsLocation = lens _networkManagerSiteLocation (\s a -> s { _networkManagerSiteLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-tags
nmsTags :: Lens' NetworkManagerSite (Maybe [Tag])
nmsTags = lens _networkManagerSiteTags (\s a -> s { _networkManagerSiteTags = a })
