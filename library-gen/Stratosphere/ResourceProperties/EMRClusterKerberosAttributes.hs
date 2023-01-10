
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html

module Stratosphere.ResourceProperties.EMRClusterKerberosAttributes where

import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterKerberosAttributes. See
-- 'emrClusterKerberosAttributes' for a more convenient constructor.
data EMRClusterKerberosAttributes =
  EMRClusterKerberosAttributes
  { _eMRClusterKerberosAttributesADDomainJoinPassword :: Maybe (Val Text)
  , _eMRClusterKerberosAttributesADDomainJoinUser :: Maybe (Val Text)
  , _eMRClusterKerberosAttributesCrossRealmTrustPrincipalPassword :: Maybe (Val Text)
  , _eMRClusterKerberosAttributesKdcAdminPassword :: Val Text
  , _eMRClusterKerberosAttributesRealm :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRClusterKerberosAttributes where
  toJSON EMRClusterKerberosAttributes{..} =
    object $
    catMaybes
    [ fmap (("ADDomainJoinPassword",) . toJSON) _eMRClusterKerberosAttributesADDomainJoinPassword
    , fmap (("ADDomainJoinUser",) . toJSON) _eMRClusterKerberosAttributesADDomainJoinUser
    , fmap (("CrossRealmTrustPrincipalPassword",) . toJSON) _eMRClusterKerberosAttributesCrossRealmTrustPrincipalPassword
    , (Just . ("KdcAdminPassword",) . toJSON) _eMRClusterKerberosAttributesKdcAdminPassword
    , (Just . ("Realm",) . toJSON) _eMRClusterKerberosAttributesRealm
    ]

-- | Constructor for 'EMRClusterKerberosAttributes' containing required fields
-- as arguments.
emrClusterKerberosAttributes
  :: Val Text -- ^ 'emrckaKdcAdminPassword'
  -> Val Text -- ^ 'emrckaRealm'
  -> EMRClusterKerberosAttributes
emrClusterKerberosAttributes kdcAdminPasswordarg realmarg =
  EMRClusterKerberosAttributes
  { _eMRClusterKerberosAttributesADDomainJoinPassword = Nothing
  , _eMRClusterKerberosAttributesADDomainJoinUser = Nothing
  , _eMRClusterKerberosAttributesCrossRealmTrustPrincipalPassword = Nothing
  , _eMRClusterKerberosAttributesKdcAdminPassword = kdcAdminPasswordarg
  , _eMRClusterKerberosAttributesRealm = realmarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-addomainjoinpassword
emrckaADDomainJoinPassword :: Lens' EMRClusterKerberosAttributes (Maybe (Val Text))
emrckaADDomainJoinPassword = lens _eMRClusterKerberosAttributesADDomainJoinPassword (\s a -> s { _eMRClusterKerberosAttributesADDomainJoinPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-addomainjoinuser
emrckaADDomainJoinUser :: Lens' EMRClusterKerberosAttributes (Maybe (Val Text))
emrckaADDomainJoinUser = lens _eMRClusterKerberosAttributesADDomainJoinUser (\s a -> s { _eMRClusterKerberosAttributesADDomainJoinUser = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-crossrealmtrustprincipalpassword
emrckaCrossRealmTrustPrincipalPassword :: Lens' EMRClusterKerberosAttributes (Maybe (Val Text))
emrckaCrossRealmTrustPrincipalPassword = lens _eMRClusterKerberosAttributesCrossRealmTrustPrincipalPassword (\s a -> s { _eMRClusterKerberosAttributesCrossRealmTrustPrincipalPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-kdcadminpassword
emrckaKdcAdminPassword :: Lens' EMRClusterKerberosAttributes (Val Text)
emrckaKdcAdminPassword = lens _eMRClusterKerberosAttributesKdcAdminPassword (\s a -> s { _eMRClusterKerberosAttributesKdcAdminPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-realm
emrckaRealm :: Lens' EMRClusterKerberosAttributes (Val Text)
emrckaRealm = lens _eMRClusterKerberosAttributesRealm (\s a -> s { _eMRClusterKerberosAttributesRealm = a })
