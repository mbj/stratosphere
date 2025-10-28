module Stratosphere.QuickSight.Topic.DataAggregationProperty (
        DataAggregationProperty(..), mkDataAggregationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataAggregationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-dataaggregation.html>
    DataAggregationProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-dataaggregation.html#cfn-quicksight-topic-dataaggregation-datasetrowdategranularity>
                             datasetRowDateGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-dataaggregation.html#cfn-quicksight-topic-dataaggregation-defaultdatecolumnname>
                             defaultDateColumnName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataAggregationProperty :: DataAggregationProperty
mkDataAggregationProperty
  = DataAggregationProperty
      {haddock_workaround_ = (),
       datasetRowDateGranularity = Prelude.Nothing,
       defaultDateColumnName = Prelude.Nothing}
instance ToResourceProperties DataAggregationProperty where
  toResourceProperties DataAggregationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.DataAggregation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatasetRowDateGranularity"
                              Prelude.<$> datasetRowDateGranularity,
                            (JSON..=) "DefaultDateColumnName"
                              Prelude.<$> defaultDateColumnName])}
instance JSON.ToJSON DataAggregationProperty where
  toJSON DataAggregationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatasetRowDateGranularity"
                 Prelude.<$> datasetRowDateGranularity,
               (JSON..=) "DefaultDateColumnName"
                 Prelude.<$> defaultDateColumnName]))
instance Property "DatasetRowDateGranularity" DataAggregationProperty where
  type PropertyType "DatasetRowDateGranularity" DataAggregationProperty = Value Prelude.Text
  set newValue DataAggregationProperty {..}
    = DataAggregationProperty
        {datasetRowDateGranularity = Prelude.pure newValue, ..}
instance Property "DefaultDateColumnName" DataAggregationProperty where
  type PropertyType "DefaultDateColumnName" DataAggregationProperty = Value Prelude.Text
  set newValue DataAggregationProperty {..}
    = DataAggregationProperty
        {defaultDateColumnName = Prelude.pure newValue, ..}