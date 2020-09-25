{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html

module Stratosphere.ResourceProperties.AppFlowFlowTask where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowConnectorOperator
import Stratosphere.ResourceProperties.AppFlowFlowTaskPropertiesObject

-- | Full data type definition for AppFlowFlowTask. See 'appFlowFlowTask' for
-- a more convenient constructor.
data AppFlowFlowTask =
  AppFlowFlowTask
  { _appFlowFlowTaskConnectorOperator :: Maybe AppFlowFlowConnectorOperator
  , _appFlowFlowTaskDestinationField :: Maybe (Val Text)
  , _appFlowFlowTaskSourceFields :: ValList Text
  , _appFlowFlowTaskTaskProperties :: Maybe [AppFlowFlowTaskPropertiesObject]
  , _appFlowFlowTaskTaskType :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowTask where
  toJSON AppFlowFlowTask{..} =
    object $
    catMaybes
    [ fmap (("ConnectorOperator",) . toJSON) _appFlowFlowTaskConnectorOperator
    , fmap (("DestinationField",) . toJSON) _appFlowFlowTaskDestinationField
    , (Just . ("SourceFields",) . toJSON) _appFlowFlowTaskSourceFields
    , fmap (("TaskProperties",) . toJSON) _appFlowFlowTaskTaskProperties
    , (Just . ("TaskType",) . toJSON) _appFlowFlowTaskTaskType
    ]

-- | Constructor for 'AppFlowFlowTask' containing required fields as
-- arguments.
appFlowFlowTask
  :: ValList Text -- ^ 'afftSourceFields'
  -> Val Text -- ^ 'afftTaskType'
  -> AppFlowFlowTask
appFlowFlowTask sourceFieldsarg taskTypearg =
  AppFlowFlowTask
  { _appFlowFlowTaskConnectorOperator = Nothing
  , _appFlowFlowTaskDestinationField = Nothing
  , _appFlowFlowTaskSourceFields = sourceFieldsarg
  , _appFlowFlowTaskTaskProperties = Nothing
  , _appFlowFlowTaskTaskType = taskTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-connectoroperator
afftConnectorOperator :: Lens' AppFlowFlowTask (Maybe AppFlowFlowConnectorOperator)
afftConnectorOperator = lens _appFlowFlowTaskConnectorOperator (\s a -> s { _appFlowFlowTaskConnectorOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-destinationfield
afftDestinationField :: Lens' AppFlowFlowTask (Maybe (Val Text))
afftDestinationField = lens _appFlowFlowTaskDestinationField (\s a -> s { _appFlowFlowTaskDestinationField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-sourcefields
afftSourceFields :: Lens' AppFlowFlowTask (ValList Text)
afftSourceFields = lens _appFlowFlowTaskSourceFields (\s a -> s { _appFlowFlowTaskSourceFields = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-taskproperties
afftTaskProperties :: Lens' AppFlowFlowTask (Maybe [AppFlowFlowTaskPropertiesObject])
afftTaskProperties = lens _appFlowFlowTaskTaskProperties (\s a -> s { _appFlowFlowTaskTaskProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-tasktype
afftTaskType :: Lens' AppFlowFlowTask (Val Text)
afftTaskType = lens _appFlowFlowTaskTaskType (\s a -> s { _appFlowFlowTaskTaskType = a })
