module Stratosphere.Personalize.Dataset.DatasetImportJobProperty (
        module Exports, DatasetImportJobProperty(..),
        mkDatasetImportJobProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Personalize.Dataset.DataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetImportJobProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasetimportjob.html>
    DatasetImportJobProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasetimportjob.html#cfn-personalize-dataset-datasetimportjob-datasource>
                              dataSource :: (Prelude.Maybe DataSourceProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasetimportjob.html#cfn-personalize-dataset-datasetimportjob-datasetarn>
                              datasetArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasetimportjob.html#cfn-personalize-dataset-datasetimportjob-datasetimportjobarn>
                              datasetImportJobArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasetimportjob.html#cfn-personalize-dataset-datasetimportjob-jobname>
                              jobName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasetimportjob.html#cfn-personalize-dataset-datasetimportjob-rolearn>
                              roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetImportJobProperty :: DatasetImportJobProperty
mkDatasetImportJobProperty
  = DatasetImportJobProperty
      {haddock_workaround_ = (), dataSource = Prelude.Nothing,
       datasetArn = Prelude.Nothing,
       datasetImportJobArn = Prelude.Nothing, jobName = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties DatasetImportJobProperty where
  toResourceProperties DatasetImportJobProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Dataset.DatasetImportJob",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataSource" Prelude.<$> dataSource,
                            (JSON..=) "DatasetArn" Prelude.<$> datasetArn,
                            (JSON..=) "DatasetImportJobArn" Prelude.<$> datasetImportJobArn,
                            (JSON..=) "JobName" Prelude.<$> jobName,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON DatasetImportJobProperty where
  toJSON DatasetImportJobProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataSource" Prelude.<$> dataSource,
               (JSON..=) "DatasetArn" Prelude.<$> datasetArn,
               (JSON..=) "DatasetImportJobArn" Prelude.<$> datasetImportJobArn,
               (JSON..=) "JobName" Prelude.<$> jobName,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "DataSource" DatasetImportJobProperty where
  type PropertyType "DataSource" DatasetImportJobProperty = DataSourceProperty
  set newValue DatasetImportJobProperty {..}
    = DatasetImportJobProperty {dataSource = Prelude.pure newValue, ..}
instance Property "DatasetArn" DatasetImportJobProperty where
  type PropertyType "DatasetArn" DatasetImportJobProperty = Value Prelude.Text
  set newValue DatasetImportJobProperty {..}
    = DatasetImportJobProperty {datasetArn = Prelude.pure newValue, ..}
instance Property "DatasetImportJobArn" DatasetImportJobProperty where
  type PropertyType "DatasetImportJobArn" DatasetImportJobProperty = Value Prelude.Text
  set newValue DatasetImportJobProperty {..}
    = DatasetImportJobProperty
        {datasetImportJobArn = Prelude.pure newValue, ..}
instance Property "JobName" DatasetImportJobProperty where
  type PropertyType "JobName" DatasetImportJobProperty = Value Prelude.Text
  set newValue DatasetImportJobProperty {..}
    = DatasetImportJobProperty {jobName = Prelude.pure newValue, ..}
instance Property "RoleArn" DatasetImportJobProperty where
  type PropertyType "RoleArn" DatasetImportJobProperty = Value Prelude.Text
  set newValue DatasetImportJobProperty {..}
    = DatasetImportJobProperty {roleArn = Prelude.pure newValue, ..}