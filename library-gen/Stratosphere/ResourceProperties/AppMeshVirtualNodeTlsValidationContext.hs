
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContext where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContextTrust

-- | Full data type definition for AppMeshVirtualNodeTlsValidationContext. See
-- 'appMeshVirtualNodeTlsValidationContext' for a more convenient
-- constructor.
data AppMeshVirtualNodeTlsValidationContext =
  AppMeshVirtualNodeTlsValidationContext
  { _appMeshVirtualNodeTlsValidationContextTrust :: AppMeshVirtualNodeTlsValidationContextTrust
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeTlsValidationContext where
  toJSON AppMeshVirtualNodeTlsValidationContext{..} =
    object $
    catMaybes
    [ (Just . ("Trust",) . toJSON) _appMeshVirtualNodeTlsValidationContextTrust
    ]

-- | Constructor for 'AppMeshVirtualNodeTlsValidationContext' containing
-- required fields as arguments.
appMeshVirtualNodeTlsValidationContext
  :: AppMeshVirtualNodeTlsValidationContextTrust -- ^ 'amvntvcTrust'
  -> AppMeshVirtualNodeTlsValidationContext
appMeshVirtualNodeTlsValidationContext trustarg =
  AppMeshVirtualNodeTlsValidationContext
  { _appMeshVirtualNodeTlsValidationContextTrust = trustarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html#cfn-appmesh-virtualnode-tlsvalidationcontext-trust
amvntvcTrust :: Lens' AppMeshVirtualNodeTlsValidationContext AppMeshVirtualNodeTlsValidationContextTrust
amvntvcTrust = lens _appMeshVirtualNodeTlsValidationContextTrust (\s a -> s { _appMeshVirtualNodeTlsValidationContextTrust = a })
