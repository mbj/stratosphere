module Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramSettingsProperty (
        module Exports, MultiplexProgramSettingsProperty(..),
        mkMultiplexProgramSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramServiceDescriptorProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplexprogram.MultiplexVideoSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexProgramSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramsettings.html>
    MultiplexProgramSettingsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramsettings.html#cfn-medialive-multiplexprogram-multiplexprogramsettings-preferredchannelpipeline>
                                      preferredChannelPipeline :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramsettings.html#cfn-medialive-multiplexprogram-multiplexprogramsettings-programnumber>
                                      programNumber :: (Value Prelude.Integer),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramsettings.html#cfn-medialive-multiplexprogram-multiplexprogramsettings-servicedescriptor>
                                      serviceDescriptor :: (Prelude.Maybe MultiplexProgramServiceDescriptorProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramsettings.html#cfn-medialive-multiplexprogram-multiplexprogramsettings-videosettings>
                                      videoSettings :: (Prelude.Maybe MultiplexVideoSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexProgramSettingsProperty ::
  Value Prelude.Integer -> MultiplexProgramSettingsProperty
mkMultiplexProgramSettingsProperty programNumber
  = MultiplexProgramSettingsProperty
      {haddock_workaround_ = (), programNumber = programNumber,
       preferredChannelPipeline = Prelude.Nothing,
       serviceDescriptor = Prelude.Nothing,
       videoSettings = Prelude.Nothing}
instance ToResourceProperties MultiplexProgramSettingsProperty where
  toResourceProperties MultiplexProgramSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram.MultiplexProgramSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProgramNumber" JSON..= programNumber]
                           (Prelude.catMaybes
                              [(JSON..=) "PreferredChannelPipeline"
                                 Prelude.<$> preferredChannelPipeline,
                               (JSON..=) "ServiceDescriptor" Prelude.<$> serviceDescriptor,
                               (JSON..=) "VideoSettings" Prelude.<$> videoSettings]))}
instance JSON.ToJSON MultiplexProgramSettingsProperty where
  toJSON MultiplexProgramSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProgramNumber" JSON..= programNumber]
              (Prelude.catMaybes
                 [(JSON..=) "PreferredChannelPipeline"
                    Prelude.<$> preferredChannelPipeline,
                  (JSON..=) "ServiceDescriptor" Prelude.<$> serviceDescriptor,
                  (JSON..=) "VideoSettings" Prelude.<$> videoSettings])))
instance Property "PreferredChannelPipeline" MultiplexProgramSettingsProperty where
  type PropertyType "PreferredChannelPipeline" MultiplexProgramSettingsProperty = Value Prelude.Text
  set newValue MultiplexProgramSettingsProperty {..}
    = MultiplexProgramSettingsProperty
        {preferredChannelPipeline = Prelude.pure newValue, ..}
instance Property "ProgramNumber" MultiplexProgramSettingsProperty where
  type PropertyType "ProgramNumber" MultiplexProgramSettingsProperty = Value Prelude.Integer
  set newValue MultiplexProgramSettingsProperty {..}
    = MultiplexProgramSettingsProperty {programNumber = newValue, ..}
instance Property "ServiceDescriptor" MultiplexProgramSettingsProperty where
  type PropertyType "ServiceDescriptor" MultiplexProgramSettingsProperty = MultiplexProgramServiceDescriptorProperty
  set newValue MultiplexProgramSettingsProperty {..}
    = MultiplexProgramSettingsProperty
        {serviceDescriptor = Prelude.pure newValue, ..}
instance Property "VideoSettings" MultiplexProgramSettingsProperty where
  type PropertyType "VideoSettings" MultiplexProgramSettingsProperty = MultiplexVideoSettingsProperty
  set newValue MultiplexProgramSettingsProperty {..}
    = MultiplexProgramSettingsProperty
        {videoSettings = Prelude.pure newValue, ..}