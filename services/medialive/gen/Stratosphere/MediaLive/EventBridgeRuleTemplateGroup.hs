module Stratosphere.MediaLive.EventBridgeRuleTemplateGroup (
        EventBridgeRuleTemplateGroup(..), mkEventBridgeRuleTemplateGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeRuleTemplateGroup
  = EventBridgeRuleTemplateGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
                                  name :: (Value Prelude.Text),
                                  tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeRuleTemplateGroup ::
  Value Prelude.Text -> EventBridgeRuleTemplateGroup
mkEventBridgeRuleTemplateGroup name
  = EventBridgeRuleTemplateGroup
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EventBridgeRuleTemplateGroup where
  toResourceProperties EventBridgeRuleTemplateGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::EventBridgeRuleTemplateGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventBridgeRuleTemplateGroup where
  toJSON EventBridgeRuleTemplateGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EventBridgeRuleTemplateGroup where
  type PropertyType "Description" EventBridgeRuleTemplateGroup = Value Prelude.Text
  set newValue EventBridgeRuleTemplateGroup {..}
    = EventBridgeRuleTemplateGroup
        {description = Prelude.pure newValue, ..}
instance Property "Name" EventBridgeRuleTemplateGroup where
  type PropertyType "Name" EventBridgeRuleTemplateGroup = Value Prelude.Text
  set newValue EventBridgeRuleTemplateGroup {..}
    = EventBridgeRuleTemplateGroup {name = newValue, ..}
instance Property "Tags" EventBridgeRuleTemplateGroup where
  type PropertyType "Tags" EventBridgeRuleTemplateGroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EventBridgeRuleTemplateGroup {..}
    = EventBridgeRuleTemplateGroup {tags = Prelude.pure newValue, ..}