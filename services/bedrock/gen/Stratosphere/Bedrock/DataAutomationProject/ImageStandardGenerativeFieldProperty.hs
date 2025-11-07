module Stratosphere.Bedrock.DataAutomationProject.ImageStandardGenerativeFieldProperty (
        ImageStandardGenerativeFieldProperty(..),
        mkImageStandardGenerativeFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageStandardGenerativeFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardgenerativefield.html>
    ImageStandardGenerativeFieldProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardgenerativefield.html#cfn-bedrock-dataautomationproject-imagestandardgenerativefield-state>
                                          state :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardgenerativefield.html#cfn-bedrock-dataautomationproject-imagestandardgenerativefield-types>
                                          types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageStandardGenerativeFieldProperty ::
  Value Prelude.Text -> ImageStandardGenerativeFieldProperty
mkImageStandardGenerativeFieldProperty state
  = ImageStandardGenerativeFieldProperty
      {haddock_workaround_ = (), state = state, types = Prelude.Nothing}
instance ToResourceProperties ImageStandardGenerativeFieldProperty where
  toResourceProperties ImageStandardGenerativeFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ImageStandardGenerativeField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["State" JSON..= state]
                           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))}
instance JSON.ToJSON ImageStandardGenerativeFieldProperty where
  toJSON ImageStandardGenerativeFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["State" JSON..= state]
              (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])))
instance Property "State" ImageStandardGenerativeFieldProperty where
  type PropertyType "State" ImageStandardGenerativeFieldProperty = Value Prelude.Text
  set newValue ImageStandardGenerativeFieldProperty {..}
    = ImageStandardGenerativeFieldProperty {state = newValue, ..}
instance Property "Types" ImageStandardGenerativeFieldProperty where
  type PropertyType "Types" ImageStandardGenerativeFieldProperty = ValueList Prelude.Text
  set newValue ImageStandardGenerativeFieldProperty {..}
    = ImageStandardGenerativeFieldProperty
        {types = Prelude.pure newValue, ..}