
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-authorizationconfig.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionAuthorizationConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionAuthorizationConfig. See
-- 'ecsTaskDefinitionAuthorizationConfig' for a more convenient constructor.
data ECSTaskDefinitionAuthorizationConfig =
  ECSTaskDefinitionAuthorizationConfig
  { _eCSTaskDefinitionAuthorizationConfigAccessPointId :: Maybe (Val Text)
  , _eCSTaskDefinitionAuthorizationConfigIAM :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionAuthorizationConfig where
  toJSON ECSTaskDefinitionAuthorizationConfig{..} =
    object $
    catMaybes
    [ fmap (("AccessPointId",) . toJSON) _eCSTaskDefinitionAuthorizationConfigAccessPointId
    , fmap (("IAM",) . toJSON) _eCSTaskDefinitionAuthorizationConfigIAM
    ]

-- | Constructor for 'ECSTaskDefinitionAuthorizationConfig' containing
-- required fields as arguments.
ecsTaskDefinitionAuthorizationConfig
  :: ECSTaskDefinitionAuthorizationConfig
ecsTaskDefinitionAuthorizationConfig  =
  ECSTaskDefinitionAuthorizationConfig
  { _eCSTaskDefinitionAuthorizationConfigAccessPointId = Nothing
  , _eCSTaskDefinitionAuthorizationConfigIAM = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-authorizationconfig.html#cfn-ecs-taskdefinition-authorizationconfig-accesspointid
ecstdacAccessPointId :: Lens' ECSTaskDefinitionAuthorizationConfig (Maybe (Val Text))
ecstdacAccessPointId = lens _eCSTaskDefinitionAuthorizationConfigAccessPointId (\s a -> s { _eCSTaskDefinitionAuthorizationConfigAccessPointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-authorizationconfig.html#cfn-ecs-taskdefinition-authorizationconfig-iam
ecstdacIAM :: Lens' ECSTaskDefinitionAuthorizationConfig (Maybe (Val Text))
ecstdacIAM = lens _eCSTaskDefinitionAuthorizationConfigIAM (\s a -> s { _eCSTaskDefinitionAuthorizationConfigIAM = a })
