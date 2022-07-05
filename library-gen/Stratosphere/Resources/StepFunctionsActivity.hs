{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html

module Stratosphere.Resources.StepFunctionsActivity where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.StepFunctionsActivityTagsEntry

-- | Full data type definition for StepFunctionsActivity. See
-- 'stepFunctionsActivity' for a more convenient constructor.
data StepFunctionsActivity =
  StepFunctionsActivity
  { _stepFunctionsActivityName :: Val Text
  , _stepFunctionsActivityTags :: Maybe [StepFunctionsActivityTagsEntry]
  } deriving (Show, Eq)

instance ToResourceProperties StepFunctionsActivity where
  toResourceProperties StepFunctionsActivity{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::StepFunctions::Activity"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _stepFunctionsActivityName
        , fmap (("Tags",) . toJSON) _stepFunctionsActivityTags
        ]
    }

-- | Constructor for 'StepFunctionsActivity' containing required fields as
-- arguments.
stepFunctionsActivity
  :: Val Text -- ^ 'sfaName'
  -> StepFunctionsActivity
stepFunctionsActivity namearg =
  StepFunctionsActivity
  { _stepFunctionsActivityName = namearg
  , _stepFunctionsActivityTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-name
sfaName :: Lens' StepFunctionsActivity (Val Text)
sfaName = lens _stepFunctionsActivityName (\s a -> s { _stepFunctionsActivityName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-tags
sfaTags :: Lens' StepFunctionsActivity (Maybe [StepFunctionsActivityTagsEntry])
sfaTags = lens _stepFunctionsActivityTags (\s a -> s { _stepFunctionsActivityTags = a })
