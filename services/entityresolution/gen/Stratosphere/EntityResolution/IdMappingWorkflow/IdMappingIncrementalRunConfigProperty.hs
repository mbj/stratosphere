module Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingIncrementalRunConfigProperty (
        IdMappingIncrementalRunConfigProperty(..),
        mkIdMappingIncrementalRunConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingIncrementalRunConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingincrementalrunconfig.html>
    IdMappingIncrementalRunConfigProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingincrementalrunconfig.html#cfn-entityresolution-idmappingworkflow-idmappingincrementalrunconfig-incrementalruntype>
                                           incrementalRunType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingIncrementalRunConfigProperty ::
  Value Prelude.Text -> IdMappingIncrementalRunConfigProperty
mkIdMappingIncrementalRunConfigProperty incrementalRunType
  = IdMappingIncrementalRunConfigProperty
      {haddock_workaround_ = (), incrementalRunType = incrementalRunType}
instance ToResourceProperties IdMappingIncrementalRunConfigProperty where
  toResourceProperties IdMappingIncrementalRunConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.IdMappingIncrementalRunConfig",
         supportsTags = Prelude.False,
         properties = ["IncrementalRunType" JSON..= incrementalRunType]}
instance JSON.ToJSON IdMappingIncrementalRunConfigProperty where
  toJSON IdMappingIncrementalRunConfigProperty {..}
    = JSON.object ["IncrementalRunType" JSON..= incrementalRunType]
instance Property "IncrementalRunType" IdMappingIncrementalRunConfigProperty where
  type PropertyType "IncrementalRunType" IdMappingIncrementalRunConfigProperty = Value Prelude.Text
  set newValue IdMappingIncrementalRunConfigProperty {..}
    = IdMappingIncrementalRunConfigProperty
        {incrementalRunType = newValue, ..}