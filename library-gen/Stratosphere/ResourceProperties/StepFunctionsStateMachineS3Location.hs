
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-s3location.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineS3Location where

import Stratosphere.ResourceImports


-- | Full data type definition for StepFunctionsStateMachineS3Location. See
-- 'stepFunctionsStateMachineS3Location' for a more convenient constructor.
data StepFunctionsStateMachineS3Location =
  StepFunctionsStateMachineS3Location
  { _stepFunctionsStateMachineS3LocationBucket :: Val Text
  , _stepFunctionsStateMachineS3LocationKey :: Val Text
  , _stepFunctionsStateMachineS3LocationVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineS3Location where
  toJSON StepFunctionsStateMachineS3Location{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _stepFunctionsStateMachineS3LocationBucket
    , (Just . ("Key",) . toJSON) _stepFunctionsStateMachineS3LocationKey
    , fmap (("Version",) . toJSON) _stepFunctionsStateMachineS3LocationVersion
    ]

-- | Constructor for 'StepFunctionsStateMachineS3Location' containing required
-- fields as arguments.
stepFunctionsStateMachineS3Location
  :: Val Text -- ^ 'sfsmslBucket'
  -> Val Text -- ^ 'sfsmslKey'
  -> StepFunctionsStateMachineS3Location
stepFunctionsStateMachineS3Location bucketarg keyarg =
  StepFunctionsStateMachineS3Location
  { _stepFunctionsStateMachineS3LocationBucket = bucketarg
  , _stepFunctionsStateMachineS3LocationKey = keyarg
  , _stepFunctionsStateMachineS3LocationVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-s3location.html#cfn-stepfunctions-statemachine-s3location-bucket
sfsmslBucket :: Lens' StepFunctionsStateMachineS3Location (Val Text)
sfsmslBucket = lens _stepFunctionsStateMachineS3LocationBucket (\s a -> s { _stepFunctionsStateMachineS3LocationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-s3location.html#cfn-stepfunctions-statemachine-s3location-key
sfsmslKey :: Lens' StepFunctionsStateMachineS3Location (Val Text)
sfsmslKey = lens _stepFunctionsStateMachineS3LocationKey (\s a -> s { _stepFunctionsStateMachineS3LocationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-s3location.html#cfn-stepfunctions-statemachine-s3location-version
sfsmslVersion :: Lens' StepFunctionsStateMachineS3Location (Maybe (Val Text))
sfsmslVersion = lens _stepFunctionsStateMachineS3LocationVersion (\s a -> s { _stepFunctionsStateMachineS3LocationVersion = a })
