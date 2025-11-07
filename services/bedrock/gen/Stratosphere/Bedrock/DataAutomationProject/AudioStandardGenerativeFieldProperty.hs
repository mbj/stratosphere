module Stratosphere.Bedrock.DataAutomationProject.AudioStandardGenerativeFieldProperty (
        AudioStandardGenerativeFieldProperty(..),
        mkAudioStandardGenerativeFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioStandardGenerativeFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardgenerativefield.html>
    AudioStandardGenerativeFieldProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardgenerativefield.html#cfn-bedrock-dataautomationproject-audiostandardgenerativefield-state>
                                          state :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardgenerativefield.html#cfn-bedrock-dataautomationproject-audiostandardgenerativefield-types>
                                          types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioStandardGenerativeFieldProperty ::
  Value Prelude.Text -> AudioStandardGenerativeFieldProperty
mkAudioStandardGenerativeFieldProperty state
  = AudioStandardGenerativeFieldProperty
      {haddock_workaround_ = (), state = state, types = Prelude.Nothing}
instance ToResourceProperties AudioStandardGenerativeFieldProperty where
  toResourceProperties AudioStandardGenerativeFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.AudioStandardGenerativeField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["State" JSON..= state]
                           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))}
instance JSON.ToJSON AudioStandardGenerativeFieldProperty where
  toJSON AudioStandardGenerativeFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["State" JSON..= state]
              (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])))
instance Property "State" AudioStandardGenerativeFieldProperty where
  type PropertyType "State" AudioStandardGenerativeFieldProperty = Value Prelude.Text
  set newValue AudioStandardGenerativeFieldProperty {..}
    = AudioStandardGenerativeFieldProperty {state = newValue, ..}
instance Property "Types" AudioStandardGenerativeFieldProperty where
  type PropertyType "Types" AudioStandardGenerativeFieldProperty = ValueList Prelude.Text
  set newValue AudioStandardGenerativeFieldProperty {..}
    = AudioStandardGenerativeFieldProperty
        {types = Prelude.pure newValue, ..}