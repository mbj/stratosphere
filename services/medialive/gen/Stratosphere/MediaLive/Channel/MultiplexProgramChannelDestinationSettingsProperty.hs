module Stratosphere.MediaLive.Channel.MultiplexProgramChannelDestinationSettingsProperty (
        MultiplexProgramChannelDestinationSettingsProperty(..),
        mkMultiplexProgramChannelDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexProgramChannelDestinationSettingsProperty
  = MultiplexProgramChannelDestinationSettingsProperty {multiplexId :: (Prelude.Maybe (Value Prelude.Text)),
                                                        programName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexProgramChannelDestinationSettingsProperty ::
  MultiplexProgramChannelDestinationSettingsProperty
mkMultiplexProgramChannelDestinationSettingsProperty
  = MultiplexProgramChannelDestinationSettingsProperty
      {multiplexId = Prelude.Nothing, programName = Prelude.Nothing}
instance ToResourceProperties MultiplexProgramChannelDestinationSettingsProperty where
  toResourceProperties
    MultiplexProgramChannelDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexProgramChannelDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MultiplexId" Prelude.<$> multiplexId,
                            (JSON..=) "ProgramName" Prelude.<$> programName])}
instance JSON.ToJSON MultiplexProgramChannelDestinationSettingsProperty where
  toJSON MultiplexProgramChannelDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MultiplexId" Prelude.<$> multiplexId,
               (JSON..=) "ProgramName" Prelude.<$> programName]))
instance Property "MultiplexId" MultiplexProgramChannelDestinationSettingsProperty where
  type PropertyType "MultiplexId" MultiplexProgramChannelDestinationSettingsProperty = Value Prelude.Text
  set
    newValue
    MultiplexProgramChannelDestinationSettingsProperty {..}
    = MultiplexProgramChannelDestinationSettingsProperty
        {multiplexId = Prelude.pure newValue, ..}
instance Property "ProgramName" MultiplexProgramChannelDestinationSettingsProperty where
  type PropertyType "ProgramName" MultiplexProgramChannelDestinationSettingsProperty = Value Prelude.Text
  set
    newValue
    MultiplexProgramChannelDestinationSettingsProperty {..}
    = MultiplexProgramChannelDestinationSettingsProperty
        {programName = Prelude.pure newValue, ..}