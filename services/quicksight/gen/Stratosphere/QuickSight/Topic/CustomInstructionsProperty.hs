module Stratosphere.QuickSight.Topic.CustomInstructionsProperty (
        CustomInstructionsProperty(..), mkCustomInstructionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomInstructionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-custominstructions.html>
    CustomInstructionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-custominstructions.html#cfn-quicksight-topic-custominstructions-custominstructionsstring>
                                customInstructionsString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomInstructionsProperty ::
  Value Prelude.Text -> CustomInstructionsProperty
mkCustomInstructionsProperty customInstructionsString
  = CustomInstructionsProperty
      {haddock_workaround_ = (),
       customInstructionsString = customInstructionsString}
instance ToResourceProperties CustomInstructionsProperty where
  toResourceProperties CustomInstructionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.CustomInstructions",
         supportsTags = Prelude.False,
         properties = ["CustomInstructionsString"
                         JSON..= customInstructionsString]}
instance JSON.ToJSON CustomInstructionsProperty where
  toJSON CustomInstructionsProperty {..}
    = JSON.object
        ["CustomInstructionsString" JSON..= customInstructionsString]
instance Property "CustomInstructionsString" CustomInstructionsProperty where
  type PropertyType "CustomInstructionsString" CustomInstructionsProperty = Value Prelude.Text
  set newValue CustomInstructionsProperty {..}
    = CustomInstructionsProperty
        {customInstructionsString = newValue, ..}