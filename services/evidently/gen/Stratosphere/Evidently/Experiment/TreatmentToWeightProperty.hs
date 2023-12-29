module Stratosphere.Evidently.Experiment.TreatmentToWeightProperty (
        TreatmentToWeightProperty(..), mkTreatmentToWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TreatmentToWeightProperty
  = TreatmentToWeightProperty {splitWeight :: (Value Prelude.Integer),
                               treatment :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreatmentToWeightProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> TreatmentToWeightProperty
mkTreatmentToWeightProperty splitWeight treatment
  = TreatmentToWeightProperty
      {splitWeight = splitWeight, treatment = treatment}
instance ToResourceProperties TreatmentToWeightProperty where
  toResourceProperties TreatmentToWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment.TreatmentToWeight",
         supportsTags = Prelude.False,
         properties = ["SplitWeight" JSON..= splitWeight,
                       "Treatment" JSON..= treatment]}
instance JSON.ToJSON TreatmentToWeightProperty where
  toJSON TreatmentToWeightProperty {..}
    = JSON.object
        ["SplitWeight" JSON..= splitWeight, "Treatment" JSON..= treatment]
instance Property "SplitWeight" TreatmentToWeightProperty where
  type PropertyType "SplitWeight" TreatmentToWeightProperty = Value Prelude.Integer
  set newValue TreatmentToWeightProperty {..}
    = TreatmentToWeightProperty {splitWeight = newValue, ..}
instance Property "Treatment" TreatmentToWeightProperty where
  type PropertyType "Treatment" TreatmentToWeightProperty = Value Prelude.Text
  set newValue TreatmentToWeightProperty {..}
    = TreatmentToWeightProperty {treatment = newValue, ..}