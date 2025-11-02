module Stratosphere.EntityResolution.MatchingWorkflow.IncrementalRunConfigProperty (
        IncrementalRunConfigProperty(..), mkIncrementalRunConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IncrementalRunConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-incrementalrunconfig.html>
    IncrementalRunConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-incrementalrunconfig.html#cfn-entityresolution-matchingworkflow-incrementalrunconfig-incrementalruntype>
                                  incrementalRunType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncrementalRunConfigProperty ::
  Value Prelude.Text -> IncrementalRunConfigProperty
mkIncrementalRunConfigProperty incrementalRunType
  = IncrementalRunConfigProperty
      {haddock_workaround_ = (), incrementalRunType = incrementalRunType}
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
  set newValue IncrementalRunConfigProperty {..}
    = IncrementalRunConfigProperty {incrementalRunType = newValue, ..}