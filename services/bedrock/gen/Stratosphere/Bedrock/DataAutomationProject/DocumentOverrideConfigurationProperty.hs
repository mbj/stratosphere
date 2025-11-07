module Stratosphere.Bedrock.DataAutomationProject.DocumentOverrideConfigurationProperty (
        module Exports, DocumentOverrideConfigurationProperty(..),
        mkDocumentOverrideConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ModalityProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.SplitterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DocumentOverrideConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html>
    DocumentOverrideConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html#cfn-bedrock-dataautomationproject-documentoverrideconfiguration-modalityprocessing>
                                           modalityProcessing :: (Prelude.Maybe ModalityProcessingConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html#cfn-bedrock-dataautomationproject-documentoverrideconfiguration-splitter>
                                           splitter :: (Prelude.Maybe SplitterConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentOverrideConfigurationProperty ::
  DocumentOverrideConfigurationProperty
mkDocumentOverrideConfigurationProperty
  = DocumentOverrideConfigurationProperty
      {haddock_workaround_ = (), modalityProcessing = Prelude.Nothing,
       splitter = Prelude.Nothing}
instance ToResourceProperties DocumentOverrideConfigurationProperty where
  toResourceProperties DocumentOverrideConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentOverrideConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing,
                            (JSON..=) "Splitter" Prelude.<$> splitter])}
instance JSON.ToJSON DocumentOverrideConfigurationProperty where
  toJSON DocumentOverrideConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModalityProcessing" Prelude.<$> modalityProcessing,
               (JSON..=) "Splitter" Prelude.<$> splitter]))
instance Property "ModalityProcessing" DocumentOverrideConfigurationProperty where
  type PropertyType "ModalityProcessing" DocumentOverrideConfigurationProperty = ModalityProcessingConfigurationProperty
  set newValue DocumentOverrideConfigurationProperty {..}
    = DocumentOverrideConfigurationProperty
        {modalityProcessing = Prelude.pure newValue, ..}
instance Property "Splitter" DocumentOverrideConfigurationProperty where
  type PropertyType "Splitter" DocumentOverrideConfigurationProperty = SplitterConfigurationProperty
  set newValue DocumentOverrideConfigurationProperty {..}
    = DocumentOverrideConfigurationProperty
        {splitter = Prelude.pure newValue, ..}