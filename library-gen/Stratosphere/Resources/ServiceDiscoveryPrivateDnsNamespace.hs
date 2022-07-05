{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html

module Stratosphere.Resources.ServiceDiscoveryPrivateDnsNamespace where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ServiceDiscoveryPrivateDnsNamespace. See
-- 'serviceDiscoveryPrivateDnsNamespace' for a more convenient constructor.
data ServiceDiscoveryPrivateDnsNamespace =
  ServiceDiscoveryPrivateDnsNamespace
  { _serviceDiscoveryPrivateDnsNamespaceDescription :: Maybe (Val Text)
  , _serviceDiscoveryPrivateDnsNamespaceName :: Val Text
  , _serviceDiscoveryPrivateDnsNamespaceTags :: Maybe [Tag]
  , _serviceDiscoveryPrivateDnsNamespaceVpc :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceDiscoveryPrivateDnsNamespace where
  toResourceProperties ServiceDiscoveryPrivateDnsNamespace{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceDiscovery::PrivateDnsNamespace"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceDescription
        , (Just . ("Name",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceName
        , fmap (("Tags",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceTags
        , (Just . ("Vpc",) . toJSON) _serviceDiscoveryPrivateDnsNamespaceVpc
        ]
    }

-- | Constructor for 'ServiceDiscoveryPrivateDnsNamespace' containing required
-- fields as arguments.
serviceDiscoveryPrivateDnsNamespace
  :: Val Text -- ^ 'sdprdnName'
  -> Val Text -- ^ 'sdprdnVpc'
  -> ServiceDiscoveryPrivateDnsNamespace
serviceDiscoveryPrivateDnsNamespace namearg vpcarg =
  ServiceDiscoveryPrivateDnsNamespace
  { _serviceDiscoveryPrivateDnsNamespaceDescription = Nothing
  , _serviceDiscoveryPrivateDnsNamespaceName = namearg
  , _serviceDiscoveryPrivateDnsNamespaceTags = Nothing
  , _serviceDiscoveryPrivateDnsNamespaceVpc = vpcarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-description
sdprdnDescription :: Lens' ServiceDiscoveryPrivateDnsNamespace (Maybe (Val Text))
sdprdnDescription = lens _serviceDiscoveryPrivateDnsNamespaceDescription (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-name
sdprdnName :: Lens' ServiceDiscoveryPrivateDnsNamespace (Val Text)
sdprdnName = lens _serviceDiscoveryPrivateDnsNamespaceName (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-tags
sdprdnTags :: Lens' ServiceDiscoveryPrivateDnsNamespace (Maybe [Tag])
sdprdnTags = lens _serviceDiscoveryPrivateDnsNamespaceTags (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-vpc
sdprdnVpc :: Lens' ServiceDiscoveryPrivateDnsNamespace (Val Text)
sdprdnVpc = lens _serviceDiscoveryPrivateDnsNamespaceVpc (\s a -> s { _serviceDiscoveryPrivateDnsNamespaceVpc = a })
