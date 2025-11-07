module Stratosphere.Bedrock.DataAutomationProject.OverrideConfigurationProperty (
        module Exports, OverrideConfigurationProperty(..),
        mkOverrideConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.AudioOverrideConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentOverrideConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ImageOverrideConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ModalityRoutingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.VideoOverrideConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data OverrideConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html>
    OverrideConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-audio>
                                   audio :: (Prelude.Maybe AudioOverrideConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-document>
                                   document :: (Prelude.Maybe DocumentOverrideConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-image>
                                   image :: (Prelude.Maybe ImageOverrideConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-modalityrouting>
                                   modalityRouting :: (Prelude.Maybe ModalityRoutingConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-video>
                                   video :: (Prelude.Maybe VideoOverrideConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverrideConfigurationProperty :: OverrideConfigurationProperty
mkOverrideConfigurationProperty
  = OverrideConfigurationProperty
      {haddock_workaround_ = (), audio = Prelude.Nothing,
       document = Prelude.Nothing, image = Prelude.Nothing,
       modalityRouting = Prelude.Nothing, video = Prelude.Nothing}
instance ToResourceProperties OverrideConfigurationProperty where
  toResourceProperties OverrideConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.OverrideConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Audio" Prelude.<$> audio,
                            (JSON..=) "Document" Prelude.<$> document,
                            (JSON..=) "Image" Prelude.<$> image,
                            (JSON..=) "ModalityRouting" Prelude.<$> modalityRouting,
                            (JSON..=) "Video" Prelude.<$> video])}
instance JSON.ToJSON OverrideConfigurationProperty where
  toJSON OverrideConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Audio" Prelude.<$> audio,
               (JSON..=) "Document" Prelude.<$> document,
               (JSON..=) "Image" Prelude.<$> image,
               (JSON..=) "ModalityRouting" Prelude.<$> modalityRouting,
               (JSON..=) "Video" Prelude.<$> video]))
instance Property "Audio" OverrideConfigurationProperty where
  type PropertyType "Audio" OverrideConfigurationProperty = AudioOverrideConfigurationProperty
  set newValue OverrideConfigurationProperty {..}
    = OverrideConfigurationProperty {audio = Prelude.pure newValue, ..}
instance Property "Document" OverrideConfigurationProperty where
  type PropertyType "Document" OverrideConfigurationProperty = DocumentOverrideConfigurationProperty
  set newValue OverrideConfigurationProperty {..}
    = OverrideConfigurationProperty
        {document = Prelude.pure newValue, ..}
instance Property "Image" OverrideConfigurationProperty where
  type PropertyType "Image" OverrideConfigurationProperty = ImageOverrideConfigurationProperty
  set newValue OverrideConfigurationProperty {..}
    = OverrideConfigurationProperty {image = Prelude.pure newValue, ..}
instance Property "ModalityRouting" OverrideConfigurationProperty where
  type PropertyType "ModalityRouting" OverrideConfigurationProperty = ModalityRoutingConfigurationProperty
  set newValue OverrideConfigurationProperty {..}
    = OverrideConfigurationProperty
        {modalityRouting = Prelude.pure newValue, ..}
instance Property "Video" OverrideConfigurationProperty where
  type PropertyType "Video" OverrideConfigurationProperty = VideoOverrideConfigurationProperty
  set newValue OverrideConfigurationProperty {..}
    = OverrideConfigurationProperty {video = Prelude.pure newValue, ..}