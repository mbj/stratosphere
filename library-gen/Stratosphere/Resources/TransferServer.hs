{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html

module Stratosphere.Resources.TransferServer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.TransferServerEndpointDetails
import Stratosphere.ResourceProperties.TransferServerIdentityProviderDetails
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for TransferServer. See 'transferServer' for a
-- more convenient constructor.
data TransferServer =
  TransferServer
  { _transferServerCertificate :: Maybe (Val Text)
  , _transferServerEndpointDetails :: Maybe TransferServerEndpointDetails
  , _transferServerEndpointType :: Maybe (Val Text)
  , _transferServerIdentityProviderDetails :: Maybe TransferServerIdentityProviderDetails
  , _transferServerIdentityProviderType :: Maybe (Val Text)
  , _transferServerLoggingRole :: Maybe (Val Text)
  , _transferServerSecurityPolicyName :: Maybe (Val Text)
  , _transferServerTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties TransferServer where
  toResourceProperties TransferServer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Transfer::Server"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Certificate",) . toJSON) _transferServerCertificate
        , fmap (("EndpointDetails",) . toJSON) _transferServerEndpointDetails
        , fmap (("EndpointType",) . toJSON) _transferServerEndpointType
        , fmap (("IdentityProviderDetails",) . toJSON) _transferServerIdentityProviderDetails
        , fmap (("IdentityProviderType",) . toJSON) _transferServerIdentityProviderType
        , fmap (("LoggingRole",) . toJSON) _transferServerLoggingRole
        , fmap (("SecurityPolicyName",) . toJSON) _transferServerSecurityPolicyName
        , fmap (("Tags",) . toJSON) _transferServerTags
        ]
    }

-- | Constructor for 'TransferServer' containing required fields as arguments.
transferServer
  :: TransferServer
transferServer  =
  TransferServer
  { _transferServerCertificate = Nothing
  , _transferServerEndpointDetails = Nothing
  , _transferServerEndpointType = Nothing
  , _transferServerIdentityProviderDetails = Nothing
  , _transferServerIdentityProviderType = Nothing
  , _transferServerLoggingRole = Nothing
  , _transferServerSecurityPolicyName = Nothing
  , _transferServerTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-certificate
tsCertificate :: Lens' TransferServer (Maybe (Val Text))
tsCertificate = lens _transferServerCertificate (\s a -> s { _transferServerCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-endpointdetails
tsEndpointDetails :: Lens' TransferServer (Maybe TransferServerEndpointDetails)
tsEndpointDetails = lens _transferServerEndpointDetails (\s a -> s { _transferServerEndpointDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-endpointtype
tsEndpointType :: Lens' TransferServer (Maybe (Val Text))
tsEndpointType = lens _transferServerEndpointType (\s a -> s { _transferServerEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-identityproviderdetails
tsIdentityProviderDetails :: Lens' TransferServer (Maybe TransferServerIdentityProviderDetails)
tsIdentityProviderDetails = lens _transferServerIdentityProviderDetails (\s a -> s { _transferServerIdentityProviderDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-identityprovidertype
tsIdentityProviderType :: Lens' TransferServer (Maybe (Val Text))
tsIdentityProviderType = lens _transferServerIdentityProviderType (\s a -> s { _transferServerIdentityProviderType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-loggingrole
tsLoggingRole :: Lens' TransferServer (Maybe (Val Text))
tsLoggingRole = lens _transferServerLoggingRole (\s a -> s { _transferServerLoggingRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-securitypolicyname
tsSecurityPolicyName :: Lens' TransferServer (Maybe (Val Text))
tsSecurityPolicyName = lens _transferServerSecurityPolicyName (\s a -> s { _transferServerSecurityPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-tags
tsTags :: Lens' TransferServer (Maybe [Tag])
tsTags = lens _transferServerTags (\s a -> s { _transferServerTags = a })
