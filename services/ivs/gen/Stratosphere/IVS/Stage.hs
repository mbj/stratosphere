module Stratosphere.IVS.Stage (
        module Exports, Stage(..), mkStage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.Stage.AutoParticipantRecordingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stage
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-stage.html>
    Stage {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-stage.html#cfn-ivs-stage-autoparticipantrecordingconfiguration>
           autoParticipantRecordingConfiguration :: (Prelude.Maybe AutoParticipantRecordingConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-stage.html#cfn-ivs-stage-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-stage.html#cfn-ivs-stage-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStage :: Stage
mkStage
  = Stage
      {haddock_workaround_ = (),
       autoParticipantRecordingConfiguration = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Stage where
  toResourceProperties Stage {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Stage", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoParticipantRecordingConfiguration"
                              Prelude.<$> autoParticipantRecordingConfiguration,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Stage where
  toJSON Stage {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoParticipantRecordingConfiguration"
                 Prelude.<$> autoParticipantRecordingConfiguration,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AutoParticipantRecordingConfiguration" Stage where
  type PropertyType "AutoParticipantRecordingConfiguration" Stage = AutoParticipantRecordingConfigurationProperty
  set newValue Stage {..}
    = Stage
        {autoParticipantRecordingConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Stage where
  type PropertyType "Name" Stage = Value Prelude.Text
  set newValue Stage {..} = Stage {name = Prelude.pure newValue, ..}
instance Property "Tags" Stage where
  type PropertyType "Tags" Stage = [Tag]
  set newValue Stage {..} = Stage {tags = Prelude.pure newValue, ..}