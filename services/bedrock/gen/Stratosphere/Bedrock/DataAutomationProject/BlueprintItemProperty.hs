module Stratosphere.Bedrock.DataAutomationProject.BlueprintItemProperty (
        BlueprintItemProperty(..), mkBlueprintItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlueprintItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-blueprintitem.html>
    BlueprintItemProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-blueprintitem.html#cfn-bedrock-dataautomationproject-blueprintitem-blueprintarn>
                           blueprintArn :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-blueprintitem.html#cfn-bedrock-dataautomationproject-blueprintitem-blueprintstage>
                           blueprintStage :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-blueprintitem.html#cfn-bedrock-dataautomationproject-blueprintitem-blueprintversion>
                           blueprintVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlueprintItemProperty ::
  Value Prelude.Text -> BlueprintItemProperty
mkBlueprintItemProperty blueprintArn
  = BlueprintItemProperty
      {haddock_workaround_ = (), blueprintArn = blueprintArn,
       blueprintStage = Prelude.Nothing,
       blueprintVersion = Prelude.Nothing}
instance ToResourceProperties BlueprintItemProperty where
  toResourceProperties BlueprintItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.BlueprintItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BlueprintArn" JSON..= blueprintArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BlueprintStage" Prelude.<$> blueprintStage,
                               (JSON..=) "BlueprintVersion" Prelude.<$> blueprintVersion]))}
instance JSON.ToJSON BlueprintItemProperty where
  toJSON BlueprintItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BlueprintArn" JSON..= blueprintArn]
              (Prelude.catMaybes
                 [(JSON..=) "BlueprintStage" Prelude.<$> blueprintStage,
                  (JSON..=) "BlueprintVersion" Prelude.<$> blueprintVersion])))
instance Property "BlueprintArn" BlueprintItemProperty where
  type PropertyType "BlueprintArn" BlueprintItemProperty = Value Prelude.Text
  set newValue BlueprintItemProperty {..}
    = BlueprintItemProperty {blueprintArn = newValue, ..}
instance Property "BlueprintStage" BlueprintItemProperty where
  type PropertyType "BlueprintStage" BlueprintItemProperty = Value Prelude.Text
  set newValue BlueprintItemProperty {..}
    = BlueprintItemProperty
        {blueprintStage = Prelude.pure newValue, ..}
instance Property "BlueprintVersion" BlueprintItemProperty where
  type PropertyType "BlueprintVersion" BlueprintItemProperty = Value Prelude.Text
  set newValue BlueprintItemProperty {..}
    = BlueprintItemProperty
        {blueprintVersion = Prelude.pure newValue, ..}