module Stratosphere.Bedrock.DataAutomationProject.ImageStandardOutputConfigurationProperty (
        module Exports, ImageStandardOutputConfigurationProperty(..),
        mkImageStandardOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ImageStandardExtractionProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ImageStandardGenerativeFieldProperty as Exports
import Stratosphere.ResourceProperties
data ImageStandardOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardoutputconfiguration.html>
    ImageStandardOutputConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-imagestandardoutputconfiguration-extraction>
                                              extraction :: (Prelude.Maybe ImageStandardExtractionProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-imagestandardoutputconfiguration-generativefield>
                                              generativeField :: (Prelude.Maybe ImageStandardGenerativeFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageStandardOutputConfigurationProperty ::
  ImageStandardOutputConfigurationProperty
mkImageStandardOutputConfigurationProperty
  = ImageStandardOutputConfigurationProperty
      {haddock_workaround_ = (), extraction = Prelude.Nothing,
       generativeField = Prelude.Nothing}
instance ToResourceProperties ImageStandardOutputConfigurationProperty where
  toResourceProperties ImageStandardOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ImageStandardOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Extraction" Prelude.<$> extraction,
                            (JSON..=) "GenerativeField" Prelude.<$> generativeField])}
instance JSON.ToJSON ImageStandardOutputConfigurationProperty where
  toJSON ImageStandardOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Extraction" Prelude.<$> extraction,
               (JSON..=) "GenerativeField" Prelude.<$> generativeField]))
instance Property "Extraction" ImageStandardOutputConfigurationProperty where
  type PropertyType "Extraction" ImageStandardOutputConfigurationProperty = ImageStandardExtractionProperty
  set newValue ImageStandardOutputConfigurationProperty {..}
    = ImageStandardOutputConfigurationProperty
        {extraction = Prelude.pure newValue, ..}
instance Property "GenerativeField" ImageStandardOutputConfigurationProperty where
  type PropertyType "GenerativeField" ImageStandardOutputConfigurationProperty = ImageStandardGenerativeFieldProperty
  set newValue ImageStandardOutputConfigurationProperty {..}
    = ImageStandardOutputConfigurationProperty
        {generativeField = Prelude.pure newValue, ..}