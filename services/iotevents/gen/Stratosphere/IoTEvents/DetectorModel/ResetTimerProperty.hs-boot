module Stratosphere.IoTEvents.DetectorModel.ResetTimerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResetTimerProperty :: Prelude.Type
instance ToResourceProperties ResetTimerProperty
instance JSON.ToJSON ResetTimerProperty