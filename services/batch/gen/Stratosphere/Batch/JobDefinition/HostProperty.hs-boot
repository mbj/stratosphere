module Stratosphere.Batch.JobDefinition.HostProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HostProperty :: Prelude.Type
instance ToResourceProperties HostProperty
instance Prelude.Eq HostProperty
instance Prelude.Show HostProperty
instance JSON.ToJSON HostProperty