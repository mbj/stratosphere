module Stratosphere.Evidently.Experiment.TreatmentToWeightProperty (
        TreatmentToWeightProperty(..), mkTreatmentToWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TreatmentToWeightProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmenttoweight.html>
    TreatmentToWeightProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmenttoweight.html#cfn-evidently-experiment-treatmenttoweight-splitweight>
                               splitWeight :: (Value Prelude.Integer),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmenttoweight.html#cfn-evidently-experiment-treatmenttoweight-treatment>
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