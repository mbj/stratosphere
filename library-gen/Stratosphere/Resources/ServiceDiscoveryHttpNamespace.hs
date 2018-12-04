{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html

module Stratosphere.Resources.ServiceDiscoveryHttpNamespace where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceDiscoveryHttpNamespace. See
-- 'serviceDiscoveryHttpNamespace' for a more convenient constructor.
data ServiceDiscoveryHttpNamespace =
  ServiceDiscoveryHttpNamespace
  { _serviceDiscoveryHttpNamespaceDescription :: Maybe (Val Text)
  , _serviceDiscoveryHttpNamespaceName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryHttpNamespace where
  toJSON ServiceDiscoveryHttpNamespace{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _serviceDiscoveryHttpNamespaceDescription
    , (Just . ("Name",) . toJSON) _serviceDiscoveryHttpNamespaceName
    ]

instance FromJSON ServiceDiscoveryHttpNamespace where
  parseJSON (Object obj) =
    ServiceDiscoveryHttpNamespace <$>
      (obj .:? "Description") <*>
      (obj .: "Name")
  parseJSON _ = mempty

-- | Constructor for 'ServiceDiscoveryHttpNamespace' containing required
-- fields as arguments.
serviceDiscoveryHttpNamespace
  :: Val Text -- ^ 'sdhnName'
  -> ServiceDiscoveryHttpNamespace
serviceDiscoveryHttpNamespace namearg =
  ServiceDiscoveryHttpNamespace
  { _serviceDiscoveryHttpNamespaceDescription = Nothing
  , _serviceDiscoveryHttpNamespaceName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-description
sdhnDescription :: Lens' ServiceDiscoveryHttpNamespace (Maybe (Val Text))
sdhnDescription = lens _serviceDiscoveryHttpNamespaceDescription (\s a -> s { _serviceDiscoveryHttpNamespaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-name
sdhnName :: Lens' ServiceDiscoveryHttpNamespace (Val Text)
sdhnName = lens _serviceDiscoveryHttpNamespaceName (\s a -> s { _serviceDiscoveryHttpNamespaceName = a })
