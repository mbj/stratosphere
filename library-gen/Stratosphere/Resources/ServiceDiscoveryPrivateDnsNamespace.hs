{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html

module Stratosphere.Resources.ServiceDiscoveryPrivateDnsNamespace where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ServiceDiscoveryPrivateDnsNamespace. See
-- 'serviceDiscoveryPrivateDnsNamespace' for a more convenient constructor.
data ServiceDiscoveryPrivateDnsNamespace =
  ServiceDiscoveryPrivateDnsNamespace
  { _serviceDiscoveryPrivateDnsNamespaceDescription :: Maybe (Val Text)
  , _serviceDiscoveryPrivateDnsNamespaceName :: Val Text
  , _serviceDiscoveryPrivateDnsNamespaceVpc :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryPrivateDnsNamespace where
  toJSON ServiceDiscoveryPrivateDnsNamespace{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceDescription
    , (Just . ("Name",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceName
    , (Just . ("Vpc",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceVpc
    ]

instance FromJSON ServiceDiscoveryPrivateDnsNamespace where
  parseJSON (Object obj) =
    ServiceDiscoveryPrivateDnsNamespace <$>
      (obj .:? "Description") <*>
      (obj .: "Name") <*>
      (obj .: "Vpc")
  parseJSON _ = mempty

-- | Constructor for 'ServiceDiscoveryPrivateDnsNamespace' containing required
-- fields as arguments.
serviceDiscoveryPrivateDnsNamespace
  :: Val Text -- ^ 'sdpdnName'
  -> Val Text -- ^ 'sdpdnVpc'
  -> ServiceDiscoveryPrivateDnsNamespace
serviceDiscoveryPrivateDnsNamespace namearg vpcarg =
  ServiceDiscoveryPrivateDnsNamespace
  { _serviceDiscoveryPrivateDnsNamespaceDescription = Nothing
  , _serviceDiscoveryPrivateDnsNamespaceName = namearg
  , _serviceDiscoveryPrivateDnsNamespaceVpc = vpcarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-description
sdpdnDescription :: Lens' ServiceDiscoveryPrivateDnsNamespace (Maybe (Val Text))
sdpdnDescription = lens _serviceDiscoveryPrivateDnsNamespaceDescription (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-name
sdpdnName :: Lens' ServiceDiscoveryPrivateDnsNamespace (Val Text)
sdpdnName = lens _serviceDiscoveryPrivateDnsNamespaceName (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-vpc
sdpdnVpc :: Lens' ServiceDiscoveryPrivateDnsNamespace (Val Text)
sdpdnVpc = lens _serviceDiscoveryPrivateDnsNamespaceVpc (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceVpc = a })
