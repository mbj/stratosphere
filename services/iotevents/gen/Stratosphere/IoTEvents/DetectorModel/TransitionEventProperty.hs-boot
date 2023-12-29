module Stratosphere.IoTEvents.DetectorModel.TransitionEventProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TransitionEventProperty :: Prelude.Type
instance ToResourceProperties TransitionEventProperty
instance Prelude.Eq TransitionEventProperty
instance Prelude.Show TransitionEventProperty
instance JSON.ToJSON TransitionEventProperty