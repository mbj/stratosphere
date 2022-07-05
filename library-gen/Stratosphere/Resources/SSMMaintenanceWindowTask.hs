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
  , _sSMMaintenanceWindowTaskServiceRoleArn :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskTargets :: [SSMMaintenanceWindowTaskTarget]
  , _sSMMaintenanceWindowTaskTaskArn :: Val Text
  , _sSMMaintenanceWindowTaskTaskInvocationParameters :: Maybe SSMMaintenanceWindowTaskTaskInvocationParameters
  , _sSMMaintenanceWindowTaskTaskParameters :: Maybe Object
  , _sSMMaintenanceWindowTaskTaskType :: Val Text
  , _sSMMaintenanceWindowTaskWindowId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SSMMaintenanceWindowTask where
  toResourceProperties SSMMaintenanceWindowTask{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::MaintenanceWindowTask"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _sSMMaintenanceWindowTaskDescription
        , fmap (("LoggingInfo",) . toJSON) _sSMMaintenanceWindowTaskLoggingInfo
        , (Just . ("MaxConcurrency",) . toJSON) _sSMMaintenanceWindowTaskMaxConcurrency
        , (Just . ("MaxErrors",) . toJSON) _sSMMaintenanceWindowTaskMaxErrors
        , fmap (("Name",) . toJSON) _sSMMaintenanceWindowTaskName
        , (Just . ("Priority",) . toJSON) _sSMMaintenanceWindowTaskPriority
        , fmap (("ServiceRoleArn",) . toJSON) _sSMMaintenanceWindowTaskServiceRoleArn
        , (Just . ("Targets",) . toJSON) _sSMMaintenanceWindowTaskTargets
        , (Just . ("TaskArn",) . toJSON) _sSMMaintenanceWindowTaskTaskArn
        , fmap (("TaskInvocationParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskInvocationParameters
        , fmap (("TaskParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskParameters
        , (Just . ("TaskType",) . toJSON) _sSMMaintenanceWindowTaskTaskType
        , (Just . ("WindowId",) . toJSON) _sSMMaintenanceWindowTaskWindowId
        ]
    }

-- | Constructor for 'SSMMaintenanceWindowTask' containing required fields as
-- arguments.
ssmMaintenanceWindowTask
  :: Val Text -- ^ 'ssmmwtasMaxConcurrency'
  -> Val Text -- ^ 'ssmmwtasMaxErrors'
  -> Val Integer -- ^ 'ssmmwtasPriority'
  -> [SSMMaintenanceWindowTaskTarget] -- ^ 'ssmmwtasTargets'
  -> Val Text -- ^ 'ssmmwtasTaskArn'
  -> Val Text -- ^ 'ssmmwtasTaskType'
  -> Val Text -- ^ 'ssmmwtasWindowId'
  -> SSMMaintenanceWindowTask
ssmMaintenanceWindowTask maxConcurrencyarg maxErrorsarg priorityarg targetsarg taskArnarg taskTypearg windowIdarg =
  SSMMaintenanceWindowTask
  { _sSMMaintenanceWindowTaskDescription = Nothing
  , _sSMMaintenanceWindowTaskLoggingInfo = Nothing
  , _sSMMaintenanceWindowTaskMaxConcurrency = maxConcurrencyarg
  , _sSMMaintenanceWindowTaskMaxErrors = maxErrorsarg
  , _sSMMaintenanceWindowTaskName = Nothing
  , _sSMMaintenanceWindowTaskPriority = priorityarg
  , _sSMMaintenanceWindowTaskServiceRoleArn = Nothing
  , _sSMMaintenanceWindowTaskTargets = targetsarg
  , _sSMMaintenanceWindowTaskTaskArn = taskArnarg
  , _sSMMaintenanceWindowTaskTaskInvocationParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskType = taskTypearg
  , _sSMMaintenanceWindowTaskWindowId = windowIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-description
ssmmwtasDescription :: Lens' SSMMaintenanceWindowTask (Maybe (Val Text))
ssmmwtasDescription = lens _sSMMaintenanceWindowTaskDescription (\s a -> s { _sSMMaintenanceWindowTaskDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-logginginfo
ssmmwtasLoggingInfo :: Lens' SSMMaintenanceWindowTask (Maybe SSMMaintenanceWindowTaskLoggingInfo)
ssmmwtasLoggingInfo = lens _sSMMaintenanceWindowTaskLoggingInfo (\s a -> s { _sSMMaintenanceWindowTaskLoggingInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-maxconcurrency
ssmmwtasMaxConcurrency :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtasMaxConcurrency = lens _sSMMaintenanceWindowTaskMaxConcurrency (\s a -> s { _sSMMaintenanceWindowTaskMaxConcurrency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-maxerrors
ssmmwtasMaxErrors :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtasMaxErrors = lens _sSMMaintenanceWindowTaskMaxErrors (\s a -> s { _sSMMaintenanceWindowTaskMaxErrors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-name
ssmmwtasName :: Lens' SSMMaintenanceWindowTask (Maybe (Val Text))
ssmmwtasName = lens _sSMMaintenanceWindowTaskName (\s a -> s { _sSMMaintenanceWindowTaskName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-priority
ssmmwtasPriority :: Lens' SSMMaintenanceWindowTask (Val Integer)
ssmmwtasPriority = lens _sSMMaintenanceWindowTaskPriority (\s a -> s { _sSMMaintenanceWindowTaskPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-servicerolearn
ssmmwtasServiceRoleArn :: Lens' SSMMaintenanceWindowTask (Maybe (Val Text))
ssmmwtasServiceRoleArn = lens _sSMMaintenanceWindowTaskServiceRoleArn (\s a -> s { _sSMMaintenanceWindowTaskServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-targets
ssmmwtasTargets :: Lens' SSMMaintenanceWindowTask [SSMMaintenanceWindowTaskTarget]
ssmmwtasTargets = lens _sSMMaintenanceWindowTaskTargets (\s a -> s { _sSMMaintenanceWindowTaskTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskarn
ssmmwtasTaskArn :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtasTaskArn = lens _sSMMaintenanceWindowTaskTaskArn (\s a -> s { _sSMMaintenanceWindowTaskTaskArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters
ssmmwtasTaskInvocationParameters :: Lens' SSMMaintenanceWindowTask (Maybe SSMMaintenanceWindowTaskTaskInvocationParameters)
ssmmwtasTaskInvocationParameters = lens _sSMMaintenanceWindowTaskTaskInvocationParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskInvocationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskparameters
ssmmwtasTaskParameters :: Lens' SSMMaintenanceWindowTask (Maybe Object)
ssmmwtasTaskParameters = lens _sSMMaintenanceWindowTaskTaskParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-tasktype
ssmmwtasTaskType :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtasTaskType = lens _sSMMaintenanceWindowTaskTaskType (\s a -> s { _sSMMaintenanceWindowTaskTaskType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-windowid
ssmmwtasWindowId :: Lens' SSMMaintenanceWindowTask (Val Text)
ssmmwtasWindowId = lens _sSMMaintenanceWindowTaskWindowId (\s a -> s { _sSMMaintenanceWindowTaskWindowId = a })
