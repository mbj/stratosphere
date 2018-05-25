{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html

module Stratosphere.ResourceProperties.ECSServiceServiceRegistry where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSServiceServiceRegistry. See
-- 'ecsServiceServiceRegistry' for a more convenient constructor.
data ECSServiceServiceRegistry =
  ECSServiceServiceRegistry
  { _eCSServiceServiceRegistryPort :: Maybe (Val Integer)
  , _eCSServiceServiceRegistryRegistryArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSServiceServiceRegistry where
  toJSON ECSServiceServiceRegistry{..} =
    object $
    catMaybes
    [ fmap (("Port",) . toJSON . fmap Integer') _eCSServiceServiceRegistryPort
    , fmap (("RegistryArn",) . toJSON) _eCSServiceServiceRegistryRegistryArn
    ]

instance FromJSON ECSServiceServiceRegistry where
  parseJSON (Object obj) =
    ECSServiceServiceRegistry <$>
      fmap (fmap (fmap unInteger')) (obj .:? "Port") <*>
      (obj .:? "RegistryArn")
  parseJSON _ = mempty

-- | Constructor for 'ECSServiceServiceRegistry' containing required fields as
-- arguments.
ecsServiceServiceRegistry
  :: ECSServiceServiceRegistry
ecsServiceServiceRegistry  =
  ECSServiceServiceRegistry
  { _eCSServiceServiceRegistryPort = Nothing
  , _eCSServiceServiceRegistryRegistryArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-port
ecsssrPort :: Lens' ECSServiceServiceRegistry (Maybe (Val Integer))
ecsssrPort = lens _eCSServiceServiceRegistryPort (\s a -> s { _eCSServiceServiceRegistryPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-registryarn
ecsssrRegistryArn :: Lens' ECSServiceServiceRegistry (Maybe (Val Text))
ecsssrRegistryArn = lens _eCSServiceServiceRegistryRegistryArn (\s a -> s { _eCSServiceServiceRegistryRegistryArn = a })
