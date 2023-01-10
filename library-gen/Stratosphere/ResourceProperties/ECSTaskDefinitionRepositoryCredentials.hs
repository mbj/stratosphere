
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionRepositoryCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionRepositoryCredentials. See
-- 'ecsTaskDefinitionRepositoryCredentials' for a more convenient
-- constructor.
data ECSTaskDefinitionRepositoryCredentials =
  ECSTaskDefinitionRepositoryCredentials
  { _eCSTaskDefinitionRepositoryCredentialsCredentialsParameter :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionRepositoryCredentials where
  toJSON ECSTaskDefinitionRepositoryCredentials{..} =
    object $
    catMaybes
    [ fmap (("CredentialsParameter",) . toJSON) _eCSTaskDefinitionRepositoryCredentialsCredentialsParameter
    ]

-- | Constructor for 'ECSTaskDefinitionRepositoryCredentials' containing
-- required fields as arguments.
ecsTaskDefinitionRepositoryCredentials
  :: ECSTaskDefinitionRepositoryCredentials
ecsTaskDefinitionRepositoryCredentials  =
  ECSTaskDefinitionRepositoryCredentials
  { _eCSTaskDefinitionRepositoryCredentialsCredentialsParameter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html#cfn-ecs-taskdefinition-repositorycredentials-credentialsparameter
ecstdrcCredentialsParameter :: Lens' ECSTaskDefinitionRepositoryCredentials (Maybe (Val Text))
ecstdrcCredentialsParameter = lens _eCSTaskDefinitionRepositoryCredentialsCredentialsParameter (\s a -> s { _eCSTaskDefinitionRepositoryCredentialsCredentialsParameter = a })
