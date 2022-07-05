{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html

module Stratosphere.Resources.ServiceDiscoveryPublicDnsNamespace where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ServiceDiscoveryPublicDnsNamespace. See
-- 'serviceDiscoveryPublicDnsNamespace' for a more convenient constructor.
data ServiceDiscoveryPublicDnsNamespace =
  ServiceDiscoveryPublicDnsNamespace
  { _serviceDiscoveryPublicDnsNamespaceDescription :: Maybe (Val Text)
  , _serviceDiscoveryPublicDnsNamespaceName :: Val Text
  , _serviceDiscoveryPublicDnsNamespaceTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ServiceDiscoveryPublicDnsNamespace where
  toResourceProperties ServiceDiscoveryPublicDnsNamespace{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceDiscovery::PublicDnsNamespace"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _serviceDiscoveryPublicDnsNamespaceDescription
        , (Just . ("Name",) . toJSON) _serviceDiscoveryPublicDnsNamespaceName
        , fmap (("Tags",) . toJSON) _serviceDiscoveryPublicDnsNamespaceTags
        ]
    }

-- | Constructor for 'ServiceDiscoveryPublicDnsNamespace' containing required
-- fields as arguments.
serviceDiscoveryPublicDnsNamespace
  :: Val Text -- ^ 'sdpudnName'
  -> ServiceDiscoveryPublicDnsNamespace
serviceDiscoveryPublicDnsNamespace namearg =
  ServiceDiscoveryPublicDnsNamespace
  { _serviceDiscoveryPublicDnsNamespaceDescription = Nothing
  , _serviceDiscoveryPublicDnsNamespaceName = namearg
  , _serviceDiscoveryPublicDnsNamespaceTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-description
sdpudnDescription :: Lens' ServiceDiscoveryPublicDnsNamespace (Maybe (Val Text))
sdpudnDescription = lens _serviceDiscoveryPublicDnsNamespaceDescription (\s a -> s { _serviceDiscoveryPublicDnsNamespaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-name
sdpudnName :: Lens' ServiceDiscoveryPublicDnsNamespace (Val Text)
sdpudnName = lens _serviceDiscoveryPublicDnsNamespaceName (\s a -> s { _serviceDiscoveryPublicDnsNamespaceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-tags
sdpudnTags :: Lens' ServiceDiscoveryPublicDnsNamespace (Maybe [Tag])
sdpudnTags = lens _serviceDiscoveryPublicDnsNamespaceTags (\s a -> s { _serviceDiscoveryPublicDnsNamespaceTags = a })
