module Stratosphere.Forecast.Dataset (
        module Exports, Dataset(..), mkDataset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Forecast.Dataset.EncryptionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Forecast.Dataset.SchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.Forecast.Dataset.TagsItemsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Dataset
  = Dataset {dataFrequency :: (Prelude.Maybe (Value Prelude.Text)),
             datasetName :: (Value Prelude.Text),
             datasetType :: (Value Prelude.Text),
             domain :: (Value Prelude.Text),
             encryptionConfig :: (Prelude.Maybe EncryptionConfigProperty),
             schema :: SchemaProperty,
             tags :: (Prelude.Maybe [TagsItemsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataset ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SchemaProperty -> Dataset
mkDataset datasetName datasetType domain schema
  = Dataset
      {datasetName = datasetName, datasetType = datasetType,
       domain = domain, schema = schema, dataFrequency = Prelude.Nothing,
       encryptionConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Dataset where
  toResourceProperties Dataset {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::Dataset", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetName" JSON..= datasetName,
                            "DatasetType" JSON..= datasetType, "Domain" JSON..= domain,
                            "Schema" JSON..= schema]
                           (Prelude.catMaybes
                              [(JSON..=) "DataFrequency" Prelude.<$> dataFrequency,
                               (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Dataset where
  toJSON Dataset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetName" JSON..= datasetName,
               "DatasetType" JSON..= datasetType, "Domain" JSON..= domain,
               "Schema" JSON..= schema]
              (Prelude.catMaybes
                 [(JSON..=) "DataFrequency" Prelude.<$> dataFrequency,
                  (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataFrequency" Dataset where
  type PropertyType "DataFrequency" Dataset = Value Prelude.Text
  set newValue Dataset {..}
    = Dataset {dataFrequency = Prelude.pure newValue, ..}
instance Property "DatasetName" Dataset where
  type PropertyType "DatasetName" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {datasetName = newValue, ..}
instance Property "DatasetType" Dataset where
  type PropertyType "DatasetType" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {datasetType = newValue, ..}
instance Property "Domain" Dataset where
  type PropertyType "Domain" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {domain = newValue, ..}
instance Property "EncryptionConfig" Dataset where
  type PropertyType "EncryptionConfig" Dataset = EncryptionConfigProperty
  set newValue Dataset {..}
    = Dataset {encryptionConfig = Prelude.pure newValue, ..}
instance Property "Schema" Dataset where
  type PropertyType "Schema" Dataset = SchemaProperty
  set newValue Dataset {..} = Dataset {schema = newValue, ..}
instance Property "Tags" Dataset where
  type PropertyType "Tags" Dataset = [TagsItemsProperty]
  set newValue Dataset {..}
    = Dataset {tags = Prelude.pure newValue, ..}