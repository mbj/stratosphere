
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionProxyConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionKeyValuePair

-- | Full data type definition for ECSTaskDefinitionProxyConfiguration. See
-- 'ecsTaskDefinitionProxyConfiguration' for a more convenient constructor.
data ECSTaskDefinitionProxyConfiguration =
  ECSTaskDefinitionProxyConfiguration
  { _eCSTaskDefinitionProxyConfigurationContainerName :: Val Text
  , _eCSTaskDefinitionProxyConfigurationProxyConfigurationProperties :: Maybe [ECSTaskDefinitionKeyValuePair]
  , _eCSTaskDefinitionProxyConfigurationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionProxyConfiguration where
  toJSON ECSTaskDefinitionProxyConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ContainerName",) . toJSON) _eCSTaskDefinitionProxyConfigurationContainerName
    , fmap (("ProxyConfigurationProperties",) . toJSON) _eCSTaskDefinitionProxyConfigurationProxyConfigurationProperties
    , fmap (("Type",) . toJSON) _eCSTaskDefinitionProxyConfigurationType
    ]

-- | Constructor for 'ECSTaskDefinitionProxyConfiguration' containing required
-- fields as arguments.
ecsTaskDefinitionProxyConfiguration
  :: Val Text -- ^ 'ecstdpcContainerName'
  -> ECSTaskDefinitionProxyConfiguration
ecsTaskDefinitionProxyConfiguration containerNamearg =
  ECSTaskDefinitionProxyConfiguration
  { _eCSTaskDefinitionProxyConfigurationContainerName = containerNamearg
  , _eCSTaskDefinitionProxyConfigurationProxyConfigurationProperties = Nothing
  , _eCSTaskDefinitionProxyConfigurationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-containername
ecstdpcContainerName :: Lens' ECSTaskDefinitionProxyConfiguration (Val Text)
ecstdpcContainerName = lens _eCSTaskDefinitionProxyConfigurationContainerName (\s a -> s { _eCSTaskDefinitionProxyConfigurationContainerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-proxyconfigurationproperties
ecstdpcProxyConfigurationProperties :: Lens' ECSTaskDefinitionProxyConfiguration (Maybe [ECSTaskDefinitionKeyValuePair])
ecstdpcProxyConfigurationProperties = lens _eCSTaskDefinitionProxyConfigurationProxyConfigurationProperties (\s a -> s { _eCSTaskDefinitionProxyConfigurationProxyConfigurationProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-type
ecstdpcType :: Lens' ECSTaskDefinitionProxyConfiguration (Maybe (Val Text))
ecstdpcType = lens _eCSTaskDefinitionProxyConfigurationType (\s a -> s { _eCSTaskDefinitionProxyConfigurationType = a })
