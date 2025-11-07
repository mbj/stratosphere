module Stratosphere.Bedrock.DataAutomationProject.VideoExtractionCategoryProperty (
        VideoExtractionCategoryProperty(..),
        mkVideoExtractionCategoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoExtractionCategoryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videoextractioncategory.html>
    VideoExtractionCategoryProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videoextractioncategory.html#cfn-bedrock-dataautomationproject-videoextractioncategory-state>
                                     state :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videoextractioncategory.html#cfn-bedrock-dataautomationproject-videoextractioncategory-types>
                                     types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoExtractionCategoryProperty ::
  Value Prelude.Text -> VideoExtractionCategoryProperty
mkVideoExtractionCategoryProperty state
  = VideoExtractionCategoryProperty
      {haddock_workaround_ = (), state = state, types = Prelude.Nothing}
instance ToResourceProperties VideoExtractionCategoryProperty where
  toResourceProperties VideoExtractionCategoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.VideoExtractionCategory",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["State" JSON..= state]
                           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))}
instance JSON.ToJSON VideoExtractionCategoryProperty where
  toJSON VideoExtractionCategoryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["State" JSON..= state]
              (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])))
instance Property "State" VideoExtractionCategoryProperty where
  type PropertyType "State" VideoExtractionCategoryProperty = Value Prelude.Text
  set newValue VideoExtractionCategoryProperty {..}
    = VideoExtractionCategoryProperty {state = newValue, ..}
instance Property "Types" VideoExtractionCategoryProperty where
  type PropertyType "Types" VideoExtractionCategoryProperty = ValueList Prelude.Text
  set newValue VideoExtractionCategoryProperty {..}
    = VideoExtractionCategoryProperty
        {types = Prelude.pure newValue, ..}