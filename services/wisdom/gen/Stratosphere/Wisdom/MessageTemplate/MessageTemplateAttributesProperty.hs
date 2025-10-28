module Stratosphere.Wisdom.MessageTemplate.MessageTemplateAttributesProperty (
        module Exports, MessageTemplateAttributesProperty(..),
        mkMessageTemplateAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.AgentAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.CustomerProfileAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.SystemAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageTemplateAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html>
    MessageTemplateAttributesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-agentattributes>
                                       agentAttributes :: (Prelude.Maybe AgentAttributesProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-customattributes>
                                       customAttributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-customerprofileattributes>
                                       customerProfileAttributes :: (Prelude.Maybe CustomerProfileAttributesProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-systemattributes>
                                       systemAttributes :: (Prelude.Maybe SystemAttributesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageTemplateAttributesProperty ::
  MessageTemplateAttributesProperty
mkMessageTemplateAttributesProperty
  = MessageTemplateAttributesProperty
      {haddock_workaround_ = (), agentAttributes = Prelude.Nothing,
       customAttributes = Prelude.Nothing,
       customerProfileAttributes = Prelude.Nothing,
       systemAttributes = Prelude.Nothing}
instance ToResourceProperties MessageTemplateAttributesProperty where
  toResourceProperties MessageTemplateAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.MessageTemplateAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AgentAttributes" Prelude.<$> agentAttributes,
                            (JSON..=) "CustomAttributes" Prelude.<$> customAttributes,
                            (JSON..=) "CustomerProfileAttributes"
                              Prelude.<$> customerProfileAttributes,
                            (JSON..=) "SystemAttributes" Prelude.<$> systemAttributes])}
instance JSON.ToJSON MessageTemplateAttributesProperty where
  toJSON MessageTemplateAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AgentAttributes" Prelude.<$> agentAttributes,
               (JSON..=) "CustomAttributes" Prelude.<$> customAttributes,
               (JSON..=) "CustomerProfileAttributes"
                 Prelude.<$> customerProfileAttributes,
               (JSON..=) "SystemAttributes" Prelude.<$> systemAttributes]))
instance Property "AgentAttributes" MessageTemplateAttributesProperty where
  type PropertyType "AgentAttributes" MessageTemplateAttributesProperty = AgentAttributesProperty
  set newValue MessageTemplateAttributesProperty {..}
    = MessageTemplateAttributesProperty
        {agentAttributes = Prelude.pure newValue, ..}
instance Property "CustomAttributes" MessageTemplateAttributesProperty where
  type PropertyType "CustomAttributes" MessageTemplateAttributesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue MessageTemplateAttributesProperty {..}
    = MessageTemplateAttributesProperty
        {customAttributes = Prelude.pure newValue, ..}
instance Property "CustomerProfileAttributes" MessageTemplateAttributesProperty where
  type PropertyType "CustomerProfileAttributes" MessageTemplateAttributesProperty = CustomerProfileAttributesProperty
  set newValue MessageTemplateAttributesProperty {..}
    = MessageTemplateAttributesProperty
        {customerProfileAttributes = Prelude.pure newValue, ..}
instance Property "SystemAttributes" MessageTemplateAttributesProperty where
  type PropertyType "SystemAttributes" MessageTemplateAttributesProperty = SystemAttributesProperty
  set newValue MessageTemplateAttributesProperty {..}
    = MessageTemplateAttributesProperty
        {systemAttributes = Prelude.pure newValue, ..}