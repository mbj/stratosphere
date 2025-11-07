module Stratosphere.Bedrock.DataAutomationProject.VideoBoundingBoxProperty (
        VideoBoundingBoxProperty(..), mkVideoBoundingBoxProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoBoundingBoxProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videoboundingbox.html>
    VideoBoundingBoxProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videoboundingbox.html#cfn-bedrock-dataautomationproject-videoboundingbox-state>
                              state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoBoundingBoxProperty ::
  Value Prelude.Text -> VideoBoundingBoxProperty
mkVideoBoundingBoxProperty state
  = VideoBoundingBoxProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties VideoBoundingBoxProperty where
  toResourceProperties VideoBoundingBoxProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.VideoBoundingBox",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON VideoBoundingBoxProperty where
  toJSON VideoBoundingBoxProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" VideoBoundingBoxProperty where
  type PropertyType "State" VideoBoundingBoxProperty = Value Prelude.Text
  set newValue VideoBoundingBoxProperty {..}
    = VideoBoundingBoxProperty {state = newValue, ..}