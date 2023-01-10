
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionSecret where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionSecret. See
-- 'ecsTaskDefinitionSecret' for a more convenient constructor.
data ECSTaskDefinitionSecret =
  ECSTaskDefinitionSecret
  { _eCSTaskDefinitionSecretName :: Val Text
  , _eCSTaskDefinitionSecretValueFrom :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionSecret where
  toJSON ECSTaskDefinitionSecret{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _eCSTaskDefinitionSecretName
    , (Just . ("ValueFrom",) . toJSON) _eCSTaskDefinitionSecretValueFrom
    ]

-- | Constructor for 'ECSTaskDefinitionSecret' containing required fields as
-- arguments.
ecsTaskDefinitionSecret
  :: Val Text -- ^ 'ecstdsName'
  -> Val Text -- ^ 'ecstdsValueFrom'
  -> ECSTaskDefinitionSecret
ecsTaskDefinitionSecret namearg valueFromarg =
  ECSTaskDefinitionSecret
  { _eCSTaskDefinitionSecretName = namearg
  , _eCSTaskDefinitionSecretValueFrom = valueFromarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html#cfn-ecs-taskdefinition-secret-name
ecstdsName :: Lens' ECSTaskDefinitionSecret (Val Text)
ecstdsName = lens _eCSTaskDefinitionSecretName (\s a -> s { _eCSTaskDefinitionSecretName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html#cfn-ecs-taskdefinition-secret-valuefrom
ecstdsValueFrom :: Lens' ECSTaskDefinitionSecret (Val Text)
ecstdsValueFrom = lens _eCSTaskDefinitionSecretValueFrom (\s a -> s { _eCSTaskDefinitionSecretValueFrom = a })
