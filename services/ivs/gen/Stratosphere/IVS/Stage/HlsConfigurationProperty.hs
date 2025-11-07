module Stratosphere.IVS.Stage.HlsConfigurationProperty (
        module Exports, HlsConfigurationProperty(..),
        mkHlsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.Stage.ParticipantRecordingHlsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data HlsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-hlsconfiguration.html>
    HlsConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-hlsconfiguration.html#cfn-ivs-stage-hlsconfiguration-participantrecordinghlsconfiguration>
                              participantRecordingHlsConfiguration :: (Prelude.Maybe ParticipantRecordingHlsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsConfigurationProperty :: HlsConfigurationProperty
mkHlsConfigurationProperty
  = HlsConfigurationProperty
      {haddock_workaround_ = (),
       participantRecordingHlsConfiguration = Prelude.Nothing}
instance ToResourceProperties HlsConfigurationProperty where
  toResourceProperties HlsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Stage.HlsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParticipantRecordingHlsConfiguration"
                              Prelude.<$> participantRecordingHlsConfiguration])}
instance JSON.ToJSON HlsConfigurationProperty where
  toJSON HlsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParticipantRecordingHlsConfiguration"
                 Prelude.<$> participantRecordingHlsConfiguration]))
instance Property "ParticipantRecordingHlsConfiguration" HlsConfigurationProperty where
  type PropertyType "ParticipantRecordingHlsConfiguration" HlsConfigurationProperty = ParticipantRecordingHlsConfigurationProperty
  set newValue HlsConfigurationProperty {..}
    = HlsConfigurationProperty
        {participantRecordingHlsConfiguration = Prelude.pure newValue, ..}