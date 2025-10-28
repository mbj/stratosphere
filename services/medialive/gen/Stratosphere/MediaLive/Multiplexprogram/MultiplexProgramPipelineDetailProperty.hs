module Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramPipelineDetailProperty (
        MultiplexProgramPipelineDetailProperty(..),
        mkMultiplexProgramPipelineDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexProgramPipelineDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampipelinedetail.html>
    MultiplexProgramPipelineDetailProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampipelinedetail.html#cfn-medialive-multiplexprogram-multiplexprogrampipelinedetail-activechannelpipeline>
                                            activeChannelPipeline :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogrampipelinedetail.html#cfn-medialive-multiplexprogram-multiplexprogrampipelinedetail-pipelineid>
                                            pipelineId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexProgramPipelineDetailProperty ::
  MultiplexProgramPipelineDetailProperty
mkMultiplexProgramPipelineDetailProperty
  = MultiplexProgramPipelineDetailProperty
      {haddock_workaround_ = (), activeChannelPipeline = Prelude.Nothing,
       pipelineId = Prelude.Nothing}
instance ToResourceProperties MultiplexProgramPipelineDetailProperty where
  toResourceProperties MultiplexProgramPipelineDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram.MultiplexProgramPipelineDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActiveChannelPipeline"
                              Prelude.<$> activeChannelPipeline,
                            (JSON..=) "PipelineId" Prelude.<$> pipelineId])}
instance JSON.ToJSON MultiplexProgramPipelineDetailProperty where
  toJSON MultiplexProgramPipelineDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActiveChannelPipeline"
                 Prelude.<$> activeChannelPipeline,
               (JSON..=) "PipelineId" Prelude.<$> pipelineId]))
instance Property "ActiveChannelPipeline" MultiplexProgramPipelineDetailProperty where
  type PropertyType "ActiveChannelPipeline" MultiplexProgramPipelineDetailProperty = Value Prelude.Text
  set newValue MultiplexProgramPipelineDetailProperty {..}
    = MultiplexProgramPipelineDetailProperty
        {activeChannelPipeline = Prelude.pure newValue, ..}
instance Property "PipelineId" MultiplexProgramPipelineDetailProperty where
  type PropertyType "PipelineId" MultiplexProgramPipelineDetailProperty = Value Prelude.Text
  set newValue MultiplexProgramPipelineDetailProperty {..}
    = MultiplexProgramPipelineDetailProperty
        {pipelineId = Prelude.pure newValue, ..}