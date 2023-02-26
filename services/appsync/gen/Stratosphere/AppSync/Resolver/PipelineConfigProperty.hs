module Stratosphere.AppSync.Resolver.PipelineConfigProperty (
        PipelineConfigProperty(..), mkPipelineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineConfigProperty
  = PipelineConfigProperty {functions :: (Prelude.Maybe (ValueList Prelude.Text))}
mkPipelineConfigProperty :: PipelineConfigProperty
mkPipelineConfigProperty
  = PipelineConfigProperty {functions = Prelude.Nothing}
instance ToResourceProperties PipelineConfigProperty where
  toResourceProperties PipelineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver.PipelineConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Functions" Prelude.<$> functions])}
instance JSON.ToJSON PipelineConfigProperty where
  toJSON PipelineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Functions" Prelude.<$> functions]))
instance Property "Functions" PipelineConfigProperty where
  type PropertyType "Functions" PipelineConfigProperty = ValueList Prelude.Text
  set newValue PipelineConfigProperty {}
    = PipelineConfigProperty {functions = Prelude.pure newValue, ..}