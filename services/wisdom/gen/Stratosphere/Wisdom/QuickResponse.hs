module Stratosphere.Wisdom.QuickResponse (
        module Exports, QuickResponse(..), mkQuickResponse
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.QuickResponse.GroupingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.QuickResponse.QuickResponseContentProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data QuickResponse
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html>
    QuickResponse {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-channels>
                   channels :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-content>
                   content :: QuickResponseContentProviderProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-contenttype>
                   contentType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-groupingconfiguration>
                   groupingConfiguration :: (Prelude.Maybe GroupingConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-isactive>
                   isActive :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-knowledgebasearn>
                   knowledgeBaseArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-language>
                   language :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-shortcutkey>
                   shortcutKey :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-quickresponse.html#cfn-wisdom-quickresponse-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickResponse ::
  QuickResponseContentProviderProperty
  -> Value Prelude.Text -> Value Prelude.Text -> QuickResponse
mkQuickResponse content knowledgeBaseArn name
  = QuickResponse
      {haddock_workaround_ = (), content = content,
       knowledgeBaseArn = knowledgeBaseArn, name = name,
       channels = Prelude.Nothing, contentType = Prelude.Nothing,
       description = Prelude.Nothing,
       groupingConfiguration = Prelude.Nothing,
       isActive = Prelude.Nothing, language = Prelude.Nothing,
       shortcutKey = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties QuickResponse where
  toResourceProperties QuickResponse {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::QuickResponse",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content,
                            "KnowledgeBaseArn" JSON..= knowledgeBaseArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Channels" Prelude.<$> channels,
                               (JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GroupingConfiguration"
                                 Prelude.<$> groupingConfiguration,
                               (JSON..=) "IsActive" Prelude.<$> isActive,
                               (JSON..=) "Language" Prelude.<$> language,
                               (JSON..=) "ShortcutKey" Prelude.<$> shortcutKey,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON QuickResponse where
  toJSON QuickResponse {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content,
               "KnowledgeBaseArn" JSON..= knowledgeBaseArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Channels" Prelude.<$> channels,
                  (JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GroupingConfiguration"
                    Prelude.<$> groupingConfiguration,
                  (JSON..=) "IsActive" Prelude.<$> isActive,
                  (JSON..=) "Language" Prelude.<$> language,
                  (JSON..=) "ShortcutKey" Prelude.<$> shortcutKey,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Channels" QuickResponse where
  type PropertyType "Channels" QuickResponse = ValueList Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {channels = Prelude.pure newValue, ..}
instance Property "Content" QuickResponse where
  type PropertyType "Content" QuickResponse = QuickResponseContentProviderProperty
  set newValue QuickResponse {..}
    = QuickResponse {content = newValue, ..}
instance Property "ContentType" QuickResponse where
  type PropertyType "ContentType" QuickResponse = Value Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {contentType = Prelude.pure newValue, ..}
instance Property "Description" QuickResponse where
  type PropertyType "Description" QuickResponse = Value Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {description = Prelude.pure newValue, ..}
instance Property "GroupingConfiguration" QuickResponse where
  type PropertyType "GroupingConfiguration" QuickResponse = GroupingConfigurationProperty
  set newValue QuickResponse {..}
    = QuickResponse {groupingConfiguration = Prelude.pure newValue, ..}
instance Property "IsActive" QuickResponse where
  type PropertyType "IsActive" QuickResponse = Value Prelude.Bool
  set newValue QuickResponse {..}
    = QuickResponse {isActive = Prelude.pure newValue, ..}
instance Property "KnowledgeBaseArn" QuickResponse where
  type PropertyType "KnowledgeBaseArn" QuickResponse = Value Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {knowledgeBaseArn = newValue, ..}
instance Property "Language" QuickResponse where
  type PropertyType "Language" QuickResponse = Value Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {language = Prelude.pure newValue, ..}
instance Property "Name" QuickResponse where
  type PropertyType "Name" QuickResponse = Value Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {name = newValue, ..}
instance Property "ShortcutKey" QuickResponse where
  type PropertyType "ShortcutKey" QuickResponse = Value Prelude.Text
  set newValue QuickResponse {..}
    = QuickResponse {shortcutKey = Prelude.pure newValue, ..}
instance Property "Tags" QuickResponse where
  type PropertyType "Tags" QuickResponse = [Tag]
  set newValue QuickResponse {..}
    = QuickResponse {tags = Prelude.pure newValue, ..}