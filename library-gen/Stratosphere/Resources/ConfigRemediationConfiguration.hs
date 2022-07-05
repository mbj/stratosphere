{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html

module Stratosphere.Resources.ConfigRemediationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigRemediationConfigurationExecutionControls

-- | Full data type definition for ConfigRemediationConfiguration. See
-- 'configRemediationConfiguration' for a more convenient constructor.
data ConfigRemediationConfiguration =
  ConfigRemediationConfiguration
  { _configRemediationConfigurationAutomatic :: Maybe (Val Bool)
  , _configRemediationConfigurationConfigRuleName :: Val Text
  , _configRemediationConfigurationExecutionControls :: Maybe ConfigRemediationConfigurationExecutionControls
  , _configRemediationConfigurationMaximumAutomaticAttempts :: Maybe (Val Integer)
  , _configRemediationConfigurationParameters :: Maybe Object
  , _configRemediationConfigurationResourceType :: Maybe (Val Text)
  , _configRemediationConfigurationRetryAttemptSeconds :: Maybe (Val Integer)
  , _configRemediationConfigurationTargetId :: Val Text
  , _configRemediationConfigurationTargetType :: Val Text
  , _configRemediationConfigurationTargetVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ConfigRemediationConfiguration where
  toResourceProperties ConfigRemediationConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::RemediationConfiguration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Automatic",) . toJSON) _configRemediationConfigurationAutomatic
        , (Just . ("ConfigRuleName",) . toJSON) _configRemediationConfigurationConfigRuleName
        , fmap (("ExecutionControls",) . toJSON) _configRemediationConfigurationExecutionControls
        , fmap (("MaximumAutomaticAttempts",) . toJSON) _configRemediationConfigurationMaximumAutomaticAttempts
        , fmap (("Parameters",) . toJSON) _configRemediationConfigurationParameters
        , fmap (("ResourceType",) . toJSON) _configRemediationConfigurationResourceType
        , fmap (("RetryAttemptSeconds",) . toJSON) _configRemediationConfigurationRetryAttemptSeconds
        , (Just . ("TargetId",) . toJSON) _configRemediationConfigurationTargetId
        , (Just . ("TargetType",) . toJSON) _configRemediationConfigurationTargetType
        , fmap (("TargetVersion",) . toJSON) _configRemediationConfigurationTargetVersion
        ]
    }

-- | Constructor for 'ConfigRemediationConfiguration' containing required
-- fields as arguments.
configRemediationConfiguration
  :: Val Text -- ^ 'crcConfigRuleName'
  -> Val Text -- ^ 'crcTargetId'
  -> Val Text -- ^ 'crcTargetType'
  -> ConfigRemediationConfiguration
configRemediationConfiguration configRuleNamearg targetIdarg targetTypearg =
  ConfigRemediationConfiguration
  { _configRemediationConfigurationAutomatic = Nothing
  , _configRemediationConfigurationConfigRuleName = configRuleNamearg
  , _configRemediationConfigurationExecutionControls = Nothing
  , _configRemediationConfigurationMaximumAutomaticAttempts = Nothing
  , _configRemediationConfigurationParameters = Nothing
  , _configRemediationConfigurationResourceType = Nothing
  , _configRemediationConfigurationRetryAttemptSeconds = Nothing
  , _configRemediationConfigurationTargetId = targetIdarg
  , _configRemediationConfigurationTargetType = targetTypearg
  , _configRemediationConfigurationTargetVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-automatic
crcAutomatic :: Lens' ConfigRemediationConfiguration (Maybe (Val Bool))
crcAutomatic = lens _configRemediationConfigurationAutomatic (\s a -> s { _configRemediationConfigurationAutomatic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-configrulename
crcConfigRuleName :: Lens' ConfigRemediationConfiguration (Val Text)
crcConfigRuleName = lens _configRemediationConfigurationConfigRuleName (\s a -> s { _configRemediationConfigurationConfigRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-executioncontrols
crcExecutionControls :: Lens' ConfigRemediationConfiguration (Maybe ConfigRemediationConfigurationExecutionControls)
crcExecutionControls = lens _configRemediationConfigurationExecutionControls (\s a -> s { _configRemediationConfigurationExecutionControls = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-maximumautomaticattempts
crcMaximumAutomaticAttempts :: Lens' ConfigRemediationConfiguration (Maybe (Val Integer))
crcMaximumAutomaticAttempts = lens _configRemediationConfigurationMaximumAutomaticAttempts (\s a -> s { _configRemediationConfigurationMaximumAutomaticAttempts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-parameters
crcParameters :: Lens' ConfigRemediationConfiguration (Maybe Object)
crcParameters = lens _configRemediationConfigurationParameters (\s a -> s { _configRemediationConfigurationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-resourcetype
crcResourceType :: Lens' ConfigRemediationConfiguration (Maybe (Val Text))
crcResourceType = lens _configRemediationConfigurationResourceType (\s a -> s { _configRemediationConfigurationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-retryattemptseconds
crcRetryAttemptSeconds :: Lens' ConfigRemediationConfiguration (Maybe (Val Integer))
crcRetryAttemptSeconds = lens _configRemediationConfigurationRetryAttemptSeconds (\s a -> s { _configRemediationConfigurationRetryAttemptSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targetid
crcTargetId :: Lens' ConfigRemediationConfiguration (Val Text)
crcTargetId = lens _configRemediationConfigurationTargetId (\s a -> s { _configRemediationConfigurationTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targettype
crcTargetType :: Lens' ConfigRemediationConfiguration (Val Text)
crcTargetType = lens _configRemediationConfigurationTargetType (\s a -> s { _configRemediationConfigurationTargetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targetversion
crcTargetVersion :: Lens' ConfigRemediationConfiguration (Maybe (Val Text))
crcTargetVersion = lens _configRemediationConfigurationTargetVersion (\s a -> s { _configRemediationConfigurationTargetVersion = a })
