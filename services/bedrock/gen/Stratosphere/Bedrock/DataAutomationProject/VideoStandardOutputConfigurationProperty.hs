module Stratosphere.Bedrock.DataAutomationProject.VideoStandardOutputConfigurationProperty (
        module Exports, VideoStandardOutputConfigurationProperty(..),
        mkVideoStandardOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.VideoStandardExtractionProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.VideoStandardGenerativeFieldProperty as Exports
import Stratosphere.ResourceProperties
data VideoStandardOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardoutputconfiguration.html>
    VideoStandardOutputConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-videostandardoutputconfiguration-extraction>
                                              extraction :: (Prelude.Maybe VideoStandardExtractionProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-videostandardoutputconfiguration-generativefield>
                                              generativeField :: (Prelude.Maybe VideoStandardGenerativeFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoStandardOutputConfigurationProperty ::
  VideoStandardOutputConfigurationProperty
mkVideoStandardOutputConfigurationProperty
  = VideoStandardOutputConfigurationProperty
      {haddock_workaround_ = (), extraction = Prelude.Nothing,
       generativeField = Prelude.Nothing}
instance ToResourceProperties VideoStandardOutputConfigurationProperty where
  toResourceProperties VideoStandardOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.VideoStandardOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Extraction" Prelude.<$> extraction,
                            (JSON..=) "GenerativeField" Prelude.<$> generativeField])}
instance JSON.ToJSON VideoStandardOutputConfigurationProperty where
  toJSON VideoStandardOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Extraction" Prelude.<$> extraction,
               (JSON..=) "GenerativeField" Prelude.<$> generativeField]))
instance Property "Extraction" VideoStandardOutputConfigurationProperty where
  type PropertyType "Extraction" VideoStandardOutputConfigurationProperty = VideoStandardExtractionProperty
  set newValue VideoStandardOutputConfigurationProperty {..}
    = VideoStandardOutputConfigurationProperty
        {extraction = Prelude.pure newValue, ..}
instance Property "GenerativeField" VideoStandardOutputConfigurationProperty where
  type PropertyType "GenerativeField" VideoStandardOutputConfigurationProperty = VideoStandardGenerativeFieldProperty
  set newValue VideoStandardOutputConfigurationProperty {..}
    = VideoStandardOutputConfigurationProperty
        {generativeField = Prelude.pure newValue, ..}