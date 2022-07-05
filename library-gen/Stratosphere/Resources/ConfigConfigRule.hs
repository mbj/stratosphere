{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html

module Stratosphere.Resources.ConfigConfigRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigConfigRuleScope
import Stratosphere.ResourceProperties.ConfigConfigRuleSource

-- | Full data type definition for ConfigConfigRule. See 'configConfigRule'
-- for a more convenient constructor.
data ConfigConfigRule =
  ConfigConfigRule
  { _configConfigRuleConfigRuleName :: Maybe (Val Text)
  , _configConfigRuleDescription :: Maybe (Val Text)
  , _configConfigRuleInputParameters :: Maybe Object
  , _configConfigRuleMaximumExecutionFrequency :: Maybe (Val Text)
  , _configConfigRuleScope :: Maybe ConfigConfigRuleScope
  , _configConfigRuleSource :: ConfigConfigRuleSource
  } deriving (Show, Eq)

instance ToResourceProperties ConfigConfigRule where
  toResourceProperties ConfigConfigRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::ConfigRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ConfigRuleName",) . toJSON) _configConfigRuleConfigRuleName
        , fmap (("Description",) . toJSON) _configConfigRuleDescription
        , fmap (("InputParameters",) . toJSON) _configConfigRuleInputParameters
        , fmap (("MaximumExecutionFrequency",) . toJSON) _configConfigRuleMaximumExecutionFrequency
        , fmap (("Scope",) . toJSON) _configConfigRuleScope
        , (Just . ("Source",) . toJSON) _configConfigRuleSource
        ]
    }

-- | Constructor for 'ConfigConfigRule' containing required fields as
-- arguments.
configConfigRule
  :: ConfigConfigRuleSource -- ^ 'ccrSource'
  -> ConfigConfigRule
configConfigRule sourcearg =
  ConfigConfigRule
  { _configConfigRuleConfigRuleName = Nothing
  , _configConfigRuleDescription = Nothing
  , _configConfigRuleInputParameters = Nothing
  , _configConfigRuleMaximumExecutionFrequency = Nothing
  , _configConfigRuleScope = Nothing
  , _configConfigRuleSource = sourcearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-configrulename
ccrConfigRuleName :: Lens' ConfigConfigRule (Maybe (Val Text))
ccrConfigRuleName = lens _configConfigRuleConfigRuleName (\s a -> s { _configConfigRuleConfigRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-description
ccrDescription :: Lens' ConfigConfigRule (Maybe (Val Text))
ccrDescription = lens _configConfigRuleDescription (\s a -> s { _configConfigRuleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-inputparameters
ccrInputParameters :: Lens' ConfigConfigRule (Maybe Object)
ccrInputParameters = lens _configConfigRuleInputParameters (\s a -> s { _configConfigRuleInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-maximumexecutionfrequency
ccrMaximumExecutionFrequency :: Lens' ConfigConfigRule (Maybe (Val Text))
ccrMaximumExecutionFrequency = lens _configConfigRuleMaximumExecutionFrequency (\s a -> s { _configConfigRuleMaximumExecutionFrequency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-scope
ccrScope :: Lens' ConfigConfigRule (Maybe ConfigConfigRuleScope)
ccrScope = lens _configConfigRuleScope (\s a -> s { _configConfigRuleScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-source
ccrSource :: Lens' ConfigConfigRule ConfigConfigRuleSource
ccrSource = lens _configConfigRuleSource (\s a -> s { _configConfigRuleSource = a })
