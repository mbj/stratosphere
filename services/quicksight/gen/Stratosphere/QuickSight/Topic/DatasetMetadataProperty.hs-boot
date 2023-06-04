module Stratosphere.QuickSight.Topic.DatasetMetadataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatasetMetadataProperty :: Prelude.Type
instance ToResourceProperties DatasetMetadataProperty
instance JSON.ToJSON DatasetMetadataProperty