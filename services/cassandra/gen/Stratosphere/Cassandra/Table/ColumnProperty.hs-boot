module Stratosphere.Cassandra.Table.ColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnProperty :: Prelude.Type
instance ToResourceProperties ColumnProperty
instance Prelude.Eq ColumnProperty
instance Prelude.Show ColumnProperty
instance JSON.ToJSON ColumnProperty