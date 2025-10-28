module Stratosphere.KafkaConnect.CustomPlugin (
        module Exports, CustomPlugin(..), mkCustomPlugin
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.CustomPlugin.CustomPluginLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomPlugin
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-customplugin.html>
    CustomPlugin {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-customplugin.html#cfn-kafkaconnect-customplugin-contenttype>
                  contentType :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-customplugin.html#cfn-kafkaconnect-customplugin-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-customplugin.html#cfn-kafkaconnect-customplugin-location>
                  location :: CustomPluginLocationProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-customplugin.html#cfn-kafkaconnect-customplugin-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-customplugin.html#cfn-kafkaconnect-customplugin-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPlugin ::
  Value Prelude.Text
  -> CustomPluginLocationProperty
     -> Value Prelude.Text -> CustomPlugin
mkCustomPlugin contentType location name
  = CustomPlugin
      {haddock_workaround_ = (), contentType = contentType,
       location = location, name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CustomPlugin where
  toResourceProperties CustomPlugin {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::CustomPlugin",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContentType" JSON..= contentType, "Location" JSON..= location,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomPlugin where
  toJSON CustomPlugin {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContentType" JSON..= contentType, "Location" JSON..= location,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContentType" CustomPlugin where
  type PropertyType "ContentType" CustomPlugin = Value Prelude.Text
  set newValue CustomPlugin {..}
    = CustomPlugin {contentType = newValue, ..}
instance Property "Description" CustomPlugin where
  type PropertyType "Description" CustomPlugin = Value Prelude.Text
  set newValue CustomPlugin {..}
    = CustomPlugin {description = Prelude.pure newValue, ..}
instance Property "Location" CustomPlugin where
  type PropertyType "Location" CustomPlugin = CustomPluginLocationProperty
  set newValue CustomPlugin {..}
    = CustomPlugin {location = newValue, ..}
instance Property "Name" CustomPlugin where
  type PropertyType "Name" CustomPlugin = Value Prelude.Text
  set newValue CustomPlugin {..} = CustomPlugin {name = newValue, ..}
instance Property "Tags" CustomPlugin where
  type PropertyType "Tags" CustomPlugin = [Tag]
  set newValue CustomPlugin {..}
    = CustomPlugin {tags = Prelude.pure newValue, ..}