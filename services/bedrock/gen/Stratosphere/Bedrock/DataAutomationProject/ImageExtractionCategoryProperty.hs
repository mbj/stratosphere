module Stratosphere.Bedrock.DataAutomationProject.ImageExtractionCategoryProperty (
        ImageExtractionCategoryProperty(..),
        mkImageExtractionCategoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageExtractionCategoryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageextractioncategory.html>
    ImageExtractionCategoryProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageextractioncategory.html#cfn-bedrock-dataautomationproject-imageextractioncategory-state>
                                     state :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageextractioncategory.html#cfn-bedrock-dataautomationproject-imageextractioncategory-types>
                                     types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageExtractionCategoryProperty ::
  Value Prelude.Text -> ImageExtractionCategoryProperty
mkImageExtractionCategoryProperty state
  = ImageExtractionCategoryProperty
      {haddock_workaround_ = (), state = state, types = Prelude.Nothing}
instance ToResourceProperties ImageExtractionCategoryProperty where
  toResourceProperties ImageExtractionCategoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ImageExtractionCategory",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["State" JSON..= state]
                           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))}
instance JSON.ToJSON ImageExtractionCategoryProperty where
  toJSON ImageExtractionCategoryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["State" JSON..= state]
              (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])))
instance Property "State" ImageExtractionCategoryProperty where
  type PropertyType "State" ImageExtractionCategoryProperty = Value Prelude.Text
  set newValue ImageExtractionCategoryProperty {..}
    = ImageExtractionCategoryProperty {state = newValue, ..}
instance Property "Types" ImageExtractionCategoryProperty where
  type PropertyType "Types" ImageExtractionCategoryProperty = ValueList Prelude.Text
  set newValue ImageExtractionCategoryProperty {..}
    = ImageExtractionCategoryProperty
        {types = Prelude.pure newValue, ..}