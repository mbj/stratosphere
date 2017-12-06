{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html

module Stratosphere.Resources.ServiceDiscoveryPublicDnsNamespace where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ServiceDiscoveryPublicDnsNamespace. See
-- 'serviceDiscoveryPublicDnsNamespace' for a more convenient constructor.
data ServiceDiscoveryPublicDnsNamespace =
  ServiceDiscoveryPublicDnsNamespace
  { _serviceDiscoveryPublicDnsNamespaceDescription :: Maybe (Val Text)
  , _serviceDiscoveryPublicDnsNamespaceName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryPublicDnsNamespace where
  toJSON ServiceDiscoveryPublicDnsNamespace{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _serviceDiscoveryPublicDnsNamespaceDescription
    , (Just . ("Name",) . toJSON) _serviceDiscoveryPublicDnsNamespaceName
    ]

instance FromJSON ServiceDiscoveryPublicDnsNamespace where
  parseJSON (Object obj) =
    ServiceDiscoveryPublicDnsNamespace <$>
      (obj .:? "Description") <*>
      (obj .: "Name")
  parseJSON _ = mempty

-- | Constructor for 'ServiceDiscoveryPublicDnsNamespace' containing required
-- fields as arguments.
serviceDiscoveryPublicDnsNamespace
  :: Val Text -- ^ 'sdpudnName'
  -> ServiceDiscoveryPublicDnsNamespace
serviceDiscoveryPublicDnsNamespace namearg =
  ServiceDiscoveryPublicDnsNamespace
  { _serviceDiscoveryPublicDnsNamespaceDescription = Nothing
  , _serviceDiscoveryPublicDnsNamespaceName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-description
sdpudnDescription :: Lens' ServiceDiscoveryPublicDnsNamespace (Maybe (Val Text))
sdpudnDescription = lens _serviceDiscoveryPublicDnsNamespaceDescription (\s a -> s { _serviceDiscoveryPublicDnsNamespaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-name
sdpudnName :: Lens' ServiceDiscoveryPublicDnsNamespace (Val Text)
sdpudnName = lens _serviceDiscoveryPublicDnsNamespaceName (\s a -> s { _serviceDiscoveryPublicDnsNamespaceName = a })
