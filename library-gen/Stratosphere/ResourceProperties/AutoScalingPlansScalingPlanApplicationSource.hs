{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanApplicationSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanTagFilter

-- | Full data type definition for
-- AutoScalingPlansScalingPlanApplicationSource. See
-- 'autoScalingPlansScalingPlanApplicationSource' for a more convenient
-- constructor.
data AutoScalingPlansScalingPlanApplicationSource =
  AutoScalingPlansScalingPlanApplicationSource
  { _autoScalingPlansScalingPlanApplicationSourceCloudFormationStackARN :: Maybe (Val Text)
  , _autoScalingPlansScalingPlanApplicationSourceTagFilters :: Maybe [AutoScalingPlansScalingPlanTagFilter]
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanApplicationSource where
  toJSON AutoScalingPlansScalingPlanApplicationSource{..} =
    object $
    catMaybes
    [ fmap (("CloudFormationStackARN",) . toJSON) _autoScalingPlansScalingPlanApplicationSourceCloudFormationStackARN
    , fmap (("TagFilters",) . toJSON) _autoScalingPlansScalingPlanApplicationSourceTagFilters
    ]

-- | Constructor for 'AutoScalingPlansScalingPlanApplicationSource' containing
-- required fields as arguments.
autoScalingPlansScalingPlanApplicationSource
  :: AutoScalingPlansScalingPlanApplicationSource
autoScalingPlansScalingPlanApplicationSource  =
  AutoScalingPlansScalingPlanApplicationSource
  { _autoScalingPlansScalingPlanApplicationSourceCloudFormationStackARN = Nothing
  , _autoScalingPlansScalingPlanApplicationSourceTagFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html#cfn-autoscalingplans-scalingplan-applicationsource-cloudformationstackarn
aspspasCloudFormationStackARN :: Lens' AutoScalingPlansScalingPlanApplicationSource (Maybe (Val Text))
aspspasCloudFormationStackARN = lens _autoScalingPlansScalingPlanApplicationSourceCloudFormationStackARN (\s a -> s { _autoScalingPlansScalingPlanApplicationSourceCloudFormationStackARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html#cfn-autoscalingplans-scalingplan-applicationsource-tagfilters
aspspasTagFilters :: Lens' AutoScalingPlansScalingPlanApplicationSource (Maybe [AutoScalingPlansScalingPlanTagFilter])
aspspasTagFilters = lens _autoScalingPlansScalingPlanApplicationSourceTagFilters (\s a -> s { _autoScalingPlansScalingPlanApplicationSourceTagFilters = a })
