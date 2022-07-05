{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html

module Stratosphere.Resources.SageMakerNotebookInstanceLifecycleConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook

-- | Full data type definition for SageMakerNotebookInstanceLifecycleConfig.
-- See 'sageMakerNotebookInstanceLifecycleConfig' for a more convenient
-- constructor.
data SageMakerNotebookInstanceLifecycleConfig =
  SageMakerNotebookInstanceLifecycleConfig
  { _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleConfigName :: Maybe (Val Text)
  , _sageMakerNotebookInstanceLifecycleConfigOnCreate :: Maybe [SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook]
  , _sageMakerNotebookInstanceLifecycleConfigOnStart :: Maybe [SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook]
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerNotebookInstanceLifecycleConfig where
  toResourceProperties SageMakerNotebookInstanceLifecycleConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::NotebookInstanceLifecycleConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("NotebookInstanceLifecycleConfigName",) . toJSON) _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleConfigName
        , fmap (("OnCreate",) . toJSON) _sageMakerNotebookInstanceLifecycleConfigOnCreate
        , fmap (("OnStart",) . toJSON) _sageMakerNotebookInstanceLifecycleConfigOnStart
        ]
    }

-- | Constructor for 'SageMakerNotebookInstanceLifecycleConfig' containing
-- required fields as arguments.
sageMakerNotebookInstanceLifecycleConfig
  :: SageMakerNotebookInstanceLifecycleConfig
sageMakerNotebookInstanceLifecycleConfig  =
  SageMakerNotebookInstanceLifecycleConfig
  { _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleConfigName = Nothing
  , _sageMakerNotebookInstanceLifecycleConfigOnCreate = Nothing
  , _sageMakerNotebookInstanceLifecycleConfigOnStart = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecycleconfigname
smnilcNotebookInstanceLifecycleConfigName :: Lens' SageMakerNotebookInstanceLifecycleConfig (Maybe (Val Text))
smnilcNotebookInstanceLifecycleConfigName = lens _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleConfigName (\s a -> s { _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-oncreate
smnilcOnCreate :: Lens' SageMakerNotebookInstanceLifecycleConfig (Maybe [SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook])
smnilcOnCreate = lens _sageMakerNotebookInstanceLifecycleConfigOnCreate (\s a -> s { _sageMakerNotebookInstanceLifecycleConfigOnCreate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-onstart
smnilcOnStart :: Lens' SageMakerNotebookInstanceLifecycleConfig (Maybe [SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook])
smnilcOnStart = lens _sageMakerNotebookInstanceLifecycleConfigOnStart (\s a -> s { _sageMakerNotebookInstanceLifecycleConfigOnStart = a })
