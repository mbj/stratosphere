module Stratosphere.Personalize.Dataset (
        module Exports, Dataset(..), mkDataset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Personalize.Dataset.DatasetImportJobProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Dataset
  = Dataset {datasetGroupArn :: (Value Prelude.Text),
             datasetImportJob :: (Prelude.Maybe DatasetImportJobProperty),
             datasetType :: (Value Prelude.Text),
             name :: (Value Prelude.Text),
             schemaArn :: (Value Prelude.Text)}
mkDataset ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Dataset
mkDataset datasetGroupArn datasetType name schemaArn
  = Dataset
      {datasetGroupArn = datasetGroupArn, datasetType = datasetType,
       name = name, schemaArn = schemaArn,
       datasetImportJob = Prelude.Nothing}
instance ToResourceProperties Dataset where
  toResourceProperties Dataset {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Dataset",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetGroupArn" JSON..= datasetGroupArn,
                            "DatasetType" JSON..= datasetType, "Name" JSON..= name,
                            "SchemaArn" JSON..= schemaArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DatasetImportJob" Prelude.<$> datasetImportJob]))}
instance JSON.ToJSON Dataset where
  toJSON Dataset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetGroupArn" JSON..= datasetGroupArn,
               "DatasetType" JSON..= datasetType, "Name" JSON..= name,
               "SchemaArn" JSON..= schemaArn]
              (Prelude.catMaybes
                 [(JSON..=) "DatasetImportJob" Prelude.<$> datasetImportJob])))
instance Property "DatasetGroupArn" Dataset where
  type PropertyType "DatasetGroupArn" Dataset = Value Prelude.Text
  set newValue Dataset {..}
    = Dataset {datasetGroupArn = newValue, ..}
instance Property "DatasetImportJob" Dataset where
  type PropertyType "DatasetImportJob" Dataset = DatasetImportJobProperty
  set newValue Dataset {..}
    = Dataset {datasetImportJob = Prelude.pure newValue, ..}
instance Property "DatasetType" Dataset where
  type PropertyType "DatasetType" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {datasetType = newValue, ..}
instance Property "Name" Dataset where
  type PropertyType "Name" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {name = newValue, ..}
instance Property "SchemaArn" Dataset where
  type PropertyType "SchemaArn" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {schemaArn = newValue, ..}