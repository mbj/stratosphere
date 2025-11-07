module Stratosphere.ImageBuilder.ImagePipeline.PipelineLoggingConfigurationProperty (
        PipelineLoggingConfigurationProperty(..),
        mkPipelineLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineLoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-pipelineloggingconfiguration.html>
    PipelineLoggingConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-pipelineloggingconfiguration.html#cfn-imagebuilder-imagepipeline-pipelineloggingconfiguration-imageloggroupname>
                                          imageLogGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-pipelineloggingconfiguration.html#cfn-imagebuilder-imagepipeline-pipelineloggingconfiguration-pipelineloggroupname>
                                          pipelineLogGroupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineLoggingConfigurationProperty ::
  PipelineLoggingConfigurationProperty
mkPipelineLoggingConfigurationProperty
  = PipelineLoggingConfigurationProperty
      {haddock_workaround_ = (), imageLogGroupName = Prelude.Nothing,
       pipelineLogGroupName = Prelude.Nothing}
instance ToResourceProperties PipelineLoggingConfigurationProperty where
  toResourceProperties PipelineLoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.PipelineLoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageLogGroupName" Prelude.<$> imageLogGroupName,
                            (JSON..=) "PipelineLogGroupName"
                              Prelude.<$> pipelineLogGroupName])}
instance JSON.ToJSON PipelineLoggingConfigurationProperty where
  toJSON PipelineLoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageLogGroupName" Prelude.<$> imageLogGroupName,
               (JSON..=) "PipelineLogGroupName"
                 Prelude.<$> pipelineLogGroupName]))
instance Property "ImageLogGroupName" PipelineLoggingConfigurationProperty where
  type PropertyType "ImageLogGroupName" PipelineLoggingConfigurationProperty = Value Prelude.Text
  set newValue PipelineLoggingConfigurationProperty {..}
    = PipelineLoggingConfigurationProperty
        {imageLogGroupName = Prelude.pure newValue, ..}
instance Property "PipelineLogGroupName" PipelineLoggingConfigurationProperty where
  type PropertyType "PipelineLogGroupName" PipelineLoggingConfigurationProperty = Value Prelude.Text
  set newValue PipelineLoggingConfigurationProperty {..}
    = PipelineLoggingConfigurationProperty
        {pipelineLogGroupName = Prelude.pure newValue, ..}