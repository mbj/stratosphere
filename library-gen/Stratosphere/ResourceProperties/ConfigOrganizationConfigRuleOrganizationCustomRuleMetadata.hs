{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html

module Stratosphere.ResourceProperties.ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata. See
-- 'configOrganizationConfigRuleOrganizationCustomRuleMetadata' for a more
-- convenient constructor.
data ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata =
  ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata
  { _configOrganizationConfigRuleOrganizationCustomRuleMetadataDescription :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataInputParameters :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataLambdaFunctionArn :: Val Text
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataMaximumExecutionFrequency :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataOrganizationConfigRuleTriggerTypes :: ValList Text
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceIdScope :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceTypesScope :: Maybe (ValList Text)
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagKeyScope :: Maybe (Val Text)
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagValueScope :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata where
  toJSON ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataDescription
    , fmap (("InputParameters",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataInputParameters
    , (Just . ("LambdaFunctionArn",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataLambdaFunctionArn
    , fmap (("MaximumExecutionFrequency",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataMaximumExecutionFrequency
    , (Just . ("OrganizationConfigRuleTriggerTypes",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataOrganizationConfigRuleTriggerTypes
    , fmap (("ResourceIdScope",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceIdScope
    , fmap (("ResourceTypesScope",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceTypesScope
    , fmap (("TagKeyScope",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagKeyScope
    , fmap (("TagValueScope",) . toJSON) _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagValueScope
    ]

-- | Constructor for
-- 'ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata' containing
-- required fields as arguments.
configOrganizationConfigRuleOrganizationCustomRuleMetadata
  :: Val Text -- ^ 'cocrocrmLambdaFunctionArn'
  -> ValList Text -- ^ 'cocrocrmOrganizationConfigRuleTriggerTypes'
  -> ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata
configOrganizationConfigRuleOrganizationCustomRuleMetadata lambdaFunctionArnarg organizationConfigRuleTriggerTypesarg =
  ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata
  { _configOrganizationConfigRuleOrganizationCustomRuleMetadataDescription = Nothing
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataInputParameters = Nothing
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataLambdaFunctionArn = lambdaFunctionArnarg
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataMaximumExecutionFrequency = Nothing
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataOrganizationConfigRuleTriggerTypes = organizationConfigRuleTriggerTypesarg
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceIdScope = Nothing
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceTypesScope = Nothing
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagKeyScope = Nothing
  , _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagValueScope = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-description
cocrocrmDescription :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (Val Text))
cocrocrmDescription = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataDescription (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-inputparameters
cocrocrmInputParameters :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (Val Text))
cocrocrmInputParameters = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataInputParameters (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-lambdafunctionarn
cocrocrmLambdaFunctionArn :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Val Text)
cocrocrmLambdaFunctionArn = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataLambdaFunctionArn (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataLambdaFunctionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-maximumexecutionfrequency
cocrocrmMaximumExecutionFrequency :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (Val Text))
cocrocrmMaximumExecutionFrequency = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataMaximumExecutionFrequency (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataMaximumExecutionFrequency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-organizationconfigruletriggertypes
cocrocrmOrganizationConfigRuleTriggerTypes :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (ValList Text)
cocrocrmOrganizationConfigRuleTriggerTypes = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataOrganizationConfigRuleTriggerTypes (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataOrganizationConfigRuleTriggerTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-resourceidscope
cocrocrmResourceIdScope :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (Val Text))
cocrocrmResourceIdScope = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceIdScope (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceIdScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-resourcetypesscope
cocrocrmResourceTypesScope :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (ValList Text))
cocrocrmResourceTypesScope = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceTypesScope (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataResourceTypesScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-tagkeyscope
cocrocrmTagKeyScope :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (Val Text))
cocrocrmTagKeyScope = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagKeyScope (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagKeyScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-tagvaluescope
cocrocrmTagValueScope :: Lens' ConfigOrganizationConfigRuleOrganizationCustomRuleMetadata (Maybe (Val Text))
cocrocrmTagValueScope = lens _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagValueScope (\s a -> s { _configOrganizationConfigRuleOrganizationCustomRuleMetadataTagValueScope = a })
