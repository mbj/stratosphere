module Stratosphere.AppSync.Resolver.PipelineConfigProperty (
        PipelineConfigProperty(..), mkPipelineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html>
    PipelineConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html#cfn-appsync-resolver-pipelineconfig-functions>
                            functions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineConfigProperty :: PipelineConfigProperty
mkPipelineConfigProperty
  = PipelineConfigProperty
      {haddock_workaround_ = (), functions = Prelude.Nothing}
instance ToResourceProperties PipelineConfigProperty where
  toResourceProperties PipelineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver.PipelineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Functions" Prelude.<$> functions])}
instance JSON.ToJSON PipelineConfigProperty where
  toJSON PipelineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Functions" Prelude.<$> functions]))
instance Property "Functions" PipelineConfigProperty where
  type PropertyType "Functions" PipelineConfigProperty = ValueList Prelude.Text
  set newValue PipelineConfigProperty {..}
    = PipelineConfigProperty {functions = Prelude.pure newValue, ..}