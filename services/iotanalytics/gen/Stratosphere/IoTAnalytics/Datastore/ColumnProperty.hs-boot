module Stratosphere.IoTAnalytics.Datastore.ColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnProperty :: Prelude.Type
instance ToResourceProperties ColumnProperty
instance JSON.ToJSON ColumnProperty