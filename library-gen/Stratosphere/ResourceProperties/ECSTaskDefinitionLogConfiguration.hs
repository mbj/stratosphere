
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionLogConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionSecret

-- | Full data type definition for ECSTaskDefinitionLogConfiguration. See
-- 'ecsTaskDefinitionLogConfiguration' for a more convenient constructor.
data ECSTaskDefinitionLogConfiguration =
  ECSTaskDefinitionLogConfiguration
  { _eCSTaskDefinitionLogConfigurationLogDriver :: Val Text
  , _eCSTaskDefinitionLogConfigurationOptions :: Maybe Object
  , _eCSTaskDefinitionLogConfigurationSecretOptions :: Maybe [ECSTaskDefinitionSecret]
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionLogConfiguration where
  toJSON ECSTaskDefinitionLogConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("LogDriver",) . toJSON) _eCSTaskDefinitionLogConfigurationLogDriver
    , fmap (("Options",) . toJSON) _eCSTaskDefinitionLogConfigurationOptions
    , fmap (("SecretOptions",) . toJSON) _eCSTaskDefinitionLogConfigurationSecretOptions
    ]

-- | Constructor for 'ECSTaskDefinitionLogConfiguration' containing required
-- fields as arguments.
ecsTaskDefinitionLogConfiguration
  :: Val Text -- ^ 'ecstdlcLogDriver'
  -> ECSTaskDefinitionLogConfiguration
ecsTaskDefinitionLogConfiguration logDriverarg =
  ECSTaskDefinitionLogConfiguration
  { _eCSTaskDefinitionLogConfigurationLogDriver = logDriverarg
  , _eCSTaskDefinitionLogConfigurationOptions = Nothing
  , _eCSTaskDefinitionLogConfigurationSecretOptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-logdriver
ecstdlcLogDriver :: Lens' ECSTaskDefinitionLogConfiguration (Val Text)
ecstdlcLogDriver = lens _eCSTaskDefinitionLogConfigurationLogDriver (\s a -> s { _eCSTaskDefinitionLogConfigurationLogDriver = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-options
ecstdlcOptions :: Lens' ECSTaskDefinitionLogConfiguration (Maybe Object)
ecstdlcOptions = lens _eCSTaskDefinitionLogConfigurationOptions (\s a -> s { _eCSTaskDefinitionLogConfigurationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-logconfiguration-secretoptions
ecstdlcSecretOptions :: Lens' ECSTaskDefinitionLogConfiguration (Maybe [ECSTaskDefinitionSecret])
ecstdlcSecretOptions = lens _eCSTaskDefinitionLogConfigurationSecretOptions (\s a -> s { _eCSTaskDefinitionLogConfigurationSecretOptions = a })
