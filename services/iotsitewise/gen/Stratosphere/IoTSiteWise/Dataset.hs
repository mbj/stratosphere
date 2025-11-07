module Stratosphere.IoTSiteWise.Dataset (
        module Exports, Dataset(..), mkDataset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Dataset.DatasetSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dataset
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dataset.html>
    Dataset {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dataset.html#cfn-iotsitewise-dataset-datasetdescription>
             datasetDescription :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dataset.html#cfn-iotsitewise-dataset-datasetname>
             datasetName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dataset.html#cfn-iotsitewise-dataset-datasetsource>
             datasetSource :: DatasetSourceProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dataset.html#cfn-iotsitewise-dataset-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataset :: Value Prelude.Text -> DatasetSourceProperty -> Dataset
mkDataset datasetName datasetSource
  = Dataset
      {haddock_workaround_ = (), datasetName = datasetName,
       datasetSource = datasetSource,
       datasetDescription = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Dataset where
  toResourceProperties Dataset {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Dataset",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetName" JSON..= datasetName,
                            "DatasetSource" JSON..= datasetSource]
                           (Prelude.catMaybes
                              [(JSON..=) "DatasetDescription" Prelude.<$> datasetDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Dataset where
  toJSON Dataset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetName" JSON..= datasetName,
               "DatasetSource" JSON..= datasetSource]
              (Prelude.catMaybes
                 [(JSON..=) "DatasetDescription" Prelude.<$> datasetDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DatasetDescription" Dataset where
  type PropertyType "DatasetDescription" Dataset = Value Prelude.Text
  set newValue Dataset {..}
    = Dataset {datasetDescription = Prelude.pure newValue, ..}
instance Property "DatasetName" Dataset where
  type PropertyType "DatasetName" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {datasetName = newValue, ..}
instance Property "DatasetSource" Dataset where
  type PropertyType "DatasetSource" Dataset = DatasetSourceProperty
  set newValue Dataset {..} = Dataset {datasetSource = newValue, ..}
instance Property "Tags" Dataset where
  type PropertyType "Tags" Dataset = [Tag]
  set newValue Dataset {..}
    = Dataset {tags = Prelude.pure newValue, ..}