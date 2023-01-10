
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHealthCheck where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionHealthCheck. See
-- 'ecsTaskDefinitionHealthCheck' for a more convenient constructor.
data ECSTaskDefinitionHealthCheck =
  ECSTaskDefinitionHealthCheck
  { _eCSTaskDefinitionHealthCheckCommand :: Maybe (ValList Text)
  , _eCSTaskDefinitionHealthCheckInterval :: Maybe (Val Integer)
  , _eCSTaskDefinitionHealthCheckRetries :: Maybe (Val Integer)
  , _eCSTaskDefinitionHealthCheckStartPeriod :: Maybe (Val Integer)
  , _eCSTaskDefinitionHealthCheckTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionHealthCheck where
  toJSON ECSTaskDefinitionHealthCheck{..} =
    object $
    catMaybes
    [ fmap (("Command",) . toJSON) _eCSTaskDefinitionHealthCheckCommand
    , fmap (("Interval",) . toJSON) _eCSTaskDefinitionHealthCheckInterval
    , fmap (("Retries",) . toJSON) _eCSTaskDefinitionHealthCheckRetries
    , fmap (("StartPeriod",) . toJSON) _eCSTaskDefinitionHealthCheckStartPeriod
    , fmap (("Timeout",) . toJSON) _eCSTaskDefinitionHealthCheckTimeout
    ]

-- | Constructor for 'ECSTaskDefinitionHealthCheck' containing required fields
-- as arguments.
ecsTaskDefinitionHealthCheck
  :: ECSTaskDefinitionHealthCheck
ecsTaskDefinitionHealthCheck  =
  ECSTaskDefinitionHealthCheck
  { _eCSTaskDefinitionHealthCheckCommand = Nothing
  , _eCSTaskDefinitionHealthCheckInterval = Nothing
  , _eCSTaskDefinitionHealthCheckRetries = Nothing
  , _eCSTaskDefinitionHealthCheckStartPeriod = Nothing
  , _eCSTaskDefinitionHealthCheckTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-command
ecstdhcCommand :: Lens' ECSTaskDefinitionHealthCheck (Maybe (ValList Text))
ecstdhcCommand = lens _eCSTaskDefinitionHealthCheckCommand (\s a -> s { _eCSTaskDefinitionHealthCheckCommand = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-interval
ecstdhcInterval :: Lens' ECSTaskDefinitionHealthCheck (Maybe (Val Integer))
ecstdhcInterval = lens _eCSTaskDefinitionHealthCheckInterval (\s a -> s { _eCSTaskDefinitionHealthCheckInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-retries
ecstdhcRetries :: Lens' ECSTaskDefinitionHealthCheck (Maybe (Val Integer))
ecstdhcRetries = lens _eCSTaskDefinitionHealthCheckRetries (\s a -> s { _eCSTaskDefinitionHealthCheckRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-startperiod
ecstdhcStartPeriod :: Lens' ECSTaskDefinitionHealthCheck (Maybe (Val Integer))
ecstdhcStartPeriod = lens _eCSTaskDefinitionHealthCheckStartPeriod (\s a -> s { _eCSTaskDefinitionHealthCheckStartPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-timeout
ecstdhcTimeout :: Lens' ECSTaskDefinitionHealthCheck (Maybe (Val Integer))
ecstdhcTimeout = lens _eCSTaskDefinitionHealthCheckTimeout (\s a -> s { _eCSTaskDefinitionHealthCheckTimeout = a })
