
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanTagFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingPlansScalingPlanTagFilter. See
-- 'autoScalingPlansScalingPlanTagFilter' for a more convenient constructor.
data AutoScalingPlansScalingPlanTagFilter =
  AutoScalingPlansScalingPlanTagFilter
  { _autoScalingPlansScalingPlanTagFilterKey :: Val Text
  , _autoScalingPlansScalingPlanTagFilterValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanTagFilter where
  toJSON AutoScalingPlansScalingPlanTagFilter{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _autoScalingPlansScalingPlanTagFilterKey
    , fmap (("Values",) . toJSON) _autoScalingPlansScalingPlanTagFilterValues
    ]

-- | Constructor for 'AutoScalingPlansScalingPlanTagFilter' containing
-- required fields as arguments.
autoScalingPlansScalingPlanTagFilter
  :: Val Text -- ^ 'aspsptfKey'
  -> AutoScalingPlansScalingPlanTagFilter
autoScalingPlansScalingPlanTagFilter keyarg =
  AutoScalingPlansScalingPlanTagFilter
  { _autoScalingPlansScalingPlanTagFilterKey = keyarg
  , _autoScalingPlansScalingPlanTagFilterValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-key
aspsptfKey :: Lens' AutoScalingPlansScalingPlanTagFilter (Val Text)
aspsptfKey = lens _autoScalingPlansScalingPlanTagFilterKey (\s a -> s { _autoScalingPlansScalingPlanTagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-values
aspsptfValues :: Lens' AutoScalingPlansScalingPlanTagFilter (Maybe (ValList Text))
aspsptfValues = lens _autoScalingPlansScalingPlanTagFilterValues (\s a -> s { _autoScalingPlansScalingPlanTagFilterValues = a })
