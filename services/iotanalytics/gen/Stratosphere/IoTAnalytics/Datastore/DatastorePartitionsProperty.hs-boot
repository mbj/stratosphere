module Stratosphere.IoTAnalytics.Datastore.DatastorePartitionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatastorePartitionsProperty :: Prelude.Type
instance ToResourceProperties DatastorePartitionsProperty
instance Prelude.Eq DatastorePartitionsProperty
instance Prelude.Show DatastorePartitionsProperty
instance JSON.ToJSON DatastorePartitionsProperty