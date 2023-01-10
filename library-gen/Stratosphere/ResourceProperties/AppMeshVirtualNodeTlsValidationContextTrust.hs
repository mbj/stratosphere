
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContextTrust where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContextAcmTrust
import Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContextFileTrust

-- | Full data type definition for
-- AppMeshVirtualNodeTlsValidationContextTrust. See
-- 'appMeshVirtualNodeTlsValidationContextTrust' for a more convenient
-- constructor.
data AppMeshVirtualNodeTlsValidationContextTrust =
  AppMeshVirtualNodeTlsValidationContextTrust
  { _appMeshVirtualNodeTlsValidationContextTrustACM :: Maybe AppMeshVirtualNodeTlsValidationContextAcmTrust
  , _appMeshVirtualNodeTlsValidationContextTrustFile :: Maybe AppMeshVirtualNodeTlsValidationContextFileTrust
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeTlsValidationContextTrust where
  toJSON AppMeshVirtualNodeTlsValidationContextTrust{..} =
    object $
    catMaybes
    [ fmap (("ACM",) . toJSON) _appMeshVirtualNodeTlsValidationContextTrustACM
    , fmap (("File",) . toJSON) _appMeshVirtualNodeTlsValidationContextTrustFile
    ]

-- | Constructor for 'AppMeshVirtualNodeTlsValidationContextTrust' containing
-- required fields as arguments.
appMeshVirtualNodeTlsValidationContextTrust
  :: AppMeshVirtualNodeTlsValidationContextTrust
appMeshVirtualNodeTlsValidationContextTrust  =
  AppMeshVirtualNodeTlsValidationContextTrust
  { _appMeshVirtualNodeTlsValidationContextTrustACM = Nothing
  , _appMeshVirtualNodeTlsValidationContextTrustFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-tlsvalidationcontexttrust-acm
amvntvctACM :: Lens' AppMeshVirtualNodeTlsValidationContextTrust (Maybe AppMeshVirtualNodeTlsValidationContextAcmTrust)
amvntvctACM = lens _appMeshVirtualNodeTlsValidationContextTrustACM (\s a -> s { _appMeshVirtualNodeTlsValidationContextTrustACM = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-tlsvalidationcontexttrust-file
amvntvctFile :: Lens' AppMeshVirtualNodeTlsValidationContextTrust (Maybe AppMeshVirtualNodeTlsValidationContextFileTrust)
amvntvctFile = lens _appMeshVirtualNodeTlsValidationContextTrustFile (\s a -> s { _appMeshVirtualNodeTlsValidationContextTrustFile = a })
