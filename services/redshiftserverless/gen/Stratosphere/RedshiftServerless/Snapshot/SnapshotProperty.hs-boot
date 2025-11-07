module Stratosphere.RedshiftServerless.Snapshot.SnapshotProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SnapshotProperty :: Prelude.Type
instance ToResourceProperties SnapshotProperty
instance Prelude.Eq SnapshotProperty
instance Prelude.Show SnapshotProperty
instance JSON.ToJSON SnapshotProperty