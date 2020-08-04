{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayClientPolicyTls where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContext

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayClientPolicyTls. See
-- 'appMeshVirtualGatewayVirtualGatewayClientPolicyTls' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayClientPolicyTls =
  AppMeshVirtualGatewayVirtualGatewayClientPolicyTls
  { _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsEnforce :: Maybe (Val Bool)
  , _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsPorts :: Maybe (ValList Integer)
  , _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsValidation :: AppMeshVirtualGatewayVirtualGatewayTlsValidationContext
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayClientPolicyTls where
  toJSON AppMeshVirtualGatewayVirtualGatewayClientPolicyTls{..} =
    object $
    catMaybes
    [ fmap (("Enforce",) . toJSON) _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsEnforce
    , fmap (("Ports",) . toJSON) _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsPorts
    , (Just . ("Validation",) . toJSON) _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsValidation
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayClientPolicyTls'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayClientPolicyTls
  :: AppMeshVirtualGatewayVirtualGatewayTlsValidationContext -- ^ 'amvgvgcptValidation'
  -> AppMeshVirtualGatewayVirtualGatewayClientPolicyTls
appMeshVirtualGatewayVirtualGatewayClientPolicyTls validationarg =
  AppMeshVirtualGatewayVirtualGatewayClientPolicyTls
  { _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsEnforce = Nothing
  , _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsPorts = Nothing
  , _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsValidation = validationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-enforce
amvgvgcptEnforce :: Lens' AppMeshVirtualGatewayVirtualGatewayClientPolicyTls (Maybe (Val Bool))
amvgvgcptEnforce = lens _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsEnforce (\s a -> s { _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsEnforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-ports
amvgvgcptPorts :: Lens' AppMeshVirtualGatewayVirtualGatewayClientPolicyTls (Maybe (ValList Integer))
amvgvgcptPorts = lens _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsPorts (\s a -> s { _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsPorts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-validation
amvgvgcptValidation :: Lens' AppMeshVirtualGatewayVirtualGatewayClientPolicyTls AppMeshVirtualGatewayVirtualGatewayTlsValidationContext
amvgvgcptValidation = lens _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsValidation (\s a -> s { _appMeshVirtualGatewayVirtualGatewayClientPolicyTlsValidation = a })
