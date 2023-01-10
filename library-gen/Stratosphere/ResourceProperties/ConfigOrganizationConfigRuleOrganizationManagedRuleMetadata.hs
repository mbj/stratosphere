
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html

module Stratosphere.ResourceProperties.ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata. See
-- 'configOrganizationConfigRuleOrganizationManagedRuleMetadata' for a more
-- convenient constructor.
data ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata =
  ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata
  { _configOrganizationConfigRuleOrganizationManagedRuleMetadataDescription :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataInputParameters :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataMaximumExecutionFrequency :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceIdScope :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceTypesScope :: Maybe (ValList Text)
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataRuleIdentifier :: Val Text
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagKeyScope :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagValueScope :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata where
  toJSON ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataDescription
    , fmap (("InputParameters",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataInputParameters
    , fmap (("MaximumExecutionFrequency",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataMaximumExecutionFrequency
    , fmap (("ResourceIdScope",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceIdScope
    , fmap (("ResourceTypesScope",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceTypesScope
    , (Just . ("RuleIdentifier",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataRuleIdentifier
    , fmap (("TagKeyScope",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagKeyScope
    , fmap (("TagValueScope",) . toJSON) _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagValueScope
    ]

-- | Constructor for
-- 'ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata' containing
-- required fields as arguments.
configOrganizationConfigRuleOrganizationManagedRuleMetadata
  :: Val Text -- ^ 'cocromrmRuleIdentifier'
  -> ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata
configOrganizationConfigRuleOrganizationManagedRuleMetadata ruleIdentifierarg =
  ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata
  { _configOrganizationConfigRuleOrganizationManagedRuleMetadataDescription = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataInputParameters = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataMaximumExecutionFrequency = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceIdScope = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceTypesScope = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataRuleIdentifier = ruleIdentifierarg
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagKeyScope = Nothing
  , _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagValueScope = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-description
cocromrmDescription :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (Val Text))
cocromrmDescription = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataDescription (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-inputparameters
cocromrmInputParameters :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (Val Text))
cocromrmInputParameters = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataInputParameters (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-maximumexecutionfrequency
cocromrmMaximumExecutionFrequency :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (Val Text))
cocromrmMaximumExecutionFrequency = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataMaximumExecutionFrequency (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataMaximumExecutionFrequency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourceidscope
cocromrmResourceIdScope :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (Val Text))
cocromrmResourceIdScope = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceIdScope (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceIdScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourcetypesscope
cocromrmResourceTypesScope :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (ValList Text))
cocromrmResourceTypesScope = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceTypesScope (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataResourceTypesScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-ruleidentifier
cocromrmRuleIdentifier :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Val Text)
cocromrmRuleIdentifier = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataRuleIdentifier (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataRuleIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagkeyscope
cocromrmTagKeyScope :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (Val Text))
cocromrmTagKeyScope = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagKeyScope (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagKeyScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagvaluescope
cocromrmTagValueScope :: Lens' ConfigOrganizationConfigRuleOrganizationManagedRuleMetadata (Maybe (Val Text))
cocromrmTagValueScope = lens _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagValueScope (\s a -> s { _configOrganizationConfigRuleOrganizationManagedRuleMetadataTagValueScope = a })
