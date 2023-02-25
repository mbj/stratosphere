module Stratosphere.Batch.JobDefinition.HostPathProperty (
        HostPathProperty(..), mkHostPathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostPathProperty
  = HostPathProperty {path :: (Prelude.Maybe (Value Prelude.Text))}
mkHostPathProperty :: HostPathProperty
mkHostPathProperty = HostPathProperty {path = Prelude.Nothing}
instance ToResourceProperties HostPathProperty where
  toResourceProperties HostPathProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.HostPath",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON HostPathProperty where
  toJSON HostPathProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path]))
instance Property "Path" HostPathProperty where
  type PropertyType "Path" HostPathProperty = Value Prelude.Text
  set newValue HostPathProperty {}
    = HostPathProperty {path = Prelude.pure newValue, ..}