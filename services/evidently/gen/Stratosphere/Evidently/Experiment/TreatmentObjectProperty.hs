module Stratosphere.Evidently.Experiment.TreatmentObjectProperty (
        TreatmentObjectProperty(..), mkTreatmentObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TreatmentObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmentobject.html>
    TreatmentObjectProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmentobject.html#cfn-evidently-experiment-treatmentobject-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmentobject.html#cfn-evidently-experiment-treatmentobject-feature>
                             feature :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmentobject.html#cfn-evidently-experiment-treatmentobject-treatmentname>
                             treatmentName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-treatmentobject.html#cfn-evidently-experiment-treatmentobject-variation>
                             variation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreatmentObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TreatmentObjectProperty
mkTreatmentObjectProperty feature treatmentName variation
  = TreatmentObjectProperty
      {haddock_workaround_ = (), feature = feature,
       treatmentName = treatmentName, variation = variation,
       description = Prelude.Nothing}
instance ToResourceProperties TreatmentObjectProperty where
  toResourceProperties TreatmentObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment.TreatmentObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Feature" JSON..= feature, "TreatmentName" JSON..= treatmentName,
                            "Variation" JSON..= variation]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON TreatmentObjectProperty where
  toJSON TreatmentObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Feature" JSON..= feature, "TreatmentName" JSON..= treatmentName,
               "Variation" JSON..= variation]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" TreatmentObjectProperty where
  type PropertyType "Description" TreatmentObjectProperty = Value Prelude.Text
  set newValue TreatmentObjectProperty {..}
    = TreatmentObjectProperty {description = Prelude.pure newValue, ..}
instance Property "Feature" TreatmentObjectProperty where
  type PropertyType "Feature" TreatmentObjectProperty = Value Prelude.Text
  set newValue TreatmentObjectProperty {..}
    = TreatmentObjectProperty {feature = newValue, ..}
instance Property "TreatmentName" TreatmentObjectProperty where
  type PropertyType "TreatmentName" TreatmentObjectProperty = Value Prelude.Text
  set newValue TreatmentObjectProperty {..}
    = TreatmentObjectProperty {treatmentName = newValue, ..}
instance Property "Variation" TreatmentObjectProperty where
  type PropertyType "Variation" TreatmentObjectProperty = Value Prelude.Text
  set newValue TreatmentObjectProperty {..}
    = TreatmentObjectProperty {variation = newValue, ..}