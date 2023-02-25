module Stratosphere.Batch.JobDefinition.LinuxParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LinuxParametersProperty :: Prelude.Type
instance ToResourceProperties LinuxParametersProperty
instance JSON.ToJSON LinuxParametersProperty