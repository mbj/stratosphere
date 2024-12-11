module Stratosphere.Wisdom.MessageTemplate (
        module Exports, MessageTemplate(..), mkMessageTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.ContentProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.GroupingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.MessageTemplateAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MessageTemplate
  = MessageTemplate {channelSubtype :: (Value Prelude.Text),
                     content :: ContentProperty,
                     defaultAttributes :: (Prelude.Maybe MessageTemplateAttributesProperty),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     groupingConfiguration :: (Prelude.Maybe GroupingConfigurationProperty),
                     knowledgeBaseArn :: (Value Prelude.Text),
                     language :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageTemplate ::
  Value Prelude.Text
  -> ContentProperty
     -> Value Prelude.Text -> Value Prelude.Text -> MessageTemplate
mkMessageTemplate channelSubtype content knowledgeBaseArn name
  = MessageTemplate
      {channelSubtype = channelSubtype, content = content,
       knowledgeBaseArn = knowledgeBaseArn, name = name,
       defaultAttributes = Prelude.Nothing, description = Prelude.Nothing,
       groupingConfiguration = Prelude.Nothing,
       language = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MessageTemplate where
  toResourceProperties MessageTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelSubtype" JSON..= channelSubtype,
                            "Content" JSON..= content,
                            "KnowledgeBaseArn" JSON..= knowledgeBaseArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultAttributes" Prelude.<$> defaultAttributes,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GroupingConfiguration"
                                 Prelude.<$> groupingConfiguration,
                               (JSON..=) "Language" Prelude.<$> language,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MessageTemplate where
  toJSON MessageTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelSubtype" JSON..= channelSubtype,
               "Content" JSON..= content,
               "KnowledgeBaseArn" JSON..= knowledgeBaseArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultAttributes" Prelude.<$> defaultAttributes,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GroupingConfiguration"
                    Prelude.<$> groupingConfiguration,
                  (JSON..=) "Language" Prelude.<$> language,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChannelSubtype" MessageTemplate where
  type PropertyType "ChannelSubtype" MessageTemplate = Value Prelude.Text
  set newValue MessageTemplate {..}
    = MessageTemplate {channelSubtype = newValue, ..}
instance Property "Content" MessageTemplate where
  type PropertyType "Content" MessageTemplate = ContentProperty
  set newValue MessageTemplate {..}
    = MessageTemplate {content = newValue, ..}
instance Property "DefaultAttributes" MessageTemplate where
  type PropertyType "DefaultAttributes" MessageTemplate = MessageTemplateAttributesProperty
  set newValue MessageTemplate {..}
    = MessageTemplate {defaultAttributes = Prelude.pure newValue, ..}
instance Property "Description" MessageTemplate where
  type PropertyType "Description" MessageTemplate = Value Prelude.Text
  set newValue MessageTemplate {..}
    = MessageTemplate {description = Prelude.pure newValue, ..}
instance Property "GroupingConfiguration" MessageTemplate where
  type PropertyType "GroupingConfiguration" MessageTemplate = GroupingConfigurationProperty
  set newValue MessageTemplate {..}
    = MessageTemplate
        {groupingConfiguration = Prelude.pure newValue, ..}
instance Property "KnowledgeBaseArn" MessageTemplate where
  type PropertyType "KnowledgeBaseArn" MessageTemplate = Value Prelude.Text
  set newValue MessageTemplate {..}
    = MessageTemplate {knowledgeBaseArn = newValue, ..}
instance Property "Language" MessageTemplate where
  type PropertyType "Language" MessageTemplate = Value Prelude.Text
  set newValue MessageTemplate {..}
    = MessageTemplate {language = Prelude.pure newValue, ..}
instance Property "Name" MessageTemplate where
  type PropertyType "Name" MessageTemplate = Value Prelude.Text
  set newValue MessageTemplate {..}
    = MessageTemplate {name = newValue, ..}
instance Property "Tags" MessageTemplate where
  type PropertyType "Tags" MessageTemplate = [Tag]
  set newValue MessageTemplate {..}
    = MessageTemplate {tags = Prelude.pure newValue, ..}