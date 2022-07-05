{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html

module Stratosphere.Resources.ConfigOrganizationConfigRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata
import Stratosphere.ResourceProperties.ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata

-- | Full data type definition for ConfigOrganizationConfigRule. See
-- 'configOrganizationConfigRule' for a more convenient constructor.
data ConfigOrganizationConfigRule =
  ConfigOrganizationConfigRule
  { _configOrganizationConfigRuleExcludedAccounts :: Maybe (ValList Text)
  , _configOrganizationConfigRuleOrganizationConfigRuleName :: Val Text
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadata :: Maybe ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadata :: Maybe ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata
  } deriving (Show, Eq)

instance ToResourceProperties ConfigOrganizationConfigRule where
  toResourceProperties ConfigOrganizationConfigRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::OrganizationConfigRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ExcludedAccounts",) . toJSON) _configOrganizationConfigRuleExcludedAccounts
        , (Just . ("OrganizationConfigRuleName",) . toJSON) _configOrganizationConfigRuleOrganizationConfigRuleName
        , fmap (("OrganizationCustomRuleMetadata",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadata
        , fmap (("OrganizationManagedRuleMetadata",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadata
        ]
    }

-- | Constructor for 'ConfigOrganizationConfigRule' containing required fields
-- as arguments.
configOrganizationConfigRule
  :: Val Text -- ^ 'cocrOrganizationConfigRuleName'
  -> ConfigOrganizationConfigRule
configOrganizationConfigRule organizationConfigRuleNamearg =
  ConfigOrganizationConfigRule
  { _configOrganizationConfigRuleExcludedAccounts = Nothing
  , _configOrganizationConfigRuleOrganizationConfigRuleName = organizationConfigRuleNamearg
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadata = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadata = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-excludedaccounts
cocrExcludedAccounts :: Lens' ConfigOrganizationConfigRule (Maybe (ValList Text))
cocrExcludedAccounts = lens _configOrganizationConfigRuleExcludedAccounts (\s a -> s { _configOrganizationConfigRuleExcludedAccounts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationconfigrulename
cocrOrganizationConfigRuleName :: Lens' ConfigOrganizationConfigRule (Val Text)
cocrOrganizationConfigRuleName = lens _configOrganizationConfigRuleOrganizationConfigRuleName (\s a -> s { _configOrganizationConfigRuleOrganizationConfigRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata
cocrOrganizationCustomRuleMetadata :: Lens' ConfigOrganizationConfigRule (Maybe ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata)
cocrOrganizationCustomRuleMetadata = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadata (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata
cocrOrganizationManagedRuleMetadata :: Lens' ConfigOrganizationConfigRule (Maybe ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata)
cocrOrganizationManagedRuleMetadata = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadata (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadata = a })
