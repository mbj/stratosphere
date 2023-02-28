module Stratosphere.Lambda.EventSourceMapping.ScalingConfigProperty (
        ScalingConfigProperty(..), mkScalingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConfigProperty
  = ScalingConfigProperty {maximumConcurrency :: (Prelude.Maybe (Value Prelude.Integer))}
mkScalingConfigProperty :: ScalingConfigProperty
mkScalingConfigProperty
  = ScalingConfigProperty {maximumConcurrency = Prelude.Nothing}
instance ToResourceProperties ScalingConfigProperty where
  toResourceProperties ScalingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.ScalingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumConcurrency" Prelude.<$> maximumConcurrency])}
instance JSON.ToJSON ScalingConfigProperty where
  toJSON ScalingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumConcurrency" Prelude.<$> maximumConcurrency]))
instance Property "MaximumConcurrency" ScalingConfigProperty where
  type PropertyType "MaximumConcurrency" ScalingConfigProperty = Value Prelude.Integer
  set newValue ScalingConfigProperty {}
    = ScalingConfigProperty
        {maximumConcurrency = Prelude.pure newValue, ..}