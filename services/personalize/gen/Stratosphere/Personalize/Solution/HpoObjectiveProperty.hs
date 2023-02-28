module Stratosphere.Personalize.Solution.HpoObjectiveProperty (
        HpoObjectiveProperty(..), mkHpoObjectiveProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HpoObjectiveProperty
  = HpoObjectiveProperty {metricName :: (Prelude.Maybe (Value Prelude.Text)),
                          metricRegex :: (Prelude.Maybe (Value Prelude.Text)),
                          type' :: (Prelude.Maybe (Value Prelude.Text))}
mkHpoObjectiveProperty :: HpoObjectiveProperty
mkHpoObjectiveProperty
  = HpoObjectiveProperty
      {metricName = Prelude.Nothing, metricRegex = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties HpoObjectiveProperty where
  toResourceProperties HpoObjectiveProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.HpoObjective",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "MetricRegex" Prelude.<$> metricRegex,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON HpoObjectiveProperty where
  toJSON HpoObjectiveProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "MetricRegex" Prelude.<$> metricRegex,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "MetricName" HpoObjectiveProperty where
  type PropertyType "MetricName" HpoObjectiveProperty = Value Prelude.Text
  set newValue HpoObjectiveProperty {..}
    = HpoObjectiveProperty {metricName = Prelude.pure newValue, ..}
instance Property "MetricRegex" HpoObjectiveProperty where
  type PropertyType "MetricRegex" HpoObjectiveProperty = Value Prelude.Text
  set newValue HpoObjectiveProperty {..}
    = HpoObjectiveProperty {metricRegex = Prelude.pure newValue, ..}
instance Property "Type" HpoObjectiveProperty where
  type PropertyType "Type" HpoObjectiveProperty = Value Prelude.Text
  set newValue HpoObjectiveProperty {..}
    = HpoObjectiveProperty {type' = Prelude.pure newValue, ..}