module Stratosphere.IoTEvents.DetectorModel.EventProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventProperty :: Prelude.Type
instance ToResourceProperties EventProperty
instance Prelude.Eq EventProperty
instance Prelude.Show EventProperty
instance JSON.ToJSON EventProperty