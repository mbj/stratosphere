module Stratosphere.MediaLive.Multiplexprogram (
        module Exports, Multiplexprogram(..), mkMultiplexprogram
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramPacketIdentifiersMapProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramPipelineDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Multiplexprogram
  = Multiplexprogram {multiplexId :: (Prelude.Maybe (Value Prelude.Text)),
                      multiplexProgramSettings :: (Prelude.Maybe MultiplexProgramSettingsProperty),
                      packetIdentifiersMap :: (Prelude.Maybe MultiplexProgramPacketIdentifiersMapProperty),
                      pipelineDetails :: (Prelude.Maybe [MultiplexProgramPipelineDetailProperty]),
                      preferredChannelPipeline :: (Prelude.Maybe (Value Prelude.Text)),
                      programName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexprogram :: Multiplexprogram
mkMultiplexprogram
  = Multiplexprogram
      {multiplexId = Prelude.Nothing,
       multiplexProgramSettings = Prelude.Nothing,
       packetIdentifiersMap = Prelude.Nothing,
       pipelineDetails = Prelude.Nothing,
       preferredChannelPipeline = Prelude.Nothing,
       programName = Prelude.Nothing}
instance ToResourceProperties Multiplexprogram where
  toResourceProperties Multiplexprogram {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MultiplexId" Prelude.<$> multiplexId,
                            (JSON..=) "MultiplexProgramSettings"
                              Prelude.<$> multiplexProgramSettings,
                            (JSON..=) "PacketIdentifiersMap" Prelude.<$> packetIdentifiersMap,
                            (JSON..=) "PipelineDetails" Prelude.<$> pipelineDetails,
                            (JSON..=) "PreferredChannelPipeline"
                              Prelude.<$> preferredChannelPipeline,
                            (JSON..=) "ProgramName" Prelude.<$> programName])}
instance JSON.ToJSON Multiplexprogram where
  toJSON Multiplexprogram {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MultiplexId" Prelude.<$> multiplexId,
               (JSON..=) "MultiplexProgramSettings"
                 Prelude.<$> multiplexProgramSettings,
               (JSON..=) "PacketIdentifiersMap" Prelude.<$> packetIdentifiersMap,
               (JSON..=) "PipelineDetails" Prelude.<$> pipelineDetails,
               (JSON..=) "PreferredChannelPipeline"
                 Prelude.<$> preferredChannelPipeline,
               (JSON..=) "ProgramName" Prelude.<$> programName]))
instance Property "MultiplexId" Multiplexprogram where
  type PropertyType "MultiplexId" Multiplexprogram = Value Prelude.Text
  set newValue Multiplexprogram {..}
    = Multiplexprogram {multiplexId = Prelude.pure newValue, ..}
instance Property "MultiplexProgramSettings" Multiplexprogram where
  type PropertyType "MultiplexProgramSettings" Multiplexprogram = MultiplexProgramSettingsProperty
  set newValue Multiplexprogram {..}
    = Multiplexprogram
        {multiplexProgramSettings = Prelude.pure newValue, ..}
instance Property "PacketIdentifiersMap" Multiplexprogram where
  type PropertyType "PacketIdentifiersMap" Multiplexprogram = MultiplexProgramPacketIdentifiersMapProperty
  set newValue Multiplexprogram {..}
    = Multiplexprogram
        {packetIdentifiersMap = Prelude.pure newValue, ..}
instance Property "PipelineDetails" Multiplexprogram where
  type PropertyType "PipelineDetails" Multiplexprogram = [MultiplexProgramPipelineDetailProperty]
  set newValue Multiplexprogram {..}
    = Multiplexprogram {pipelineDetails = Prelude.pure newValue, ..}
instance Property "PreferredChannelPipeline" Multiplexprogram where
  type PropertyType "PreferredChannelPipeline" Multiplexprogram = Value Prelude.Text
  set newValue Multiplexprogram {..}
    = Multiplexprogram
        {preferredChannelPipeline = Prelude.pure newValue, ..}
instance Property "ProgramName" Multiplexprogram where
  type PropertyType "ProgramName" Multiplexprogram = Value Prelude.Text
  set newValue Multiplexprogram {..}
    = Multiplexprogram {programName = Prelude.pure newValue, ..}