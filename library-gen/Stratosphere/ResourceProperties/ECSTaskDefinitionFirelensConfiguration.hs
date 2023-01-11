
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionFirelensConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionFirelensConfiguration. See
-- 'ecsTaskDefinitionFirelensConfiguration' for a more convenient
-- constructor.
data ECSTaskDefinitionFirelensConfiguration =
  ECSTaskDefinitionFirelensConfiguration
  { _eCSTaskDefinitionFirelensConfigurationOptions :: Maybe Object
  , _eCSTaskDefinitionFirelensConfigurationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionFirelensConfiguration where
  toJSON ECSTaskDefinitionFirelensConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Options",) . toJSON) _eCSTaskDefinitionFirelensConfigurationOptions
    , fmap (("Type",) . toJSON) _eCSTaskDefinitionFirelensConfigurationType
    ]

-- | Constructor for 'ECSTaskDefinitionFirelensConfiguration' containing
-- required fields as arguments.
ecsTaskDefinitionFirelensConfiguration
  :: ECSTaskDefinitionFirelensConfiguration
ecsTaskDefinitionFirelensConfiguration  =
  ECSTaskDefinitionFirelensConfiguration
  { _eCSTaskDefinitionFirelensConfigurationOptions = Nothing
  , _eCSTaskDefinitionFirelensConfigurationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html#cfn-ecs-taskdefinition-firelensconfiguration-options
ecstdfcOptions :: Lens' ECSTaskDefinitionFirelensConfiguration (Maybe Object)
ecstdfcOptions = lens _eCSTaskDefinitionFirelensConfigurationOptions (\s a -> s { _eCSTaskDefinitionFirelensConfigurationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html#cfn-ecs-taskdefinition-firelensconfiguration-type
ecstdfcType :: Lens' ECSTaskDefinitionFirelensConfiguration (Maybe (Val Text))
ecstdfcType = lens _eCSTaskDefinitionFirelensConfigurationType (\s a -> s { _eCSTaskDefinitionFirelensConfigurationType = a })
