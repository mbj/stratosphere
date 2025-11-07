module Stratosphere.IVS.Stage.ParticipantRecordingHlsConfigurationProperty (
        ParticipantRecordingHlsConfigurationProperty(..),
        mkParticipantRecordingHlsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParticipantRecordingHlsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-participantrecordinghlsconfiguration.html>
    ParticipantRecordingHlsConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-participantrecordinghlsconfiguration.html#cfn-ivs-stage-participantrecordinghlsconfiguration-targetsegmentdurationseconds>
                                                  targetSegmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParticipantRecordingHlsConfigurationProperty ::
  ParticipantRecordingHlsConfigurationProperty
mkParticipantRecordingHlsConfigurationProperty
  = ParticipantRecordingHlsConfigurationProperty
      {haddock_workaround_ = (),
       targetSegmentDurationSeconds = Prelude.Nothing}
instance ToResourceProperties ParticipantRecordingHlsConfigurationProperty where
  toResourceProperties
    ParticipantRecordingHlsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Stage.ParticipantRecordingHlsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetSegmentDurationSeconds"
                              Prelude.<$> targetSegmentDurationSeconds])}
instance JSON.ToJSON ParticipantRecordingHlsConfigurationProperty where
  toJSON ParticipantRecordingHlsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetSegmentDurationSeconds"
                 Prelude.<$> targetSegmentDurationSeconds]))
instance Property "TargetSegmentDurationSeconds" ParticipantRecordingHlsConfigurationProperty where
  type PropertyType "TargetSegmentDurationSeconds" ParticipantRecordingHlsConfigurationProperty = Value Prelude.Integer
  set newValue ParticipantRecordingHlsConfigurationProperty {..}
    = ParticipantRecordingHlsConfigurationProperty
        {targetSegmentDurationSeconds = Prelude.pure newValue, ..}