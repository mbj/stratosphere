
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html

module Stratosphere.ResourceProperties.MSKClusterClientAuthentication where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterTls

-- | Full data type definition for MSKClusterClientAuthentication. See
-- 'mskClusterClientAuthentication' for a more convenient constructor.
data MSKClusterClientAuthentication =
  MSKClusterClientAuthentication
  { _mSKClusterClientAuthenticationTls :: Maybe MSKClusterTls
  } deriving (Show, Eq)

instance ToJSON MSKClusterClientAuthentication where
  toJSON MSKClusterClientAuthentication{..} =
    object $
    catMaybes
    [ fmap (("Tls",) . toJSON) _mSKClusterClientAuthenticationTls
    ]

-- | Constructor for 'MSKClusterClientAuthentication' containing required
-- fields as arguments.
mskClusterClientAuthentication
  :: MSKClusterClientAuthentication
mskClusterClientAuthentication  =
  MSKClusterClientAuthentication
  { _mSKClusterClientAuthenticationTls = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-tls
mskccaTls :: Lens' MSKClusterClientAuthentication (Maybe MSKClusterTls)
mskccaTls = lens _mSKClusterClientAuthenticationTls (\s a -> s { _mSKClusterClientAuthenticationTls = a })
