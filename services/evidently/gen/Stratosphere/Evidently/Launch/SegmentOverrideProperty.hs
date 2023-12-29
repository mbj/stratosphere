module Stratosphere.Evidently.Launch.SegmentOverrideProperty (
        module Exports, SegmentOverrideProperty(..),
        mkSegmentOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Launch.GroupToWeightProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SegmentOverrideProperty
  = SegmentOverrideProperty {evaluationOrder :: (Value Prelude.Integer),
                             segment :: (Value Prelude.Text),
                             weights :: [GroupToWeightProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentOverrideProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> [GroupToWeightProperty] -> SegmentOverrideProperty
mkSegmentOverrideProperty evaluationOrder segment weights
  = SegmentOverrideProperty
      {evaluationOrder = evaluationOrder, segment = segment,
       weights = weights}
instance ToResourceProperties SegmentOverrideProperty where
  toResourceProperties SegmentOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.SegmentOverride",
         supportsTags = Prelude.False,
         properties = ["EvaluationOrder" JSON..= evaluationOrder,
                       "Segment" JSON..= segment, "Weights" JSON..= weights]}
instance JSON.ToJSON SegmentOverrideProperty where
  toJSON SegmentOverrideProperty {..}
    = JSON.object
        ["EvaluationOrder" JSON..= evaluationOrder,
         "Segment" JSON..= segment, "Weights" JSON..= weights]
instance Property "EvaluationOrder" SegmentOverrideProperty where
  type PropertyType "EvaluationOrder" SegmentOverrideProperty = Value Prelude.Integer
  set newValue SegmentOverrideProperty {..}
    = SegmentOverrideProperty {evaluationOrder = newValue, ..}
instance Property "Segment" SegmentOverrideProperty where
  type PropertyType "Segment" SegmentOverrideProperty = Value Prelude.Text
  set newValue SegmentOverrideProperty {..}
    = SegmentOverrideProperty {segment = newValue, ..}
instance Property "Weights" SegmentOverrideProperty where
  type PropertyType "Weights" SegmentOverrideProperty = [GroupToWeightProperty]
  set newValue SegmentOverrideProperty {..}
    = SegmentOverrideProperty {weights = newValue, ..}