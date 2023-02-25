module Stratosphere.Batch.JobDefinition.HostPathProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HostPathProperty :: Prelude.Type
instance ToResourceProperties HostPathProperty
instance JSON.ToJSON HostPathProperty