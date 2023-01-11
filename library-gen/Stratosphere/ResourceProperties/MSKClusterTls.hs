
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html

module Stratosphere.ResourceProperties.MSKClusterTls where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterTls. See 'mskClusterTls' for a
-- more convenient constructor.
data MSKClusterTls =
  MSKClusterTls
  { _mSKClusterTlsCertificateAuthorityArnList :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON MSKClusterTls where
  toJSON MSKClusterTls{..} =
    object $
    catMaybes
    [ fmap (("CertificateAuthorityArnList",) . toJSON) _mSKClusterTlsCertificateAuthorityArnList
    ]

-- | Constructor for 'MSKClusterTls' containing required fields as arguments.
mskClusterTls
  :: MSKClusterTls
mskClusterTls  =
  MSKClusterTls
  { _mSKClusterTlsCertificateAuthorityArnList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html#cfn-msk-cluster-tls-certificateauthorityarnlist
mskctCertificateAuthorityArnList :: Lens' MSKClusterTls (Maybe (ValList Text))
mskctCertificateAuthorityArnList = lens _mSKClusterTlsCertificateAuthorityArnList (\s a -> s { _mSKClusterTlsCertificateAuthorityArnList = a })
