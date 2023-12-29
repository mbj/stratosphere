module Stratosphere.IoT.JobTemplate.AbortCriteriaProperty (
        AbortCriteriaProperty(..), mkAbortCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AbortCriteriaProperty
  = AbortCriteriaProperty {action :: (Value Prelude.Text),
                           failureType :: (Value Prelude.Text),
                           minNumberOfExecutedThings :: (Value Prelude.Integer),
                           thresholdPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAbortCriteriaProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Double -> AbortCriteriaProperty
mkAbortCriteriaProperty
  action
  failureType
  minNumberOfExecutedThings
  thresholdPercentage
  = AbortCriteriaProperty
      {action = action, failureType = failureType,
       minNumberOfExecutedThings = minNumberOfExecutedThings,
       thresholdPercentage = thresholdPercentage}
instance ToResourceProperties AbortCriteriaProperty where
  toResourceProperties AbortCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.AbortCriteria",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action,
                       "FailureType" JSON..= failureType,
                       "MinNumberOfExecutedThings" JSON..= minNumberOfExecutedThings,
                       "ThresholdPercentage" JSON..= thresholdPercentage]}
instance JSON.ToJSON AbortCriteriaProperty where
  toJSON AbortCriteriaProperty {..}
    = JSON.object
        ["Action" JSON..= action, "FailureType" JSON..= failureType,
         "MinNumberOfExecutedThings" JSON..= minNumberOfExecutedThings,
         "ThresholdPercentage" JSON..= thresholdPercentage]
instance Property "Action" AbortCriteriaProperty where
  type PropertyType "Action" AbortCriteriaProperty = Value Prelude.Text
  set newValue AbortCriteriaProperty {..}
    = AbortCriteriaProperty {action = newValue, ..}
instance Property "FailureType" AbortCriteriaProperty where
  type PropertyType "FailureType" AbortCriteriaProperty = Value Prelude.Text
  set newValue AbortCriteriaProperty {..}
    = AbortCriteriaProperty {failureType = newValue, ..}
instance Property "MinNumberOfExecutedThings" AbortCriteriaProperty where
  type PropertyType "MinNumberOfExecutedThings" AbortCriteriaProperty = Value Prelude.Integer
  set newValue AbortCriteriaProperty {..}
    = AbortCriteriaProperty {minNumberOfExecutedThings = newValue, ..}
instance Property "ThresholdPercentage" AbortCriteriaProperty where
  type PropertyType "ThresholdPercentage" AbortCriteriaProperty = Value Prelude.Double
  set newValue AbortCriteriaProperty {..}
    = AbortCriteriaProperty {thresholdPercentage = newValue, ..}