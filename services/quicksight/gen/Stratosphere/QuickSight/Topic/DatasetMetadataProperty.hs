module Stratosphere.QuickSight.Topic.DatasetMetadataProperty (
        module Exports, DatasetMetadataProperty(..),
        mkDatasetMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.DataAggregationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicCalculatedFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicNamedEntityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html>
    DatasetMetadataProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-calculatedfields>
                             calculatedFields :: (Prelude.Maybe [TopicCalculatedFieldProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-columns>
                             columns :: (Prelude.Maybe [TopicColumnProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-dataaggregation>
                             dataAggregation :: (Prelude.Maybe DataAggregationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-datasetarn>
                             datasetArn :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-datasetdescription>
                             datasetDescription :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-datasetname>
                             datasetName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-filters>
                             filters :: (Prelude.Maybe [TopicFilterProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-datasetmetadata.html#cfn-quicksight-topic-datasetmetadata-namedentities>
                             namedEntities :: (Prelude.Maybe [TopicNamedEntityProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetMetadataProperty ::
  Value Prelude.Text -> DatasetMetadataProperty
mkDatasetMetadataProperty datasetArn
  = DatasetMetadataProperty
      {haddock_workaround_ = (), datasetArn = datasetArn,
       calculatedFields = Prelude.Nothing, columns = Prelude.Nothing,
       dataAggregation = Prelude.Nothing,
       datasetDescription = Prelude.Nothing,
       datasetName = Prelude.Nothing, filters = Prelude.Nothing,
       namedEntities = Prelude.Nothing}
instance ToResourceProperties DatasetMetadataProperty where
  toResourceProperties DatasetMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.DatasetMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetArn" JSON..= datasetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CalculatedFields" Prelude.<$> calculatedFields,
                               (JSON..=) "Columns" Prelude.<$> columns,
                               (JSON..=) "DataAggregation" Prelude.<$> dataAggregation,
                               (JSON..=) "DatasetDescription" Prelude.<$> datasetDescription,
                               (JSON..=) "DatasetName" Prelude.<$> datasetName,
                               (JSON..=) "Filters" Prelude.<$> filters,
                               (JSON..=) "NamedEntities" Prelude.<$> namedEntities]))}
instance JSON.ToJSON DatasetMetadataProperty where
  toJSON DatasetMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetArn" JSON..= datasetArn]
              (Prelude.catMaybes
                 [(JSON..=) "CalculatedFields" Prelude.<$> calculatedFields,
                  (JSON..=) "Columns" Prelude.<$> columns,
                  (JSON..=) "DataAggregation" Prelude.<$> dataAggregation,
                  (JSON..=) "DatasetDescription" Prelude.<$> datasetDescription,
                  (JSON..=) "DatasetName" Prelude.<$> datasetName,
                  (JSON..=) "Filters" Prelude.<$> filters,
                  (JSON..=) "NamedEntities" Prelude.<$> namedEntities])))
instance Property "CalculatedFields" DatasetMetadataProperty where
  type PropertyType "CalculatedFields" DatasetMetadataProperty = [TopicCalculatedFieldProperty]
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty
        {calculatedFields = Prelude.pure newValue, ..}
instance Property "Columns" DatasetMetadataProperty where
  type PropertyType "Columns" DatasetMetadataProperty = [TopicColumnProperty]
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty {columns = Prelude.pure newValue, ..}
instance Property "DataAggregation" DatasetMetadataProperty where
  type PropertyType "DataAggregation" DatasetMetadataProperty = DataAggregationProperty
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty
        {dataAggregation = Prelude.pure newValue, ..}
instance Property "DatasetArn" DatasetMetadataProperty where
  type PropertyType "DatasetArn" DatasetMetadataProperty = Value Prelude.Text
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty {datasetArn = newValue, ..}
instance Property "DatasetDescription" DatasetMetadataProperty where
  type PropertyType "DatasetDescription" DatasetMetadataProperty = Value Prelude.Text
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty
        {datasetDescription = Prelude.pure newValue, ..}
instance Property "DatasetName" DatasetMetadataProperty where
  type PropertyType "DatasetName" DatasetMetadataProperty = Value Prelude.Text
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty {datasetName = Prelude.pure newValue, ..}
instance Property "Filters" DatasetMetadataProperty where
  type PropertyType "Filters" DatasetMetadataProperty = [TopicFilterProperty]
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty {filters = Prelude.pure newValue, ..}
instance Property "NamedEntities" DatasetMetadataProperty where
  type PropertyType "NamedEntities" DatasetMetadataProperty = [TopicNamedEntityProperty]
  set newValue DatasetMetadataProperty {..}
    = DatasetMetadataProperty
        {namedEntities = Prelude.pure newValue, ..}