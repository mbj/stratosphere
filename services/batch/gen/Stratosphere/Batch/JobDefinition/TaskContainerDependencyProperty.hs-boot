module Stratosphere.Batch.JobDefinition.TaskContainerDependencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TaskContainerDependencyProperty :: Prelude.Type
instance ToResourceProperties TaskContainerDependencyProperty
instance Prelude.Eq TaskContainerDependencyProperty
instance Prelude.Show TaskContainerDependencyProperty
instance JSON.ToJSON TaskContainerDependencyProperty