module Stratosphere.IoTAnalytics.Datastore.DatastoreStorageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatastoreStorageProperty :: Prelude.Type
instance ToResourceProperties DatastoreStorageProperty
instance Prelude.Eq DatastoreStorageProperty
instance Prelude.Show DatastoreStorageProperty
instance JSON.ToJSON DatastoreStorageProperty