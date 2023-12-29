module Stratosphere.Evidently.Experiment.OnlineAbConfigObjectProperty (
        module Exports, OnlineAbConfigObjectProperty(..),
        mkOnlineAbConfigObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Experiment.TreatmentToWeightProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnlineAbConfigObjectProperty
  = OnlineAbConfigObjectProperty {controlTreatmentName :: (Prelude.Maybe (Value Prelude.Text)),
                                  treatmentWeights :: (Prelude.Maybe [TreatmentToWeightProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnlineAbConfigObjectProperty :: OnlineAbConfigObjectProperty
mkOnlineAbConfigObjectProperty
  = OnlineAbConfigObjectProperty
      {controlTreatmentName = Prelude.Nothing,
       treatmentWeights = Prelude.Nothing}
instance ToResourceProperties OnlineAbConfigObjectProperty where
  toResourceProperties OnlineAbConfigObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment.OnlineAbConfigObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ControlTreatmentName" Prelude.<$> controlTreatmentName,
                            (JSON..=) "TreatmentWeights" Prelude.<$> treatmentWeights])}
instance JSON.ToJSON OnlineAbConfigObjectProperty where
  toJSON OnlineAbConfigObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ControlTreatmentName" Prelude.<$> controlTreatmentName,
               (JSON..=) "TreatmentWeights" Prelude.<$> treatmentWeights]))
instance Property "ControlTreatmentName" OnlineAbConfigObjectProperty where
  type PropertyType "ControlTreatmentName" OnlineAbConfigObjectProperty = Value Prelude.Text
  set newValue OnlineAbConfigObjectProperty {..}
    = OnlineAbConfigObjectProperty
        {controlTreatmentName = Prelude.pure newValue, ..}
instance Property "TreatmentWeights" OnlineAbConfigObjectProperty where
  type PropertyType "TreatmentWeights" OnlineAbConfigObjectProperty = [TreatmentToWeightProperty]
  set newValue OnlineAbConfigObjectProperty {..}
    = OnlineAbConfigObjectProperty
        {treatmentWeights = Prelude.pure newValue, ..}