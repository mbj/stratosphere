{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification. See
-- 'applicationAutoScalingScalingPolicyPredefinedMetricSpecification' for a
-- more convenient constructor.
data ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification =
  ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification
  { _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationPredefinedMetricType :: Val Text
  , _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationResourceLabel :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification where
  toJSON ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification{..} =
    object $
    catMaybes
    [ (Just . ("PredefinedMetricType",) . toJSON) _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationPredefinedMetricType
    , fmap (("ResourceLabel",) . toJSON) _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationResourceLabel
    ]

-- | Constructor for
-- 'ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification'
-- containing required fields as arguments.
applicationAutoScalingScalingPolicyPredefinedMetricSpecification
  :: Val Text -- ^ 'aassppmsPredefinedMetricType'
  -> ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification
applicationAutoScalingScalingPolicyPredefinedMetricSpecification predefinedMetricTypearg =
  ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification
  { _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationPredefinedMetricType = predefinedMetricTypearg
  , _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationResourceLabel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
aassppmsPredefinedMetricType :: Lens' ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification (Val Text)
aassppmsPredefinedMetricType = lens _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationPredefinedMetricType (\s a -> s { _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationPredefinedMetricType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
aassppmsResourceLabel :: Lens' ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification (Maybe (Val Text))
aassppmsResourceLabel = lens _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationResourceLabel (\s a -> s { _applicationAutoScalingScalingPolicyPredefinedMetricSpecificationResourceLabel = a })
