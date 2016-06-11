{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | StepAdjustments is a property of the AWS::AutoScaling::ScalingPolicy
-- resource that describes a scaling adjustment based on the difference
-- between the value of the aggregated CloudWatch metric and the breach
-- threshold that you've defined for the alarm. For more information, see
-- StepAdjustment in the Auto Scaling API Reference.

module Stratosphere.ResourceProperties.StepAdjustments where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for StepAdjustments. See 'stepAdjustments' for
-- a more convenient constructor.
data StepAdjustments =
  StepAdjustments
  { _stepAdjustmentsMetricIntervalLowerBound :: Maybe Double'
  , _stepAdjustmentsMetricIntervalUpperBound :: Maybe Double'
  , _stepAdjustmentsScalingAdjustment :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON StepAdjustments where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON StepAdjustments where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'StepAdjustments' containing required fields as
-- arguments.
stepAdjustments
  :: Val Integer' -- ^ 'saScalingAdjustment'
  -> StepAdjustments
stepAdjustments scalingAdjustmentarg =
  StepAdjustments
  { _stepAdjustmentsMetricIntervalLowerBound = Nothing
  , _stepAdjustmentsMetricIntervalUpperBound = Nothing
  , _stepAdjustmentsScalingAdjustment = scalingAdjustmentarg
  }

-- | The lower bound for the difference between the breach threshold and the
-- CloudWatch metric. If the metric value exceeds the breach threshold, the
-- lower bound is inclusive (the metric must be greater than or equal to the
-- threshold plus the lower bound). Otherwise, it is exclusive (the metric
-- must be greater than the threshold plus the lower bound). A null value
-- indicates negative infinity.
saMetricIntervalLowerBound :: Lens' StepAdjustments (Maybe Double')
saMetricIntervalLowerBound = lens _stepAdjustmentsMetricIntervalLowerBound (\s a -> s { _stepAdjustmentsMetricIntervalLowerBound = a })

-- | The upper bound for the difference between the breach threshold and the
-- CloudWatch metric. If the metric value exceeds the breach threshold, the
-- upper bound is exclusive (the metric must be less than the threshold plus
-- the upper bound). Otherwise, it is inclusive (the metric must be less than
-- or equal to the threshold plus the upper bound). A null value indicates
-- positive infinity.
saMetricIntervalUpperBound :: Lens' StepAdjustments (Maybe Double')
saMetricIntervalUpperBound = lens _stepAdjustmentsMetricIntervalUpperBound (\s a -> s { _stepAdjustmentsMetricIntervalUpperBound = a })

-- | The amount by which to scale, based on the value that you specified in
-- the AdjustmentType property. A positive value adds to the current capacity
-- and a negative number subtracts from the current capacity.
saScalingAdjustment :: Lens' StepAdjustments (Val Integer')
saScalingAdjustment = lens _stepAdjustmentsScalingAdjustment (\s a -> s { _stepAdjustmentsScalingAdjustment = a })