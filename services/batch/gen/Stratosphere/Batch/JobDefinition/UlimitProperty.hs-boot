module Stratosphere.Batch.JobDefinition.UlimitProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UlimitProperty :: Prelude.Type
instance ToResourceProperties UlimitProperty
instance JSON.ToJSON UlimitProperty