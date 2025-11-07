module Stratosphere.IVS.Stage.ParticipantThumbnailConfigurationProperty (
        ParticipantThumbnailConfigurationProperty(..),
        mkParticipantThumbnailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParticipantThumbnailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-participantthumbnailconfiguration.html>
    ParticipantThumbnailConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-participantthumbnailconfiguration.html#cfn-ivs-stage-participantthumbnailconfiguration-recordingmode>
                                               recordingMode :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-participantthumbnailconfiguration.html#cfn-ivs-stage-participantthumbnailconfiguration-storage>
                                               storage :: (Prelude.Maybe (ValueList Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-participantthumbnailconfiguration.html#cfn-ivs-stage-participantthumbnailconfiguration-targetintervalseconds>
                                               targetIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParticipantThumbnailConfigurationProperty ::
  ParticipantThumbnailConfigurationProperty
mkParticipantThumbnailConfigurationProperty
  = ParticipantThumbnailConfigurationProperty
      {haddock_workaround_ = (), recordingMode = Prelude.Nothing,
       storage = Prelude.Nothing, targetIntervalSeconds = Prelude.Nothing}
instance ToResourceProperties ParticipantThumbnailConfigurationProperty where
  toResourceProperties ParticipantThumbnailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Stage.ParticipantThumbnailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RecordingMode" Prelude.<$> recordingMode,
                            (JSON..=) "Storage" Prelude.<$> storage,
                            (JSON..=) "TargetIntervalSeconds"
                              Prelude.<$> targetIntervalSeconds])}
instance JSON.ToJSON ParticipantThumbnailConfigurationProperty where
  toJSON ParticipantThumbnailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RecordingMode" Prelude.<$> recordingMode,
               (JSON..=) "Storage" Prelude.<$> storage,
               (JSON..=) "TargetIntervalSeconds"
                 Prelude.<$> targetIntervalSeconds]))
instance Property "RecordingMode" ParticipantThumbnailConfigurationProperty where
  type PropertyType "RecordingMode" ParticipantThumbnailConfigurationProperty = Value Prelude.Text
  set newValue ParticipantThumbnailConfigurationProperty {..}
    = ParticipantThumbnailConfigurationProperty
        {recordingMode = Prelude.pure newValue, ..}
instance Property "Storage" ParticipantThumbnailConfigurationProperty where
  type PropertyType "Storage" ParticipantThumbnailConfigurationProperty = ValueList Prelude.Text
  set newValue ParticipantThumbnailConfigurationProperty {..}
    = ParticipantThumbnailConfigurationProperty
        {storage = Prelude.pure newValue, ..}
instance Property "TargetIntervalSeconds" ParticipantThumbnailConfigurationProperty where
  type PropertyType "TargetIntervalSeconds" ParticipantThumbnailConfigurationProperty = Value Prelude.Integer
  set newValue ParticipantThumbnailConfigurationProperty {..}
    = ParticipantThumbnailConfigurationProperty
        {targetIntervalSeconds = Prelude.pure newValue, ..}