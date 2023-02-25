module Stratosphere.Glue.Job.ConnectionsListProperty (
        ConnectionsListProperty(..), mkConnectionsListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionsListProperty
  = ConnectionsListProperty {connections :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkConnectionsListProperty :: ConnectionsListProperty
mkConnectionsListProperty
  = ConnectionsListProperty {connections = Prelude.Nothing}
instance ToResourceProperties ConnectionsListProperty where
  toResourceProperties ConnectionsListProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Job.ConnectionsList",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Connections" Prelude.<$> connections])}
instance JSON.ToJSON ConnectionsListProperty where
  toJSON ConnectionsListProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Connections" Prelude.<$> connections]))
instance Property "Connections" ConnectionsListProperty where
  type PropertyType "Connections" ConnectionsListProperty = ValueList (Value Prelude.Text)
  set newValue ConnectionsListProperty {}
    = ConnectionsListProperty {connections = Prelude.pure newValue, ..}