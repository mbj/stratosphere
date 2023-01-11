
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification. See
-- 'autoScalingPlansScalingPlanPredefinedLoadMetricSpecification' for a more
-- convenient constructor.
data AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification =
  AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification
  { _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationPredefinedLoadMetricType :: Val Text
  , _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationResourceLabel :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification where
  toJSON AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification{..} =
    object $
    catMaybes
    [ (Just . ("PredefinedLoadMetricType",) . toJSON) _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationPredefinedLoadMetricType
    , fmap (("ResourceLabel",) . toJSON) _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationResourceLabel
    ]

-- | Constructor for
-- 'AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification' containing
-- required fields as arguments.
autoScalingPlansScalingPlanPredefinedLoadMetricSpecification
  :: Val Text -- ^ 'aspspplmsPredefinedLoadMetricType'
  -> AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification
autoScalingPlansScalingPlanPredefinedLoadMetricSpecification predefinedLoadMetricTypearg =
  AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification
  { _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationPredefinedLoadMetricType = predefinedLoadMetricTypearg
  , _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationResourceLabel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedloadmetricspecification-predefinedloadmetrictype
aspspplmsPredefinedLoadMetricType :: Lens' AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification (Val Text)
aspspplmsPredefinedLoadMetricType = lens _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationPredefinedLoadMetricType (\s a -> s { _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationPredefinedLoadMetricType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedloadmetricspecification-resourcelabel
aspspplmsResourceLabel :: Lens' AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification (Maybe (Val Text))
aspspplmsResourceLabel = lens _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationResourceLabel (\s a -> s { _autoScalingPlansScalingPlanPredefinedLoadMetricSpecificationResourceLabel = a })
