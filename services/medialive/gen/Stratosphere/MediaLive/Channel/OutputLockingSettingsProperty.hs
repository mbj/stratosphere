module Stratosphere.MediaLive.Channel.OutputLockingSettingsProperty (
        module Exports, OutputLockingSettingsProperty(..),
        mkOutputLockingSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EpochLockingSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.PipelineLockingSettingsProperty as Exports
import Stratosphere.ResourceProperties
data OutputLockingSettingsProperty
  = OutputLockingSettingsProperty {epochLockingSettings :: (Prelude.Maybe EpochLockingSettingsProperty),
                                   pipelineLockingSettings :: (Prelude.Maybe PipelineLockingSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputLockingSettingsProperty :: OutputLockingSettingsProperty
mkOutputLockingSettingsProperty
  = OutputLockingSettingsProperty
      {epochLockingSettings = Prelude.Nothing,
       pipelineLockingSettings = Prelude.Nothing}
instance ToResourceProperties OutputLockingSettingsProperty where
  toResourceProperties OutputLockingSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputLockingSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EpochLockingSettings" Prelude.<$> epochLockingSettings,
                            (JSON..=) "PipelineLockingSettings"
                              Prelude.<$> pipelineLockingSettings])}
instance JSON.ToJSON OutputLockingSettingsProperty where
  toJSON OutputLockingSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EpochLockingSettings" Prelude.<$> epochLockingSettings,
               (JSON..=) "PipelineLockingSettings"
                 Prelude.<$> pipelineLockingSettings]))
instance Property "EpochLockingSettings" OutputLockingSettingsProperty where
  type PropertyType "EpochLockingSettings" OutputLockingSettingsProperty = EpochLockingSettingsProperty
  set newValue OutputLockingSettingsProperty {..}
    = OutputLockingSettingsProperty
        {epochLockingSettings = Prelude.pure newValue, ..}
instance Property "PipelineLockingSettings" OutputLockingSettingsProperty where
  type PropertyType "PipelineLockingSettings" OutputLockingSettingsProperty = PipelineLockingSettingsProperty
  set newValue OutputLockingSettingsProperty {..}
    = OutputLockingSettingsProperty
        {pipelineLockingSettings = Prelude.pure newValue, ..}