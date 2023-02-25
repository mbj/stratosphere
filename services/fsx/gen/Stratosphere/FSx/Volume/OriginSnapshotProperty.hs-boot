module Stratosphere.FSx.Volume.OriginSnapshotProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OriginSnapshotProperty :: Prelude.Type
instance ToResourceProperties OriginSnapshotProperty
instance JSON.ToJSON OriginSnapshotProperty