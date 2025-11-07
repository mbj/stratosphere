module Stratosphere.S3Tables.Table.CompactionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CompactionProperty :: Prelude.Type
instance ToResourceProperties CompactionProperty
instance Prelude.Eq CompactionProperty
instance Prelude.Show CompactionProperty
instance JSON.ToJSON CompactionProperty