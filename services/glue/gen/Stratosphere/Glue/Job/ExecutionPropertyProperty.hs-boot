module Stratosphere.Glue.Job.ExecutionPropertyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExecutionPropertyProperty :: Prelude.Type
instance ToResourceProperties ExecutionPropertyProperty
instance JSON.ToJSON ExecutionPropertyProperty