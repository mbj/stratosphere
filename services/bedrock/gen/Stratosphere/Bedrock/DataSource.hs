module Stratosphere.Bedrock.DataSource (
        module Exports, DataSource(..), mkDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.DataSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ServerSideEncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.VectorIngestionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSource
  = DataSource {dataDeletionPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                dataSourceConfiguration :: DataSourceConfigurationProperty,
                description :: (Prelude.Maybe (Value Prelude.Text)),
                knowledgeBaseId :: (Value Prelude.Text),
                name :: (Value Prelude.Text),
                serverSideEncryptionConfiguration :: (Prelude.Maybe ServerSideEncryptionConfigurationProperty),
                vectorIngestionConfiguration :: (Prelude.Maybe VectorIngestionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSource ::
  DataSourceConfigurationProperty
  -> Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource dataSourceConfiguration knowledgeBaseId name
  = DataSource
      {dataSourceConfiguration = dataSourceConfiguration,
       knowledgeBaseId = knowledgeBaseId, name = name,
       dataDeletionPolicy = Prelude.Nothing,
       description = Prelude.Nothing,
       serverSideEncryptionConfiguration = Prelude.Nothing,
       vectorIngestionConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceConfiguration" JSON..= dataSourceConfiguration,
                            "KnowledgeBaseId" JSON..= knowledgeBaseId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DataDeletionPolicy" Prelude.<$> dataDeletionPolicy,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ServerSideEncryptionConfiguration"
                                 Prelude.<$> serverSideEncryptionConfiguration,
                               (JSON..=) "VectorIngestionConfiguration"
                                 Prelude.<$> vectorIngestionConfiguration]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceConfiguration" JSON..= dataSourceConfiguration,
               "KnowledgeBaseId" JSON..= knowledgeBaseId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DataDeletionPolicy" Prelude.<$> dataDeletionPolicy,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ServerSideEncryptionConfiguration"
                    Prelude.<$> serverSideEncryptionConfiguration,
                  (JSON..=) "VectorIngestionConfiguration"
                    Prelude.<$> vectorIngestionConfiguration])))
instance Property "DataDeletionPolicy" DataSource where
  type PropertyType "DataDeletionPolicy" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {dataDeletionPolicy = Prelude.pure newValue, ..}
instance Property "DataSourceConfiguration" DataSource where
  type PropertyType "DataSourceConfiguration" DataSource = DataSourceConfigurationProperty
  set newValue DataSource {..}
    = DataSource {dataSourceConfiguration = newValue, ..}
instance Property "Description" DataSource where
  type PropertyType "Description" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {description = Prelude.pure newValue, ..}
instance Property "KnowledgeBaseId" DataSource where
  type PropertyType "KnowledgeBaseId" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {knowledgeBaseId = newValue, ..}
instance Property "Name" DataSource where
  type PropertyType "Name" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {name = newValue, ..}
instance Property "ServerSideEncryptionConfiguration" DataSource where
  type PropertyType "ServerSideEncryptionConfiguration" DataSource = ServerSideEncryptionConfigurationProperty
  set newValue DataSource {..}
    = DataSource
        {serverSideEncryptionConfiguration = Prelude.pure newValue, ..}
instance Property "VectorIngestionConfiguration" DataSource where
  type PropertyType "VectorIngestionConfiguration" DataSource = VectorIngestionConfigurationProperty
  set newValue DataSource {..}
    = DataSource
        {vectorIngestionConfiguration = Prelude.pure newValue, ..}