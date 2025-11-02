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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-dataset.html>
    Dataset {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-dataset.html#cfn-personalize-dataset-datasetgrouparn>
             datasetGroupArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-dataset.html#cfn-personalize-dataset-datasetimportjob>
             datasetImportJob :: (Prelude.Maybe DatasetImportJobProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-dataset.html#cfn-personalize-dataset-datasettype>
             datasetType :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-dataset.html#cfn-personalize-dataset-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-dataset.html#cfn-personalize-dataset-schemaarn>
             schemaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataset ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Dataset
mkDataset datasetGroupArn datasetType name schemaArn
  = Dataset
      {haddock_workaround_ = (), datasetGroupArn = datasetGroupArn,
       datasetType = datasetType, name = name, schemaArn = schemaArn,
       datasetImportJob = Prelude.Nothing}
instance ToResourceProperties Dataset where
  toResourceProperties Dataset {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Dataset",
         supportsTags = Prelude.False,
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