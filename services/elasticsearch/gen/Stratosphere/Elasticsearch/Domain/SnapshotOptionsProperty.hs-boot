module Stratosphere.Elasticsearch.Domain.SnapshotOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SnapshotOptionsProperty :: Prelude.Type
instance ToResourceProperties SnapshotOptionsProperty
instance JSON.ToJSON SnapshotOptionsProperty