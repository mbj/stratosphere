module Stratosphere.IoTEvents.DetectorModel.OnExitProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OnExitProperty :: Prelude.Type
instance ToResourceProperties OnExitProperty
instance JSON.ToJSON OnExitProperty