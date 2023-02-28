module Stratosphere.AppFlow.Flow.AggregationConfigProperty (
        AggregationConfigProperty(..), mkAggregationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationConfigProperty
  = AggregationConfigProperty {aggregationType :: (Prelude.Maybe (Value Prelude.Text)),
                               targetFileSize :: (Prelude.Maybe (Value Prelude.Integer))}
mkAggregationConfigProperty :: AggregationConfigProperty
mkAggregationConfigProperty
  = AggregationConfigProperty
      {aggregationType = Prelude.Nothing,
       targetFileSize = Prelude.Nothing}
instance ToResourceProperties AggregationConfigProperty where
  toResourceProperties AggregationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.AggregationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AggregationType" Prelude.<$> aggregationType,
                            (JSON..=) "TargetFileSize" Prelude.<$> targetFileSize])}
instance JSON.ToJSON AggregationConfigProperty where
  toJSON AggregationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AggregationType" Prelude.<$> aggregationType,
               (JSON..=) "TargetFileSize" Prelude.<$> targetFileSize]))
instance Property "AggregationType" AggregationConfigProperty where
  type PropertyType "AggregationType" AggregationConfigProperty = Value Prelude.Text
  set newValue AggregationConfigProperty {..}
    = AggregationConfigProperty
        {aggregationType = Prelude.pure newValue, ..}
instance Property "TargetFileSize" AggregationConfigProperty where
  type PropertyType "TargetFileSize" AggregationConfigProperty = Value Prelude.Integer
  set newValue AggregationConfigProperty {..}
    = AggregationConfigProperty
        {targetFileSize = Prelude.pure newValue, ..}