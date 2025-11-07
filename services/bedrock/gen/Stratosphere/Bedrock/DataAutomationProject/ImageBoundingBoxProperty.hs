module Stratosphere.Bedrock.DataAutomationProject.ImageBoundingBoxProperty (
        ImageBoundingBoxProperty(..), mkImageBoundingBoxProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageBoundingBoxProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageboundingbox.html>
    ImageBoundingBoxProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageboundingbox.html#cfn-bedrock-dataautomationproject-imageboundingbox-state>
                              state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageBoundingBoxProperty ::
  Value Prelude.Text -> ImageBoundingBoxProperty
mkImageBoundingBoxProperty state
  = ImageBoundingBoxProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties ImageBoundingBoxProperty where
  toResourceProperties ImageBoundingBoxProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ImageBoundingBox",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON ImageBoundingBoxProperty where
  toJSON ImageBoundingBoxProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" ImageBoundingBoxProperty where
  type PropertyType "State" ImageBoundingBoxProperty = Value Prelude.Text
  set newValue ImageBoundingBoxProperty {..}
    = ImageBoundingBoxProperty {state = newValue, ..}