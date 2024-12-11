module Stratosphere.EntityResolution.MatchingWorkflow.IncrementalRunConfigProperty (
        IncrementalRunConfigProperty(..), mkIncrementalRunConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IncrementalRunConfigProperty
  = IncrementalRunConfigProperty {incrementalRunType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncrementalRunConfigProperty ::
  Value Prelude.Text -> IncrementalRunConfigProperty
mkIncrementalRunConfigProperty incrementalRunType
  = IncrementalRunConfigProperty
      {incrementalRunType = incrementalRunType}
instance ToResourceProperties IncrementalRunConfigProperty where
  toResourceProperties IncrementalRunConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.IncrementalRunConfig",
         supportsTags = Prelude.False,
         properties = ["IncrementalRunType" JSON..= incrementalRunType]}
instance JSON.ToJSON IncrementalRunConfigProperty where
  toJSON IncrementalRunConfigProperty {..}
    = JSON.object ["IncrementalRunType" JSON..= incrementalRunType]
instance Property "IncrementalRunType" IncrementalRunConfigProperty where
  type PropertyType "IncrementalRunType" IncrementalRunConfigProperty = Value Prelude.Text
  set newValue IncrementalRunConfigProperty {}
    = IncrementalRunConfigProperty {incrementalRunType = newValue, ..}