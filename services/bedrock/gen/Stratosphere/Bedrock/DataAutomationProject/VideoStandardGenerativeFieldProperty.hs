module Stratosphere.Bedrock.DataAutomationProject.VideoStandardGenerativeFieldProperty (
        VideoStandardGenerativeFieldProperty(..),
        mkVideoStandardGenerativeFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoStandardGenerativeFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardgenerativefield.html>
    VideoStandardGenerativeFieldProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardgenerativefield.html#cfn-bedrock-dataautomationproject-videostandardgenerativefield-state>
                                          state :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardgenerativefield.html#cfn-bedrock-dataautomationproject-videostandardgenerativefield-types>
                                          types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoStandardGenerativeFieldProperty ::
  Value Prelude.Text -> VideoStandardGenerativeFieldProperty
mkVideoStandardGenerativeFieldProperty state
  = VideoStandardGenerativeFieldProperty
      {haddock_workaround_ = (), state = state, types = Prelude.Nothing}
instance ToResourceProperties VideoStandardGenerativeFieldProperty where
  toResourceProperties VideoStandardGenerativeFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.VideoStandardGenerativeField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["State" JSON..= state]
                           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))}
instance JSON.ToJSON VideoStandardGenerativeFieldProperty where
  toJSON VideoStandardGenerativeFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["State" JSON..= state]
              (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])))
instance Property "State" VideoStandardGenerativeFieldProperty where
  type PropertyType "State" VideoStandardGenerativeFieldProperty = Value Prelude.Text
  set newValue VideoStandardGenerativeFieldProperty {..}
    = VideoStandardGenerativeFieldProperty {state = newValue, ..}
instance Property "Types" VideoStandardGenerativeFieldProperty where
  type PropertyType "Types" VideoStandardGenerativeFieldProperty = ValueList Prelude.Text
  set newValue VideoStandardGenerativeFieldProperty {..}
    = VideoStandardGenerativeFieldProperty
        {types = Prelude.pure newValue, ..}