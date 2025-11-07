module Stratosphere.Bedrock.DataAutomationProject.AudioOverrideConfigurationProperty (
        module Exports, AudioOverrideConfigurationProperty(..),
        mkAudioOverrideConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ModalityProcessingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AudioOverrideConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiooverrideconfiguration.html>
    AudioOverrideConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiooverrideconfiguration.html#cfn-bedrock-dataautomationproject-audiooverrideconfiguration-modalityprocessing>
                                        modalityProcessing :: (Prelude.Maybe ModalityProcessingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioOverrideConfigurationProperty ::
  AudioOverrideConfigurationProperty
mkAudioOverrideConfigurationProperty
  = AudioOverrideConfigurationProperty
      {haddock_workaround_ = (), modalityProcessing = Prelude.Nothing}
instance ToResourceProperties AudioOverrideConfigurationProperty where
  toResourceProperties AudioOverrideConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.AudioOverrideConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing])}
instance JSON.ToJSON AudioOverrideConfigurationProperty where
  toJSON AudioOverrideConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing]))
instance Property "ModalityProcessing" AudioOverrideConfigurationProperty where
  type PropertyType "ModalityProcessing" AudioOverrideConfigurationProperty = ModalityProcessingConfigurationProperty
  set newValue AudioOverrideConfigurationProperty {..}
    = AudioOverrideConfigurationProperty
        {modalityProcessing = Prelude.pure newValue, ..}