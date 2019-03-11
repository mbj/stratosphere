{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html

module Stratosphere.ResourceProperties.GlueTriggerAction where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueTriggerAction. See 'glueTriggerAction'
-- for a more convenient constructor.
data GlueTriggerAction =
  GlueTriggerAction
  { _glueTriggerActionArguments :: Maybe Object
  , _glueTriggerActionJobName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueTriggerAction where
  toJSON GlueTriggerAction{..} =
    object $
    catMaybes
    [ fmap (("Arguments",) . toJSON) _glueTriggerActionArguments
    , fmap (("JobName",) . toJSON) _glueTriggerActionJobName
    ]

-- | Constructor for 'GlueTriggerAction' containing required fields as
-- arguments.
glueTriggerAction
  :: GlueTriggerAction
glueTriggerAction  =
  GlueTriggerAction
  { _glueTriggerActionArguments = Nothing
  , _glueTriggerActionJobName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-arguments
gtaArguments :: Lens' GlueTriggerAction (Maybe Object)
gtaArguments = lens _glueTriggerActionArguments (\s a -> s { _glueTriggerActionArguments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-jobname
gtaJobName :: Lens' GlueTriggerAction (Maybe (Val Text))
gtaJobName = lens _glueTriggerActionJobName (\s a -> s { _glueTriggerActionJobName = a })
