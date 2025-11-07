module Stratosphere.Bedrock.DataAutomationProject.StandardOutputConfigurationProperty (
        module Exports, StandardOutputConfigurationProperty(..),
        mkStandardOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.AudioStandardOutputConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentStandardOutputConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ImageStandardOutputConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.VideoStandardOutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data StandardOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html>
    StandardOutputConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-audio>
                                         audio :: (Prelude.Maybe AudioStandardOutputConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-document>
                                         document :: (Prelude.Maybe DocumentStandardOutputConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-image>
                                         image :: (Prelude.Maybe ImageStandardOutputConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-video>
                                         video :: (Prelude.Maybe VideoStandardOutputConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStandardOutputConfigurationProperty ::
  StandardOutputConfigurationProperty
mkStandardOutputConfigurationProperty
  = StandardOutputConfigurationProperty
      {haddock_workaround_ = (), audio = Prelude.Nothing,
       document = Prelude.Nothing, image = Prelude.Nothing,
       video = Prelude.Nothing}
instance ToResourceProperties StandardOutputConfigurationProperty where
  toResourceProperties StandardOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.StandardOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Audio" Prelude.<$> audio,
                            (JSON..=) "Document" Prelude.<$> document,
                            (JSON..=) "Image" Prelude.<$> image,
                            (JSON..=) "Video" Prelude.<$> video])}
instance JSON.ToJSON StandardOutputConfigurationProperty where
  toJSON StandardOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Audio" Prelude.<$> audio,
               (JSON..=) "Document" Prelude.<$> document,
               (JSON..=) "Image" Prelude.<$> image,
               (JSON..=) "Video" Prelude.<$> video]))
instance Property "Audio" StandardOutputConfigurationProperty where
  type PropertyType "Audio" StandardOutputConfigurationProperty = AudioStandardOutputConfigurationProperty
  set newValue StandardOutputConfigurationProperty {..}
    = StandardOutputConfigurationProperty
        {audio = Prelude.pure newValue, ..}
instance Property "Document" StandardOutputConfigurationProperty where
  type PropertyType "Document" StandardOutputConfigurationProperty = DocumentStandardOutputConfigurationProperty
  set newValue StandardOutputConfigurationProperty {..}
    = StandardOutputConfigurationProperty
        {document = Prelude.pure newValue, ..}
instance Property "Image" StandardOutputConfigurationProperty where
  type PropertyType "Image" StandardOutputConfigurationProperty = ImageStandardOutputConfigurationProperty
  set newValue StandardOutputConfigurationProperty {..}
    = StandardOutputConfigurationProperty
        {image = Prelude.pure newValue, ..}
instance Property "Video" StandardOutputConfigurationProperty where
  type PropertyType "Video" StandardOutputConfigurationProperty = VideoStandardOutputConfigurationProperty
  set newValue StandardOutputConfigurationProperty {..}
    = StandardOutputConfigurationProperty
        {video = Prelude.pure newValue, ..}