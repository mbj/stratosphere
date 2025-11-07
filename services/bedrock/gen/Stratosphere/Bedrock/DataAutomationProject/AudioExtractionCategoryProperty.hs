module Stratosphere.Bedrock.DataAutomationProject.AudioExtractionCategoryProperty (
        module Exports, AudioExtractionCategoryProperty(..),
        mkAudioExtractionCategoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.AudioExtractionCategoryTypeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioExtractionCategoryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html>
    AudioExtractionCategoryProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html#cfn-bedrock-dataautomationproject-audioextractioncategory-state>
                                     state :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html#cfn-bedrock-dataautomationproject-audioextractioncategory-typeconfiguration>
                                     typeConfiguration :: (Prelude.Maybe AudioExtractionCategoryTypeConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html#cfn-bedrock-dataautomationproject-audioextractioncategory-types>
                                     types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioExtractionCategoryProperty ::
  Value Prelude.Text -> AudioExtractionCategoryProperty
mkAudioExtractionCategoryProperty state
  = AudioExtractionCategoryProperty
      {haddock_workaround_ = (), state = state,
       typeConfiguration = Prelude.Nothing, types = Prelude.Nothing}
instance ToResourceProperties AudioExtractionCategoryProperty where
  toResourceProperties AudioExtractionCategoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.AudioExtractionCategory",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["State" JSON..= state]
                           (Prelude.catMaybes
                              [(JSON..=) "TypeConfiguration" Prelude.<$> typeConfiguration,
                               (JSON..=) "Types" Prelude.<$> types]))}
instance JSON.ToJSON AudioExtractionCategoryProperty where
  toJSON AudioExtractionCategoryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["State" JSON..= state]
              (Prelude.catMaybes
                 [(JSON..=) "TypeConfiguration" Prelude.<$> typeConfiguration,
                  (JSON..=) "Types" Prelude.<$> types])))
instance Property "State" AudioExtractionCategoryProperty where
  type PropertyType "State" AudioExtractionCategoryProperty = Value Prelude.Text
  set newValue AudioExtractionCategoryProperty {..}
    = AudioExtractionCategoryProperty {state = newValue, ..}
instance Property "TypeConfiguration" AudioExtractionCategoryProperty where
  type PropertyType "TypeConfiguration" AudioExtractionCategoryProperty = AudioExtractionCategoryTypeConfigurationProperty
  set newValue AudioExtractionCategoryProperty {..}
    = AudioExtractionCategoryProperty
        {typeConfiguration = Prelude.pure newValue, ..}
instance Property "Types" AudioExtractionCategoryProperty where
  type PropertyType "Types" AudioExtractionCategoryProperty = ValueList Prelude.Text
  set newValue AudioExtractionCategoryProperty {..}
    = AudioExtractionCategoryProperty
        {types = Prelude.pure newValue, ..}