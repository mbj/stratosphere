module Stratosphere.IoTAnalytics.Pipeline.DatastoreProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatastoreProperty :: Prelude.Type
instance ToResourceProperties DatastoreProperty
instance Prelude.Eq DatastoreProperty
instance Prelude.Show DatastoreProperty
instance JSON.ToJSON DatastoreProperty