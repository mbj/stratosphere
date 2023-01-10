
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html

module Stratosphere.ResourceProperties.AmplifyDomainSubDomainSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyDomainSubDomainSetting. See
-- 'amplifyDomainSubDomainSetting' for a more convenient constructor.
data AmplifyDomainSubDomainSetting =
  AmplifyDomainSubDomainSetting
  { _amplifyDomainSubDomainSettingBranchName :: Val Text
  , _amplifyDomainSubDomainSettingPrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyDomainSubDomainSetting where
  toJSON AmplifyDomainSubDomainSetting{..} =
    object $
    catMaybes
    [ (Just . ("BranchName",) . toJSON) _amplifyDomainSubDomainSettingBranchName
    , (Just . ("Prefix",) . toJSON) _amplifyDomainSubDomainSettingPrefix
    ]

-- | Constructor for 'AmplifyDomainSubDomainSetting' containing required
-- fields as arguments.
amplifyDomainSubDomainSetting
  :: Val Text -- ^ 'adsdsBranchName'
  -> Val Text -- ^ 'adsdsPrefix'
  -> AmplifyDomainSubDomainSetting
amplifyDomainSubDomainSetting branchNamearg prefixarg =
  AmplifyDomainSubDomainSetting
  { _amplifyDomainSubDomainSettingBranchName = branchNamearg
  , _amplifyDomainSubDomainSettingPrefix = prefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-branchname
adsdsBranchName :: Lens' AmplifyDomainSubDomainSetting (Val Text)
adsdsBranchName = lens _amplifyDomainSubDomainSettingBranchName (\s a -> s { _amplifyDomainSubDomainSettingBranchName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-prefix
adsdsPrefix :: Lens' AmplifyDomainSubDomainSetting (Val Text)
adsdsPrefix = lens _amplifyDomainSubDomainSettingPrefix (\s a -> s { _amplifyDomainSubDomainSettingPrefix = a })
