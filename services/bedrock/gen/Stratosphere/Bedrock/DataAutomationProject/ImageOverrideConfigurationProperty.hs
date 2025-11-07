module Stratosphere.Bedrock.DataAutomationProject.ImageOverrideConfigurationProperty (
        module Exports, ImageOverrideConfigurationProperty(..),
        mkImageOverrideConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ModalityProcessingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ImageOverrideConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageoverrideconfiguration.html>
    ImageOverrideConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageoverrideconfiguration.html#cfn-bedrock-dataautomationproject-imageoverrideconfiguration-modalityprocessing>
                                        modalityProcessing :: (Prelude.Maybe ModalityProcessingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageOverrideConfigurationProperty ::
  ImageOverrideConfigurationProperty
mkImageOverrideConfigurationProperty
  = ImageOverrideConfigurationProperty
      {haddock_workaround_ = (), modalityProcessing = Prelude.Nothing}
instance ToResourceProperties ImageOverrideConfigurationProperty where
  toResourceProperties ImageOverrideConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ImageOverrideConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing])}
instance JSON.ToJSON ImageOverrideConfigurationProperty where
  toJSON ImageOverrideConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing]))
instance Property "ModalityProcessing" ImageOverrideConfigurationProperty where
  type PropertyType "ModalityProcessing" ImageOverrideConfigurationProperty = ModalityProcessingConfigurationProperty
  set newValue ImageOverrideConfigurationProperty {..}
    = ImageOverrideConfigurationProperty
        {modalityProcessing = Prelude.pure newValue, ..}