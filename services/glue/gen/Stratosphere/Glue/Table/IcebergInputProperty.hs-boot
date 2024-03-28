module Stratosphere.Glue.Table.IcebergInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IcebergInputProperty :: Prelude.Type
instance ToResourceProperties IcebergInputProperty
instance Prelude.Eq IcebergInputProperty
instance Prelude.Show IcebergInputProperty
instance JSON.ToJSON IcebergInputProperty