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
  = Assistant {description :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Value Prelude.Text),
               serverSideEncryptionConfiguration :: (Prelude.Maybe ServerSideEncryptionConfigurationProperty),
               tags :: (Prelude.Maybe [Tag]),
               type' :: (Value Prelude.Text)}
mkAssistant ::
  Value Prelude.Text -> Value Prelude.Text -> Assistant
mkAssistant name type'
  = Assistant
      {name = name, type' = type', description = Prelude.Nothing,
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