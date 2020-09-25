{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html

module Stratosphere.Resources.AppFlowFlow where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowDestinationFlowConfig
import Stratosphere.ResourceProperties.AppFlowFlowSourceFlowConfig
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.AppFlowFlowTask
import Stratosphere.ResourceProperties.AppFlowFlowTriggerConfig

-- | Full data type definition for AppFlowFlow. See 'appFlowFlow' for a more
-- convenient constructor.
data AppFlowFlow =
  AppFlowFlow
  { _appFlowFlowDescription :: Maybe (Val Text)
  , _appFlowFlowDestinationFlowConfigList :: [AppFlowFlowDestinationFlowConfig]
  , _appFlowFlowFlowName :: Val Text
  , _appFlowFlowKMSArn :: Maybe (Val Text)
  , _appFlowFlowSourceFlowConfig :: AppFlowFlowSourceFlowConfig
  , _appFlowFlowTags :: Maybe [Tag]
  , _appFlowFlowTasks :: [AppFlowFlowTask]
  , _appFlowFlowTriggerConfig :: AppFlowFlowTriggerConfig
  } deriving (Show, Eq)

instance ToResourceProperties AppFlowFlow where
  toResourceProperties AppFlowFlow{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppFlow::Flow"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _appFlowFlowDescription
        , (Just . ("DestinationFlowConfigList",) . toJSON) _appFlowFlowDestinationFlowConfigList
        , (Just . ("FlowName",) . toJSON) _appFlowFlowFlowName
        , fmap (("KMSArn",) . toJSON) _appFlowFlowKMSArn
        , (Just . ("SourceFlowConfig",) . toJSON) _appFlowFlowSourceFlowConfig
        , fmap (("Tags",) . toJSON) _appFlowFlowTags
        , (Just . ("Tasks",) . toJSON) _appFlowFlowTasks
        , (Just . ("TriggerConfig",) . toJSON) _appFlowFlowTriggerConfig
        ]
    }

-- | Constructor for 'AppFlowFlow' containing required fields as arguments.
appFlowFlow
  :: [AppFlowFlowDestinationFlowConfig] -- ^ 'affDestinationFlowConfigList'
  -> Val Text -- ^ 'affFlowName'
  -> AppFlowFlowSourceFlowConfig -- ^ 'affSourceFlowConfig'
  -> [AppFlowFlowTask] -- ^ 'affTasks'
  -> AppFlowFlowTriggerConfig -- ^ 'affTriggerConfig'
  -> AppFlowFlow
appFlowFlow destinationFlowConfigListarg flowNamearg sourceFlowConfigarg tasksarg triggerConfigarg =
  AppFlowFlow
  { _appFlowFlowDescription = Nothing
  , _appFlowFlowDestinationFlowConfigList = destinationFlowConfigListarg
  , _appFlowFlowFlowName = flowNamearg
  , _appFlowFlowKMSArn = Nothing
  , _appFlowFlowSourceFlowConfig = sourceFlowConfigarg
  , _appFlowFlowTags = Nothing
  , _appFlowFlowTasks = tasksarg
  , _appFlowFlowTriggerConfig = triggerConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-description
affDescription :: Lens' AppFlowFlow (Maybe (Val Text))
affDescription = lens _appFlowFlowDescription (\s a -> s { _appFlowFlowDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-destinationflowconfiglist
affDestinationFlowConfigList :: Lens' AppFlowFlow [AppFlowFlowDestinationFlowConfig]
affDestinationFlowConfigList = lens _appFlowFlowDestinationFlowConfigList (\s a -> s { _appFlowFlowDestinationFlowConfigList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-flowname
affFlowName :: Lens' AppFlowFlow (Val Text)
affFlowName = lens _appFlowFlowFlowName (\s a -> s { _appFlowFlowFlowName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-kmsarn
affKMSArn :: Lens' AppFlowFlow (Maybe (Val Text))
affKMSArn = lens _appFlowFlowKMSArn (\s a -> s { _appFlowFlowKMSArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-sourceflowconfig
affSourceFlowConfig :: Lens' AppFlowFlow AppFlowFlowSourceFlowConfig
affSourceFlowConfig = lens _appFlowFlowSourceFlowConfig (\s a -> s { _appFlowFlowSourceFlowConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-tags
affTags :: Lens' AppFlowFlow (Maybe [Tag])
affTags = lens _appFlowFlowTags (\s a -> s { _appFlowFlowTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-tasks
affTasks :: Lens' AppFlowFlow [AppFlowFlowTask]
affTasks = lens _appFlowFlowTasks (\s a -> s { _appFlowFlowTasks = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-triggerconfig
affTriggerConfig :: Lens' AppFlowFlow AppFlowFlowTriggerConfig
affTriggerConfig = lens _appFlowFlowTriggerConfig (\s a -> s { _appFlowFlowTriggerConfig = a })
