{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html

module Stratosphere.Resources.NetworkManagerLink where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.NetworkManagerLinkBandwidth
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NetworkManagerLink. See
-- 'networkManagerLink' for a more convenient constructor.
data NetworkManagerLink =
  NetworkManagerLink
  { _networkManagerLinkBandwidth :: NetworkManagerLinkBandwidth
  , _networkManagerLinkDescription :: Maybe (Val Text)
  , _networkManagerLinkGlobalNetworkId :: Val Text
  , _networkManagerLinkProvider :: Maybe (Val Text)
  , _networkManagerLinkSiteId :: Val Text
  , _networkManagerLinkTags :: Maybe [Tag]
  , _networkManagerLinkType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerLink where
  toResourceProperties NetworkManagerLink{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::Link"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Bandwidth",) . toJSON) _networkManagerLinkBandwidth
        , fmap (("Description",) . toJSON) _networkManagerLinkDescription
        , (Just . ("GlobalNetworkId",) . toJSON) _networkManagerLinkGlobalNetworkId
        , fmap (("Provider",) . toJSON) _networkManagerLinkProvider
        , (Just . ("SiteId",) . toJSON) _networkManagerLinkSiteId
        , fmap (("Tags",) . toJSON) _networkManagerLinkTags
        , fmap (("Type",) . toJSON) _networkManagerLinkType
        ]
    }

-- | Constructor for 'NetworkManagerLink' containing required fields as
-- arguments.
networkManagerLink
  :: NetworkManagerLinkBandwidth -- ^ 'nmlBandwidth'
  -> Val Text -- ^ 'nmlGlobalNetworkId'
  -> Val Text -- ^ 'nmlSiteId'
  -> NetworkManagerLink
networkManagerLink bandwidtharg globalNetworkIdarg siteIdarg =
  NetworkManagerLink
  { _networkManagerLinkBandwidth = bandwidtharg
  , _networkManagerLinkDescription = Nothing
  , _networkManagerLinkGlobalNetworkId = globalNetworkIdarg
  , _networkManagerLinkProvider = Nothing
  , _networkManagerLinkSiteId = siteIdarg
  , _networkManagerLinkTags = Nothing
  , _networkManagerLinkType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-bandwidth
nmlBandwidth :: Lens' NetworkManagerLink NetworkManagerLinkBandwidth
nmlBandwidth = lens _networkManagerLinkBandwidth (\s a -> s { _networkManagerLinkBandwidth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-description
nmlDescription :: Lens' NetworkManagerLink (Maybe (Val Text))
nmlDescription = lens _networkManagerLinkDescription (\s a -> s { _networkManagerLinkDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-globalnetworkid
nmlGlobalNetworkId :: Lens' NetworkManagerLink (Val Text)
nmlGlobalNetworkId = lens _networkManagerLinkGlobalNetworkId (\s a -> s { _networkManagerLinkGlobalNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-provider
nmlProvider :: Lens' NetworkManagerLink (Maybe (Val Text))
nmlProvider = lens _networkManagerLinkProvider (\s a -> s { _networkManagerLinkProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-siteid
nmlSiteId :: Lens' NetworkManagerLink (Val Text)
nmlSiteId = lens _networkManagerLinkSiteId (\s a -> s { _networkManagerLinkSiteId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-tags
nmlTags :: Lens' NetworkManagerLink (Maybe [Tag])
nmlTags = lens _networkManagerLinkTags (\s a -> s { _networkManagerLinkTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-link.html#cfn-networkmanager-link-type
nmlType :: Lens' NetworkManagerLink (Maybe (Val Text))
nmlType = lens _networkManagerLinkType (\s a -> s { _networkManagerLinkType = a })
