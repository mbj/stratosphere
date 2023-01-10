
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeClientPolicyTls where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContext

-- | Full data type definition for AppMeshVirtualNodeClientPolicyTls. See
-- 'appMeshVirtualNodeClientPolicyTls' for a more convenient constructor.
data AppMeshVirtualNodeClientPolicyTls =
  AppMeshVirtualNodeClientPolicyTls
  { _appMeshVirtualNodeClientPolicyTlsEnforce :: Maybe (Val Bool)
  , _appMeshVirtualNodeClientPolicyTlsPorts :: Maybe (ValList Integer)
  , _appMeshVirtualNodeClientPolicyTlsValidation :: AppMeshVirtualNodeTlsValidationContext
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeClientPolicyTls where
  toJSON AppMeshVirtualNodeClientPolicyTls{..} =
    object $
    catMaybes
    [ fmap (("Enforce",) . toJSON) _appMeshVirtualNodeClientPolicyTlsEnforce
    , fmap (("Ports",) . toJSON) _appMeshVirtualNodeClientPolicyTlsPorts
    , (Just . ("Validation",) . toJSON) _appMeshVirtualNodeClientPolicyTlsValidation
    ]

-- | Constructor for 'AppMeshVirtualNodeClientPolicyTls' containing required
-- fields as arguments.
appMeshVirtualNodeClientPolicyTls
  :: AppMeshVirtualNodeTlsValidationContext -- ^ 'amvncptValidation'
  -> AppMeshVirtualNodeClientPolicyTls
appMeshVirtualNodeClientPolicyTls validationarg =
  AppMeshVirtualNodeClientPolicyTls
  { _appMeshVirtualNodeClientPolicyTlsEnforce = Nothing
  , _appMeshVirtualNodeClientPolicyTlsPorts = Nothing
  , _appMeshVirtualNodeClientPolicyTlsValidation = validationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-enforce
amvncptEnforce :: Lens' AppMeshVirtualNodeClientPolicyTls (Maybe (Val Bool))
amvncptEnforce = lens _appMeshVirtualNodeClientPolicyTlsEnforce (\s a -> s { _appMeshVirtualNodeClientPolicyTlsEnforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-ports
amvncptPorts :: Lens' AppMeshVirtualNodeClientPolicyTls (Maybe (ValList Integer))
amvncptPorts = lens _appMeshVirtualNodeClientPolicyTlsPorts (\s a -> s { _appMeshVirtualNodeClientPolicyTlsPorts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-validation
amvncptValidation :: Lens' AppMeshVirtualNodeClientPolicyTls AppMeshVirtualNodeTlsValidationContext
amvncptValidation = lens _appMeshVirtualNodeClientPolicyTlsValidation (\s a -> s { _appMeshVirtualNodeClientPolicyTlsValidation = a })
