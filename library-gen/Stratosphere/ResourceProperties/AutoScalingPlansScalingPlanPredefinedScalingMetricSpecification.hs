{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification. See
-- 'autoScalingPlansScalingPlanPredefinedScalingMetricSpecification' for a
-- more convenient constructor.
data AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification =
  AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification
  { _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationPredefinedScalingMetricType :: Val Text
  , _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationResourceLabel :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification where
  toJSON AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification{..} =
    object $
    catMaybes
    [ (Just . ("PredefinedScalingMetricType",) . toJSON) _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationPredefinedScalingMetricType
    , fmap (("ResourceLabel",) . toJSON) _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationResourceLabel
    ]

-- | Constructor for
-- 'AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification'
-- containing required fields as arguments.
autoScalingPlansScalingPlanPredefinedScalingMetricSpecification
  :: Val Text -- ^ 'aspsppsmsPredefinedScalingMetricType'
  -> AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification
autoScalingPlansScalingPlanPredefinedScalingMetricSpecification predefinedScalingMetricTypearg =
  AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification
  { _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationPredefinedScalingMetricType = predefinedScalingMetricTypearg
  , _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationResourceLabel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-predefinedscalingmetrictype
aspsppsmsPredefinedScalingMetricType :: Lens' AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification (Val Text)
aspsppsmsPredefinedScalingMetricType = lens _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationPredefinedScalingMetricType (\s a -> s { _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationPredefinedScalingMetricType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-resourcelabel
aspsppsmsResourceLabel :: Lens' AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification (Maybe (Val Text))
aspsppsmsResourceLabel = lens _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationResourceLabel (\s a -> s { _autoScalingPlansScalingPlanPredefinedScalingMetricSpecificationResourceLabel = a })
