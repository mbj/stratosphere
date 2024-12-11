module Stratosphere.Bedrock.KnowledgeBase.StorageConfigurationProperty (
        module Exports, StorageConfigurationProperty(..),
        mkStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.MongoDbAtlasConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.OpenSearchServerlessConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.PineconeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RdsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageConfigurationProperty
  = StorageConfigurationProperty {mongoDbAtlasConfiguration :: (Prelude.Maybe MongoDbAtlasConfigurationProperty),
                                  opensearchServerlessConfiguration :: (Prelude.Maybe OpenSearchServerlessConfigurationProperty),
                                  pineconeConfiguration :: (Prelude.Maybe PineconeConfigurationProperty),
                                  rdsConfiguration :: (Prelude.Maybe RdsConfigurationProperty),
                                  type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageConfigurationProperty ::
  Value Prelude.Text -> StorageConfigurationProperty
mkStorageConfigurationProperty type'
  = StorageConfigurationProperty
      {type' = type', mongoDbAtlasConfiguration = Prelude.Nothing,
       opensearchServerlessConfiguration = Prelude.Nothing,
       pineconeConfiguration = Prelude.Nothing,
       rdsConfiguration = Prelude.Nothing}
instance ToResourceProperties StorageConfigurationProperty where
  toResourceProperties StorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.StorageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "MongoDbAtlasConfiguration"
                                 Prelude.<$> mongoDbAtlasConfiguration,
                               (JSON..=) "OpensearchServerlessConfiguration"
                                 Prelude.<$> opensearchServerlessConfiguration,
                               (JSON..=) "PineconeConfiguration"
                                 Prelude.<$> pineconeConfiguration,
                               (JSON..=) "RdsConfiguration" Prelude.<$> rdsConfiguration]))}
instance JSON.ToJSON StorageConfigurationProperty where
  toJSON StorageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "MongoDbAtlasConfiguration"
                    Prelude.<$> mongoDbAtlasConfiguration,
                  (JSON..=) "OpensearchServerlessConfiguration"
                    Prelude.<$> opensearchServerlessConfiguration,
                  (JSON..=) "PineconeConfiguration"
                    Prelude.<$> pineconeConfiguration,
                  (JSON..=) "RdsConfiguration" Prelude.<$> rdsConfiguration])))
instance Property "MongoDbAtlasConfiguration" StorageConfigurationProperty where
  type PropertyType "MongoDbAtlasConfiguration" StorageConfigurationProperty = MongoDbAtlasConfigurationProperty
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty
        {mongoDbAtlasConfiguration = Prelude.pure newValue, ..}
instance Property "OpensearchServerlessConfiguration" StorageConfigurationProperty where
  type PropertyType "OpensearchServerlessConfiguration" StorageConfigurationProperty = OpenSearchServerlessConfigurationProperty
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty
        {opensearchServerlessConfiguration = Prelude.pure newValue, ..}
instance Property "PineconeConfiguration" StorageConfigurationProperty where
  type PropertyType "PineconeConfiguration" StorageConfigurationProperty = PineconeConfigurationProperty
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty
        {pineconeConfiguration = Prelude.pure newValue, ..}
instance Property "RdsConfiguration" StorageConfigurationProperty where
  type PropertyType "RdsConfiguration" StorageConfigurationProperty = RdsConfigurationProperty
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty
        {rdsConfiguration = Prelude.pure newValue, ..}
instance Property "Type" StorageConfigurationProperty where
  type PropertyType "Type" StorageConfigurationProperty = Value Prelude.Text
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty {type' = newValue, ..}