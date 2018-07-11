{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook.html

module Stratosphere.ResourceProperties.SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook.
-- See
-- 'sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook'
-- for a more convenient constructor.
data SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook =
  SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook
  { _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHookContent :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook where
  toJSON SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook{..} =
    object $
    catMaybes
    [ fmap (("Content",) . toJSON) _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHookContent
    ]

instance FromJSON SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook where
  parseJSON (Object obj) =
    SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook <$>
      (obj .:? "Content")
  parseJSON _ = mempty

-- | Constructor for
-- 'SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook'
-- containing required fields as arguments.
sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook
  :: SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook
sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook  =
  SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook
  { _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHookContent = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook.html#cfn-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook-content
smnilcnilhContent :: Lens' SageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHook (Maybe (Val Text))
smnilcnilhContent = lens _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHookContent (\s a -> s { _sageMakerNotebookInstanceLifecycleConfigNotebookInstanceLifecycleHookContent = a })
