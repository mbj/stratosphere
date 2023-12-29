module Stratosphere.IoTEvents.DetectorModel.FirehoseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FirehoseProperty :: Prelude.Type
instance ToResourceProperties FirehoseProperty
instance Prelude.Eq FirehoseProperty
instance Prelude.Show FirehoseProperty
instance JSON.ToJSON FirehoseProperty