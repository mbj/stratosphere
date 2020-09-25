{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html

module Stratosphere.ResourceProperties.CloudFormationStackSetOperationPreferences where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationStackSetOperationPreferences.
-- See 'cloudFormationStackSetOperationPreferences' for a more convenient
-- constructor.
data CloudFormationStackSetOperationPreferences =
  CloudFormationStackSetOperationPreferences
  { _cloudFormationStackSetOperationPreferencesFailureToleranceCount :: Maybe (Val Integer)
  , _cloudFormationStackSetOperationPreferencesFailureTolerancePercentage :: Maybe (Val Integer)
  , _cloudFormationStackSetOperationPreferencesMaxConcurrentCount :: Maybe (Val Integer)
  , _cloudFormationStackSetOperationPreferencesMaxConcurrentPercentage :: Maybe (Val Integer)
  , _cloudFormationStackSetOperationPreferencesRegionOrder :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFormationStackSetOperationPreferences where
  toJSON CloudFormationStackSetOperationPreferences{..} =
    object $
    catMaybes
    [ fmap (("FailureToleranceCount",) . toJSON) _cloudFormationStackSetOperationPreferencesFailureToleranceCount
    , fmap (("FailureTolerancePercentage",) . toJSON) _cloudFormationStackSetOperationPreferencesFailureTolerancePercentage
    , fmap (("MaxConcurrentCount",) . toJSON) _cloudFormationStackSetOperationPreferencesMaxConcurrentCount
    , fmap (("MaxConcurrentPercentage",) . toJSON) _cloudFormationStackSetOperationPreferencesMaxConcurrentPercentage
    , fmap (("RegionOrder",) . toJSON) _cloudFormationStackSetOperationPreferencesRegionOrder
    ]

-- | Constructor for 'CloudFormationStackSetOperationPreferences' containing
-- required fields as arguments.
cloudFormationStackSetOperationPreferences
  :: CloudFormationStackSetOperationPreferences
cloudFormationStackSetOperationPreferences  =
  CloudFormationStackSetOperationPreferences
  { _cloudFormationStackSetOperationPreferencesFailureToleranceCount = Nothing
  , _cloudFormationStackSetOperationPreferencesFailureTolerancePercentage = Nothing
  , _cloudFormationStackSetOperationPreferencesMaxConcurrentCount = Nothing
  , _cloudFormationStackSetOperationPreferencesMaxConcurrentPercentage = Nothing
  , _cloudFormationStackSetOperationPreferencesRegionOrder = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-failuretolerancecount
cfssopFailureToleranceCount :: Lens' CloudFormationStackSetOperationPreferences (Maybe (Val Integer))
cfssopFailureToleranceCount = lens _cloudFormationStackSetOperationPreferencesFailureToleranceCount (\s a -> s { _cloudFormationStackSetOperationPreferencesFailureToleranceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-failuretolerancepercentage
cfssopFailureTolerancePercentage :: Lens' CloudFormationStackSetOperationPreferences (Maybe (Val Integer))
cfssopFailureTolerancePercentage = lens _cloudFormationStackSetOperationPreferencesFailureTolerancePercentage (\s a -> s { _cloudFormationStackSetOperationPreferencesFailureTolerancePercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-maxconcurrentcount
cfssopMaxConcurrentCount :: Lens' CloudFormationStackSetOperationPreferences (Maybe (Val Integer))
cfssopMaxConcurrentCount = lens _cloudFormationStackSetOperationPreferencesMaxConcurrentCount (\s a -> s { _cloudFormationStackSetOperationPreferencesMaxConcurrentCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-maxconcurrentpercentage
cfssopMaxConcurrentPercentage :: Lens' CloudFormationStackSetOperationPreferences (Maybe (Val Integer))
cfssopMaxConcurrentPercentage = lens _cloudFormationStackSetOperationPreferencesMaxConcurrentPercentage (\s a -> s { _cloudFormationStackSetOperationPreferencesMaxConcurrentPercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-regionorder
cfssopRegionOrder :: Lens' CloudFormationStackSetOperationPreferences (Maybe (ValList Text))
cfssopRegionOrder = lens _cloudFormationStackSetOperationPreferencesRegionOrder (\s a -> s { _cloudFormationStackSetOperationPreferencesRegionOrder = a })
