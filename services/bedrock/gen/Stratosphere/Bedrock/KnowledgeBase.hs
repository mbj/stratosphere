module Stratosphere.Bedrock.KnowledgeBase (
        module Exports, KnowledgeBase(..), mkKnowledgeBase
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.KnowledgeBaseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.StorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBase
  = KnowledgeBase {description :: (Prelude.Maybe (Value Prelude.Text)),
                   knowledgeBaseConfiguration :: KnowledgeBaseConfigurationProperty,
                   name :: (Value Prelude.Text),
                   roleArn :: (Value Prelude.Text),
                   storageConfiguration :: StorageConfigurationProperty,
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBase ::
  KnowledgeBaseConfigurationProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> StorageConfigurationProperty -> KnowledgeBase
mkKnowledgeBase
  knowledgeBaseConfiguration
  name
  roleArn
  storageConfiguration
  = KnowledgeBase
      {knowledgeBaseConfiguration = knowledgeBaseConfiguration,
       name = name, roleArn = roleArn,
       storageConfiguration = storageConfiguration,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties KnowledgeBase where
  toResourceProperties KnowledgeBase {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KnowledgeBaseConfiguration" JSON..= knowledgeBaseConfiguration,
                            "Name" JSON..= name, "RoleArn" JSON..= roleArn,
                            "StorageConfiguration" JSON..= storageConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON KnowledgeBase where
  toJSON KnowledgeBase {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KnowledgeBaseConfiguration" JSON..= knowledgeBaseConfiguration,
               "Name" JSON..= name, "RoleArn" JSON..= roleArn,
               "StorageConfiguration" JSON..= storageConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" KnowledgeBase where
  type PropertyType "Description" KnowledgeBase = Value Prelude.Text
  set newValue KnowledgeBase {..}
    = KnowledgeBase {description = Prelude.pure newValue, ..}
instance Property "KnowledgeBaseConfiguration" KnowledgeBase where
  type PropertyType "KnowledgeBaseConfiguration" KnowledgeBase = KnowledgeBaseConfigurationProperty
  set newValue KnowledgeBase {..}
    = KnowledgeBase {knowledgeBaseConfiguration = newValue, ..}
instance Property "Name" KnowledgeBase where
  type PropertyType "Name" KnowledgeBase = Value Prelude.Text
  set newValue KnowledgeBase {..}
    = KnowledgeBase {name = newValue, ..}
instance Property "RoleArn" KnowledgeBase where
  type PropertyType "RoleArn" KnowledgeBase = Value Prelude.Text
  set newValue KnowledgeBase {..}
    = KnowledgeBase {roleArn = newValue, ..}
instance Property "StorageConfiguration" KnowledgeBase where
  type PropertyType "StorageConfiguration" KnowledgeBase = StorageConfigurationProperty
  set newValue KnowledgeBase {..}
    = KnowledgeBase {storageConfiguration = newValue, ..}
instance Property "Tags" KnowledgeBase where
  type PropertyType "Tags" KnowledgeBase = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue KnowledgeBase {..}
    = KnowledgeBase {tags = Prelude.pure newValue, ..}