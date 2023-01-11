
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html

module Stratosphere.ResourceProperties.ECSServiceDeploymentController where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ECSServiceDeploymentController. See
-- 'ecsServiceDeploymentController' for a more convenient constructor.
data ECSServiceDeploymentController =
  ECSServiceDeploymentController
  { _eCSServiceDeploymentControllerType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSServiceDeploymentController where
  toJSON ECSServiceDeploymentController{..} =
    object $
    catMaybes
    [ fmap (("Type",) . toJSON) _eCSServiceDeploymentControllerType
    ]

-- | Constructor for 'ECSServiceDeploymentController' containing required
-- fields as arguments.
ecsServiceDeploymentController
  :: ECSServiceDeploymentController
ecsServiceDeploymentController  =
  ECSServiceDeploymentController
  { _eCSServiceDeploymentControllerType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html#cfn-ecs-service-deploymentcontroller-type
ecssdcType :: Lens' ECSServiceDeploymentController (Maybe (Val Text))
ecssdcType = lens _eCSServiceDeploymentControllerType (\s a -> s { _eCSServiceDeploymentControllerType = a })
