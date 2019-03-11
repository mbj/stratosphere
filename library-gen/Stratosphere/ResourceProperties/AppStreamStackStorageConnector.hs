{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html

module Stratosphere.ResourceProperties.AppStreamStackStorageConnector where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamStackStorageConnector. See
-- 'appStreamStackStorageConnector' for a more convenient constructor.
data AppStreamStackStorageConnector =
  AppStreamStackStorageConnector
  { _appStreamStackStorageConnectorConnectorType :: Val Text
  , _appStreamStackStorageConnectorDomains :: Maybe (ValList Text)
  , _appStreamStackStorageConnectorResourceIdentifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppStreamStackStorageConnector where
  toJSON AppStreamStackStorageConnector{..} =
    object $
    catMaybes
    [ (Just . ("ConnectorType",) . toJSON) _appStreamStackStorageConnectorConnectorType
    , fmap (("Domains",) . toJSON) _appStreamStackStorageConnectorDomains
    , fmap (("ResourceIdentifier",) . toJSON) _appStreamStackStorageConnectorResourceIdentifier
    ]

-- | Constructor for 'AppStreamStackStorageConnector' containing required
-- fields as arguments.
appStreamStackStorageConnector
  :: Val Text -- ^ 'assscConnectorType'
  -> AppStreamStackStorageConnector
appStreamStackStorageConnector connectorTypearg =
  AppStreamStackStorageConnector
  { _appStreamStackStorageConnectorConnectorType = connectorTypearg
  , _appStreamStackStorageConnectorDomains = Nothing
  , _appStreamStackStorageConnectorResourceIdentifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-connectortype
assscConnectorType :: Lens' AppStreamStackStorageConnector (Val Text)
assscConnectorType = lens _appStreamStackStorageConnectorConnectorType (\s a -> s { _appStreamStackStorageConnectorConnectorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-domains
assscDomains :: Lens' AppStreamStackStorageConnector (Maybe (ValList Text))
assscDomains = lens _appStreamStackStorageConnectorDomains (\s a -> s { _appStreamStackStorageConnectorDomains = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-resourceidentifier
assscResourceIdentifier :: Lens' AppStreamStackStorageConnector (Maybe (Val Text))
assscResourceIdentifier = lens _appStreamStackStorageConnectorResourceIdentifier (\s a -> s { _appStreamStackStorageConnectorResourceIdentifier = a })
