module Stratosphere.Evidently.Experiment.TreatmentObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TreatmentObjectProperty :: Prelude.Type
instance ToResourceProperties TreatmentObjectProperty
instance JSON.ToJSON TreatmentObjectProperty