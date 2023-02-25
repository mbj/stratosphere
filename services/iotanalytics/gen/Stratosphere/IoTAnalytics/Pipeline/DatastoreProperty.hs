module Stratosphere.IoTAnalytics.Pipeline.DatastoreProperty (
        DatastoreProperty(..), mkDatastoreProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatastoreProperty
  = DatastoreProperty {datastoreName :: (Value Prelude.Text),
                       name :: (Value Prelude.Text)}
mkDatastoreProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DatastoreProperty
mkDatastoreProperty datastoreName name
  = DatastoreProperty {datastoreName = datastoreName, name = name}
instance ToResourceProperties DatastoreProperty where
  toResourceProperties DatastoreProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Datastore",
         properties = ["DatastoreName" JSON..= datastoreName,
                       "Name" JSON..= name]}
instance JSON.ToJSON DatastoreProperty where
  toJSON DatastoreProperty {..}
    = JSON.object
        ["DatastoreName" JSON..= datastoreName, "Name" JSON..= name]
instance Property "DatastoreName" DatastoreProperty where
  type PropertyType "DatastoreName" DatastoreProperty = Value Prelude.Text
  set newValue DatastoreProperty {..}
    = DatastoreProperty {datastoreName = newValue, ..}
instance Property "Name" DatastoreProperty where
  type PropertyType "Name" DatastoreProperty = Value Prelude.Text
  set newValue DatastoreProperty {..}
    = DatastoreProperty {name = newValue, ..}