module Stratosphere.Bedrock.DataAutomationProject.VideoOverrideConfigurationProperty (
        module Exports, VideoOverrideConfigurationProperty(..),
        mkVideoOverrideConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ModalityProcessingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data VideoOverrideConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videooverrideconfiguration.html>
    VideoOverrideConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videooverrideconfiguration.html#cfn-bedrock-dataautomationproject-videooverrideconfiguration-modalityprocessing>
                                        modalityProcessing :: (Prelude.Maybe ModalityProcessingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoOverrideConfigurationProperty ::
  VideoOverrideConfigurationProperty
mkVideoOverrideConfigurationProperty
  = VideoOverrideConfigurationProperty
      {haddock_workaround_ = (), modalityProcessing = Prelude.Nothing}
instance ToResourceProperties VideoOverrideConfigurationProperty where
  toResourceProperties VideoOverrideConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.VideoOverrideConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing])}
instance JSON.ToJSON VideoOverrideConfigurationProperty where
  toJSON VideoOverrideConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing]))
instance Property "ModalityProcessing" VideoOverrideConfigurationProperty where
  type PropertyType "ModalityProcessing" VideoOverrideConfigurationProperty = ModalityProcessingConfigurationProperty
  set newValue VideoOverrideConfigurationProperty {..}
    = VideoOverrideConfigurationProperty
        {modalityProcessing = Prelude.pure newValue, ..}