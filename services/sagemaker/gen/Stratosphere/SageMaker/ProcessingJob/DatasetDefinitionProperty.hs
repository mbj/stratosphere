module Stratosphere.SageMaker.ProcessingJob.DatasetDefinitionProperty (
        module Exports, DatasetDefinitionProperty(..),
        mkDatasetDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.AthenaDatasetDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.RedshiftDatasetDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html>
    DatasetDefinitionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-athenadatasetdefinition>
                               athenaDatasetDefinition :: (Prelude.Maybe AthenaDatasetDefinitionProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-datadistributiontype>
                               dataDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-inputmode>
                               inputMode :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-localpath>
                               localPath :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-redshiftdatasetdefinition>
                               redshiftDatasetDefinition :: (Prelude.Maybe RedshiftDatasetDefinitionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetDefinitionProperty :: DatasetDefinitionProperty
mkDatasetDefinitionProperty
  = DatasetDefinitionProperty
      {haddock_workaround_ = (),
       athenaDatasetDefinition = Prelude.Nothing,
       dataDistributionType = Prelude.Nothing,
       inputMode = Prelude.Nothing, localPath = Prelude.Nothing,
       redshiftDatasetDefinition = Prelude.Nothing}
instance ToResourceProperties DatasetDefinitionProperty where
  toResourceProperties DatasetDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.DatasetDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AthenaDatasetDefinition"
                              Prelude.<$> athenaDatasetDefinition,
                            (JSON..=) "DataDistributionType" Prelude.<$> dataDistributionType,
                            (JSON..=) "InputMode" Prelude.<$> inputMode,
                            (JSON..=) "LocalPath" Prelude.<$> localPath,
                            (JSON..=) "RedshiftDatasetDefinition"
                              Prelude.<$> redshiftDatasetDefinition])}
instance JSON.ToJSON DatasetDefinitionProperty where
  toJSON DatasetDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AthenaDatasetDefinition"
                 Prelude.<$> athenaDatasetDefinition,
               (JSON..=) "DataDistributionType" Prelude.<$> dataDistributionType,
               (JSON..=) "InputMode" Prelude.<$> inputMode,
               (JSON..=) "LocalPath" Prelude.<$> localPath,
               (JSON..=) "RedshiftDatasetDefinition"
                 Prelude.<$> redshiftDatasetDefinition]))
instance Property "AthenaDatasetDefinition" DatasetDefinitionProperty where
  type PropertyType "AthenaDatasetDefinition" DatasetDefinitionProperty = AthenaDatasetDefinitionProperty
  set newValue DatasetDefinitionProperty {..}
    = DatasetDefinitionProperty
        {athenaDatasetDefinition = Prelude.pure newValue, ..}
instance Property "DataDistributionType" DatasetDefinitionProperty where
  type PropertyType "DataDistributionType" DatasetDefinitionProperty = Value Prelude.Text
  set newValue DatasetDefinitionProperty {..}
    = DatasetDefinitionProperty
        {dataDistributionType = Prelude.pure newValue, ..}
instance Property "InputMode" DatasetDefinitionProperty where
  type PropertyType "InputMode" DatasetDefinitionProperty = Value Prelude.Text
  set newValue DatasetDefinitionProperty {..}
    = DatasetDefinitionProperty {inputMode = Prelude.pure newValue, ..}
instance Property "LocalPath" DatasetDefinitionProperty where
  type PropertyType "LocalPath" DatasetDefinitionProperty = Value Prelude.Text
  set newValue DatasetDefinitionProperty {..}
    = DatasetDefinitionProperty {localPath = Prelude.pure newValue, ..}
instance Property "RedshiftDatasetDefinition" DatasetDefinitionProperty where
  type PropertyType "RedshiftDatasetDefinition" DatasetDefinitionProperty = RedshiftDatasetDefinitionProperty
  set newValue DatasetDefinitionProperty {..}
    = DatasetDefinitionProperty
        {redshiftDatasetDefinition = Prelude.pure newValue, ..}