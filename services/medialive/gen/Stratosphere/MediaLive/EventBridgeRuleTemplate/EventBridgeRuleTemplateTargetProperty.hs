module Stratosphere.MediaLive.EventBridgeRuleTemplate.EventBridgeRuleTemplateTargetProperty (
        EventBridgeRuleTemplateTargetProperty(..),
        mkEventBridgeRuleTemplateTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeRuleTemplateTargetProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-eventbridgeruletemplate-eventbridgeruletemplatetarget.html>
    EventBridgeRuleTemplateTargetProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-eventbridgeruletemplate-eventbridgeruletemplatetarget.html#cfn-medialive-eventbridgeruletemplate-eventbridgeruletemplatetarget-arn>
                                           arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeRuleTemplateTargetProperty ::
  Value Prelude.Text -> EventBridgeRuleTemplateTargetProperty
mkEventBridgeRuleTemplateTargetProperty arn
  = EventBridgeRuleTemplateTargetProperty {arn = arn}
instance ToResourceProperties EventBridgeRuleTemplateTargetProperty where
  toResourceProperties EventBridgeRuleTemplateTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::EventBridgeRuleTemplate.EventBridgeRuleTemplateTarget",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON EventBridgeRuleTemplateTargetProperty where
  toJSON EventBridgeRuleTemplateTargetProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" EventBridgeRuleTemplateTargetProperty where
  type PropertyType "Arn" EventBridgeRuleTemplateTargetProperty = Value Prelude.Text
  set newValue EventBridgeRuleTemplateTargetProperty {}
    = EventBridgeRuleTemplateTargetProperty {arn = newValue, ..}