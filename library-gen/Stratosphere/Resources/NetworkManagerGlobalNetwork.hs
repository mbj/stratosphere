{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html

module Stratosphere.Resources.NetworkManagerGlobalNetwork where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NetworkManagerGlobalNetwork. See
-- 'networkManagerGlobalNetwork' for a more convenient constructor.
data NetworkManagerGlobalNetwork =
  NetworkManagerGlobalNetwork
  { _networkManagerGlobalNetworkDescription :: Maybe (Val Text)
  , _networkManagerGlobalNetworkTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerGlobalNetwork where
  toResourceProperties NetworkManagerGlobalNetwork{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::GlobalNetwork"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _networkManagerGlobalNetworkDescription
        , fmap (("Tags",) . toJSON) _networkManagerGlobalNetworkTags
        ]
    }

-- | Constructor for 'NetworkManagerGlobalNetwork' containing required fields
-- as arguments.
networkManagerGlobalNetwork
  :: NetworkManagerGlobalNetwork
networkManagerGlobalNetwork  =
  NetworkManagerGlobalNetwork
  { _networkManagerGlobalNetworkDescription = Nothing
  , _networkManagerGlobalNetworkTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html#cfn-networkmanager-globalnetwork-description
nmgnDescription :: Lens' NetworkManagerGlobalNetwork (Maybe (Val Text))
nmgnDescription = lens _networkManagerGlobalNetworkDescription (\s a -> s { _networkManagerGlobalNetworkDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html#cfn-networkmanager-globalnetwork-tags
nmgnTags :: Lens' NetworkManagerGlobalNetwork (Maybe [Tag])
nmgnTags = lens _networkManagerGlobalNetworkTags (\s a -> s { _networkManagerGlobalNetworkTags = a })
