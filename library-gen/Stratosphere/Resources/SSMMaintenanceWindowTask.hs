{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html

module Stratosphere.Resources.SSMMaintenanceWindowTask where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskLoggingInfo
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskTarget
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskTaskInvocationParameters

-- | Full data type definition for SSMMaintenanceWindowTask. See
-- 'ssmMaintenanceWindowTask' for a more convenient constructor.
data SSMMaintenanceWindowTask =
  SSMMaintenanceWindowTask
  { _sSMMaintenanceWindowTaskDescription :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskLoggingInfo :: Maybe SSMMaintenanceWindowTaskLoggingInfo
  , _sSMMaintenanceWindowTaskMaxConcurrency :: Val Text
  , _sSMMaintenanceWindowTaskMaxErrors :: Val Text
  , _sSMMaintenanceWindowTaskName :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskPriority :: Val Integer
  , _sSMMaintenanceWindowTaskServiceRoleArn :: Val Text
  , _sSMMaintenanceWindowTaskTargets :: [SSMMaintenanceWindowTaskTarget]
  , _sSMMaintenanceWindowTaskTaskArn :: Val Text
  , _sSMMaintenanceWindowTaskTaskInvocationParameters :: Maybe SSMMaintenanceWindowTaskTaskInvocationParameters
  , _sSMMaintenanceWindowTaskTaskParameters :: Maybe Object
  , _sSMMaintenanceWindowTaskTaskType :: Val Text
  , _sSMMaintenanceWindowTaskWindowId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SSMMaintenanceWindowTask where
  toResourceProperties SSMMaintenanceWindowTask{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::MaintenanceWindowTask"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _sSMMaintenanceWindowTaskDescription
        , fmap (("LoggingInfo",) . toJSON) _sSMMaintenanceWindowTaskLoggingInfo
        , (Just . ("MaxConcurrency",) . toJSON) _sSMMaintenanceWindowTaskMaxConcurrency
        , (Just . ("MaxErrors",) . toJSON) _sSMMaintenanceWindowTaskMaxErrors
        , fmap (("Name",) . toJSON) _sSMMaintenanceWindowTaskName
        , (Just . ("Priority",) . toJSON . fmap Integer') _sSMMaintenanceWindowTaskPriority
        , (Just . ("ServiceRoleArn",) . toJSON) _sSMMaintenanceWindowTaskServiceRoleArn
        , (Just . ("Targets",) . toJSON) _sSMMaintenanceWindowTaskTargets
        , (Just . ("TaskArn",) . toJSON) _sSMMaintenanceWindowTaskTaskArn
        , fmap (("TaskInvocationParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskInvocationParameters
        , fmap (("TaskParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskParameters
        , (Just . ("TaskType",) . toJSON) _sSMMaintenanceWindowTaskTaskType
        , fmap (("WindowId",) . toJSON) _sSMMaintenanceWindowTaskWindowId
        ]
    }

-- | Constructor for 'SSMMaintenanceWindowTask' containing required fields as
-- arguments.
ssmMaintenanceWindowTask
  :: Val Text -- ^ 'ssmmwtMaxConcurrency'
  -> Val Text -- ^ 'ssmmwtMaxErrors'
  -> Val Integer -- ^ 'ssmmwtPriority'
  -> Val Text -- ^ 'ssmmwtServiceRoleArn'
  -> [SSMMaintenanceWindowTaskTarget] -- ^ 'ssmmwtTargets'
  -> Val Text -- ^ 'ssmmwtTaskArn'
  -> Val Text -- ^ 'ssmmwtTaskType'
  -> SSMMaintenanceWindowTask
ssmMaintenanceWindowTask maxConcurrencyarg maxErrorsarg priorityarg serviceRoleArnarg targetsarg taskArnarg taskTypearg =
  SSMMaintenanceWindowTask
  { _sSMMaintenanceWindowTaskDescription = Nothing
  , _sSMMaintenanceWindowTaskLoggingInfo = Nothing
  , _sSMMaintenanceWindowTaskMaxConcurrency = maxConcurrencyarg
  , _sSMMaintenanceWindowTaskMaxErrors = maxErrorsarg
  , _sSMMaintenanceWindowTaskName = Nothing
  , _sSMMaintenanceWindowTaskPriority = priorityarg
  , _sSMMaintenanceWindowTaskServiceRoleArn = serviceRoleArnarg
  , _sSMMaintenanceWindowTaskTargets = targetsarg
  , _sSMMaintenanceWindowTaskTaskArn = taskArnarg
  , _sSMMaintenanceWindowTaskTaskInvocationParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskType = taskTypearg
  , _sSMMaintenanceWindowTaskWindowId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-description
ssmmwtDescription :: Lens' SSMMaintenanceWindowTask (Maybe (Val Text))
ssmmwtDescription = lens _sSMMaintenanceWindowTaskDescription (\s a -> s { _sSMMaintenanceWindowTaskDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-logginginfo
ssmmwtLoggingInfo :: Lens' SSMMaintenanceWindowTask (Maybe SSMMaintenanceWindowTaskLoggingInfo)
ssmmwtLoggingInfo = lens _sSMMaintenanceWindowTaskLoggingInfo (\s a -> s { _sSMMaintenanceWindowTaskLoggingInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-maxconcurrency
ssmmwtMaxConcurrency :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtMaxConcurrency = lens _sSMMaintenanceWindowTaskMaxConcurrency (\s a -> s { _sSMMaintenanceWindowTaskMaxConcurrency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-maxerrors
ssmmwtMaxErrors :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtMaxErrors = lens _sSMMaintenanceWindowTaskMaxErrors (\s a -> s { _sSMMaintenanceWindowTaskMaxErrors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-name
ssmmwtName :: Lens' SSMMaintenanceWindowTask (Maybe (Val Text))
ssmmwtName = lens _sSMMaintenanceWindowTaskName (\s a -> s { _sSMMaintenanceWindowTaskName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-priority
ssmmwtPriority :: Lens' SSMMaintenanceWindowTask (Val Integer)
ssmmwtPriority = lens _sSMMaintenanceWindowTaskPriority (\s a -> s { _sSMMaintenanceWindowTaskPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-servicerolearn
ssmmwtServiceRoleArn :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtServiceRoleArn = lens _sSMMaintenanceWindowTaskServiceRoleArn (\s a -> s { _sSMMaintenanceWindowTaskServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-targets
ssmmwtTargets :: Lens' SSMMaintenanceWindowTask [SSMMaintenanceWindowTaskTarget]
ssmmwtTargets = lens _sSMMaintenanceWindowTaskTargets (\s a -> s { _sSMMaintenanceWindowTaskTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskarn
ssmmwtTaskArn :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtTaskArn = lens _sSMMaintenanceWindowTaskTaskArn (\s a -> s { _sSMMaintenanceWindowTaskTaskArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters
ssmmwtTaskInvocationParameters :: Lens' SSMMaintenanceWindowTask (Maybe SSMMaintenanceWindowTaskTaskInvocationParameters)
ssmmwtTaskInvocationParameters = lens _sSMMaintenanceWindowTaskTaskInvocationParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskInvocationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskparameters
ssmmwtTaskParameters :: Lens' SSMMaintenanceWindowTask (Maybe Object)
ssmmwtTaskParameters = lens _sSMMaintenanceWindowTaskTaskParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-tasktype
ssmmwtTaskType :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtTaskType = lens _sSMMaintenanceWindowTaskTaskType (\s a -> s { _sSMMaintenanceWindowTaskTaskType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-windowid
ssmmwtWindowId :: Lens' SSMMaintenanceWindowTask (Maybe (Val Text))
ssmmwtWindowId = lens _sSMMaintenanceWindowTaskWindowId (\s a -> s { _sSMMaintenanceWindowTaskWindowId = a })
