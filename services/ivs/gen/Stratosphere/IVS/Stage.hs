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
  = Stage {autoParticipantRecordingConfiguration :: (Prelude.Maybe AutoParticipantRecordingConfigurationProperty),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStage :: Stage
mkStage
  = Stage
      {autoParticipantRecordingConfiguration = Prelude.Nothing,
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