
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html

module Stratosphere.ResourceProperties.ECSTaskSetServiceRegistry where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskSetServiceRegistry. See
-- 'ecsTaskSetServiceRegistry' for a more convenient constructor.
data ECSTaskSetServiceRegistry =
  ECSTaskSetServiceRegistry
  { _eCSTaskSetServiceRegistryContainerName :: Maybe (Val Text)
  , _eCSTaskSetServiceRegistryContainerPort :: Maybe (Val Integer)
  , _eCSTaskSetServiceRegistryPort :: Maybe (Val Integer)
  , _eCSTaskSetServiceRegistryRegistryArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskSetServiceRegistry where
  toJSON ECSTaskSetServiceRegistry{..} =
    object $
    catMaybes
    [ fmap (("ContainerName",) . toJSON) _eCSTaskSetServiceRegistryContainerName
    , fmap (("ContainerPort",) . toJSON) _eCSTaskSetServiceRegistryContainerPort
    , fmap (("Port",) . toJSON) _eCSTaskSetServiceRegistryPort
    , fmap (("RegistryArn",) . toJSON) _eCSTaskSetServiceRegistryRegistryArn
    ]

-- | Constructor for 'ECSTaskSetServiceRegistry' containing required fields as
-- arguments.
ecsTaskSetServiceRegistry
  :: ECSTaskSetServiceRegistry
ecsTaskSetServiceRegistry  =
  ECSTaskSetServiceRegistry
  { _eCSTaskSetServiceRegistryContainerName = Nothing
  , _eCSTaskSetServiceRegistryContainerPort = Nothing
  , _eCSTaskSetServiceRegistryPort = Nothing
  , _eCSTaskSetServiceRegistryRegistryArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-containername
ecstssrContainerName :: Lens' ECSTaskSetServiceRegistry (Maybe (Val Text))
ecstssrContainerName = lens _eCSTaskSetServiceRegistryContainerName (\s a -> s { _eCSTaskSetServiceRegistryContainerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-containerport
ecstssrContainerPort :: Lens' ECSTaskSetServiceRegistry (Maybe (Val Integer))
ecstssrContainerPort = lens _eCSTaskSetServiceRegistryContainerPort (\s a -> s { _eCSTaskSetServiceRegistryContainerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-port
ecstssrPort :: Lens' ECSTaskSetServiceRegistry (Maybe (Val Integer))
ecstssrPort = lens _eCSTaskSetServiceRegistryPort (\s a -> s { _eCSTaskSetServiceRegistryPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-registryarn
ecstssrRegistryArn :: Lens' ECSTaskSetServiceRegistry (Maybe (Val Text))
ecstssrRegistryArn = lens _eCSTaskSetServiceRegistryRegistryArn (\s a -> s { _eCSTaskSetServiceRegistryRegistryArn = a })
