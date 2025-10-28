module Stratosphere.Wisdom.Assistant (
        module Exports, Assistant(..), mkAssistant
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.Assistant.ServerSideEncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Assistant
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-assistant.html>
    Assistant {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-assistant.html#cfn-wisdom-assistant-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-assistant.html#cfn-wisdom-assistant-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-assistant.html#cfn-wisdom-assistant-serversideencryptionconfiguration>
               serverSideEncryptionConfiguration :: (Prelude.Maybe ServerSideEncryptionConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-assistant.html#cfn-wisdom-assistant-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-assistant.html#cfn-wisdom-assistant-type>
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssistant ::
  Value Prelude.Text -> Value Prelude.Text -> Assistant
mkAssistant name type'
  = Assistant
      {haddock_workaround_ = (), name = name, type' = type',
       description = Prelude.Nothing,
       serverSideEncryptionConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Assistant where
  toResourceProperties Assistant {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::Assistant", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ServerSideEncryptionConfiguration"
                                 Prelude.<$> serverSideEncryptionConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Assistant where
  toJSON Assistant {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ServerSideEncryptionConfiguration"
                    Prelude.<$> serverSideEncryptionConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Assistant where
  type PropertyType "Description" Assistant = Value Prelude.Text
  set newValue Assistant {..}
    = Assistant {description = Prelude.pure newValue, ..}
instance Property "Name" Assistant where
  type PropertyType "Name" Assistant = Value Prelude.Text
  set newValue Assistant {..} = Assistant {name = newValue, ..}
instance Property "ServerSideEncryptionConfiguration" Assistant where
  type PropertyType "ServerSideEncryptionConfiguration" Assistant = ServerSideEncryptionConfigurationProperty
  set newValue Assistant {..}
    = Assistant
        {serverSideEncryptionConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Assistant where
  type PropertyType "Tags" Assistant = [Tag]
  set newValue Assistant {..}
    = Assistant {tags = Prelude.pure newValue, ..}
instance Property "Type" Assistant where
  type PropertyType "Type" Assistant = Value Prelude.Text
  set newValue Assistant {..} = Assistant {type' = newValue, ..}