{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html

module Stratosphere.Resources.StepFunctionsActivity where

import Stratosphere.ResourceImports


-- | Full data type definition for StepFunctionsActivity. See
-- 'stepFunctionsActivity' for a more convenient constructor.
data StepFunctionsActivity =
  StepFunctionsActivity
  { _stepFunctionsActivityName :: Val Text
  } deriving (Show, Eq)

instance ToJSON StepFunctionsActivity where
  toJSON StepFunctionsActivity{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _stepFunctionsActivityName
    ]

-- | Constructor for 'StepFunctionsActivity' containing required fields as
-- arguments.
stepFunctionsActivity
  :: Val Text -- ^ 'sfaName'
  -> StepFunctionsActivity
stepFunctionsActivity namearg =
  StepFunctionsActivity
  { _stepFunctionsActivityName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-name
sfaName :: Lens' StepFunctionsActivity (Val Text)
sfaName = lens _stepFunctionsActivityName (\s a -> s { _stepFunctionsActivityName = a })
