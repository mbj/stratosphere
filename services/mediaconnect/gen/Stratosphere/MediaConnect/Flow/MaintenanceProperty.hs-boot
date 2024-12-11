module Stratosphere.MediaConnect.Flow.MaintenanceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MaintenanceProperty :: Prelude.Type
instance ToResourceProperties MaintenanceProperty
instance Prelude.Eq MaintenanceProperty
instance Prelude.Show MaintenanceProperty
instance JSON.ToJSON MaintenanceProperty