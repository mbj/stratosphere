module Stratosphere.IoTEvents.DetectorModel.SetTimerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SetTimerProperty :: Prelude.Type
instance ToResourceProperties SetTimerProperty
instance JSON.ToJSON SetTimerProperty