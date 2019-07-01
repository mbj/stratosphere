{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html

module Stratosphere.Resources.ConfigRemediationConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ConfigRemediationConfiguration. See
-- 'configRemediationConfiguration' for a more convenient constructor.
data ConfigRemediationConfiguration =
  ConfigRemediationConfiguration
  { _configRemediationConfigurationConfigRuleName :: Val Text
  , _configRemediationConfigurationParameters :: Maybe Object
  , _configRemediationConfigurationResourceType :: Maybe (Val Text)
  , _configRemediationConfigurationTargetId :: Val Text
  , _configRemediationConfigurationTargetType :: Val Text
  , _configRemediationConfigurationTargetVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ConfigRemediationConfiguration where
  toResourceProperties ConfigRemediationConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::RemediationConfiguration"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ConfigRuleName",) . toJSON) _configRemediationConfigurationConfigRuleName
        , fmap (("Parameters",) . toJSON) _configRemediationConfigurationParameters
        , fmap (("ResourceType",) . toJSON) _configRemediationConfigurationResourceType
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
  { _configRemediationConfigurationConfigRuleName = configRuleNamearg
  , _configRemediationConfigurationParameters = Nothing
  , _configRemediationConfigurationResourceType = Nothing
  , _configRemediationConfigurationTargetId = targetIdarg
  , _configRemediationConfigurationTargetType = targetTypearg
  , _configRemediationConfigurationTargetVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-configrulename
crcConfigRuleName :: Lens' ConfigRemediationConfiguration (Val Text)
crcConfigRuleName = lens _configRemediationConfigurationConfigRuleName (\s a -> s { _configRemediationConfigurationConfigRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-parameters
crcParameters :: Lens' ConfigRemediationConfiguration (Maybe Object)
crcParameters = lens _configRemediationConfigurationParameters (\s a -> s { _configRemediationConfigurationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-resourcetype
crcResourceType :: Lens' ConfigRemediationConfiguration (Maybe (Val Text))
crcResourceType = lens _configRemediationConfigurationResourceType (\s a -> s { _configRemediationConfigurationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targetid
crcTargetId :: Lens' ConfigRemediationConfiguration (Val Text)
crcTargetId = lens _configRemediationConfigurationTargetId (\s a -> s { _configRemediationConfigurationTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targettype
crcTargetType :: Lens' ConfigRemediationConfiguration (Val Text)
crcTargetType = lens _configRemediationConfigurationTargetType (\s a -> s { _configRemediationConfigurationTargetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targetversion
crcTargetVersion :: Lens' ConfigRemediationConfiguration (Maybe (Val Text))
crcTargetVersion = lens _configRemediationConfigurationTargetVersion (\s a -> s { _configRemediationConfigurationTargetVersion = a })
