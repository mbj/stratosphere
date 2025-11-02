module Stratosphere.QuickSight.Topic.TopicColumnProperty (
        module Exports, TopicColumnProperty(..), mkTopicColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.CellValueSynonymProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.ComparativeOrderProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.DefaultFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.SemanticTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicColumnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html>
    TopicColumnProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-aggregation>
                         aggregation :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-allowedaggregations>
                         allowedAggregations :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-cellvaluesynonyms>
                         cellValueSynonyms :: (Prelude.Maybe [CellValueSynonymProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-columndatarole>
                         columnDataRole :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-columndescription>
                         columnDescription :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-columnfriendlyname>
                         columnFriendlyName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-columnname>
                         columnName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-columnsynonyms>
                         columnSynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-comparativeorder>
                         comparativeOrder :: (Prelude.Maybe ComparativeOrderProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-defaultformatting>
                         defaultFormatting :: (Prelude.Maybe DefaultFormattingProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-disableindexing>
                         disableIndexing :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-isincludedintopic>
                         isIncludedInTopic :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-neveraggregateinfilter>
                         neverAggregateInFilter :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-nonadditive>
                         nonAdditive :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-notallowedaggregations>
                         notAllowedAggregations :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-semantictype>
                         semanticType :: (Prelude.Maybe SemanticTypeProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccolumn.html#cfn-quicksight-topic-topiccolumn-timegranularity>
                         timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicColumnProperty :: Value Prelude.Text -> TopicColumnProperty
mkTopicColumnProperty columnName
  = TopicColumnProperty
      {haddock_workaround_ = (), columnName = columnName,
       aggregation = Prelude.Nothing,
       allowedAggregations = Prelude.Nothing,
       cellValueSynonyms = Prelude.Nothing,
       columnDataRole = Prelude.Nothing,
       columnDescription = Prelude.Nothing,
       columnFriendlyName = Prelude.Nothing,
       columnSynonyms = Prelude.Nothing,
       comparativeOrder = Prelude.Nothing,
       defaultFormatting = Prelude.Nothing,
       disableIndexing = Prelude.Nothing,
       isIncludedInTopic = Prelude.Nothing,
       neverAggregateInFilter = Prelude.Nothing,
       nonAdditive = Prelude.Nothing,
       notAllowedAggregations = Prelude.Nothing,
       semanticType = Prelude.Nothing, timeGranularity = Prelude.Nothing}
instance ToResourceProperties TopicColumnProperty where
  toResourceProperties TopicColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicColumn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnName" JSON..= columnName]
                           (Prelude.catMaybes
                              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                               (JSON..=) "AllowedAggregations" Prelude.<$> allowedAggregations,
                               (JSON..=) "CellValueSynonyms" Prelude.<$> cellValueSynonyms,
                               (JSON..=) "ColumnDataRole" Prelude.<$> columnDataRole,
                               (JSON..=) "ColumnDescription" Prelude.<$> columnDescription,
                               (JSON..=) "ColumnFriendlyName" Prelude.<$> columnFriendlyName,
                               (JSON..=) "ColumnSynonyms" Prelude.<$> columnSynonyms,
                               (JSON..=) "ComparativeOrder" Prelude.<$> comparativeOrder,
                               (JSON..=) "DefaultFormatting" Prelude.<$> defaultFormatting,
                               (JSON..=) "DisableIndexing" Prelude.<$> disableIndexing,
                               (JSON..=) "IsIncludedInTopic" Prelude.<$> isIncludedInTopic,
                               (JSON..=) "NeverAggregateInFilter"
                                 Prelude.<$> neverAggregateInFilter,
                               (JSON..=) "NonAdditive" Prelude.<$> nonAdditive,
                               (JSON..=) "NotAllowedAggregations"
                                 Prelude.<$> notAllowedAggregations,
                               (JSON..=) "SemanticType" Prelude.<$> semanticType,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))}
instance JSON.ToJSON TopicColumnProperty where
  toJSON TopicColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnName" JSON..= columnName]
              (Prelude.catMaybes
                 [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                  (JSON..=) "AllowedAggregations" Prelude.<$> allowedAggregations,
                  (JSON..=) "CellValueSynonyms" Prelude.<$> cellValueSynonyms,
                  (JSON..=) "ColumnDataRole" Prelude.<$> columnDataRole,
                  (JSON..=) "ColumnDescription" Prelude.<$> columnDescription,
                  (JSON..=) "ColumnFriendlyName" Prelude.<$> columnFriendlyName,
                  (JSON..=) "ColumnSynonyms" Prelude.<$> columnSynonyms,
                  (JSON..=) "ComparativeOrder" Prelude.<$> comparativeOrder,
                  (JSON..=) "DefaultFormatting" Prelude.<$> defaultFormatting,
                  (JSON..=) "DisableIndexing" Prelude.<$> disableIndexing,
                  (JSON..=) "IsIncludedInTopic" Prelude.<$> isIncludedInTopic,
                  (JSON..=) "NeverAggregateInFilter"
                    Prelude.<$> neverAggregateInFilter,
                  (JSON..=) "NonAdditive" Prelude.<$> nonAdditive,
                  (JSON..=) "NotAllowedAggregations"
                    Prelude.<$> notAllowedAggregations,
                  (JSON..=) "SemanticType" Prelude.<$> semanticType,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])))
instance Property "Aggregation" TopicColumnProperty where
  type PropertyType "Aggregation" TopicColumnProperty = Value Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {aggregation = Prelude.pure newValue, ..}
instance Property "AllowedAggregations" TopicColumnProperty where
  type PropertyType "AllowedAggregations" TopicColumnProperty = ValueList Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {allowedAggregations = Prelude.pure newValue, ..}
instance Property "CellValueSynonyms" TopicColumnProperty where
  type PropertyType "CellValueSynonyms" TopicColumnProperty = [CellValueSynonymProperty]
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {cellValueSynonyms = Prelude.pure newValue, ..}
instance Property "ColumnDataRole" TopicColumnProperty where
  type PropertyType "ColumnDataRole" TopicColumnProperty = Value Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {columnDataRole = Prelude.pure newValue, ..}
instance Property "ColumnDescription" TopicColumnProperty where
  type PropertyType "ColumnDescription" TopicColumnProperty = Value Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {columnDescription = Prelude.pure newValue, ..}
instance Property "ColumnFriendlyName" TopicColumnProperty where
  type PropertyType "ColumnFriendlyName" TopicColumnProperty = Value Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {columnFriendlyName = Prelude.pure newValue, ..}
instance Property "ColumnName" TopicColumnProperty where
  type PropertyType "ColumnName" TopicColumnProperty = Value Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {columnName = newValue, ..}
instance Property "ColumnSynonyms" TopicColumnProperty where
  type PropertyType "ColumnSynonyms" TopicColumnProperty = ValueList Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {columnSynonyms = Prelude.pure newValue, ..}
instance Property "ComparativeOrder" TopicColumnProperty where
  type PropertyType "ComparativeOrder" TopicColumnProperty = ComparativeOrderProperty
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {comparativeOrder = Prelude.pure newValue, ..}
instance Property "DefaultFormatting" TopicColumnProperty where
  type PropertyType "DefaultFormatting" TopicColumnProperty = DefaultFormattingProperty
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {defaultFormatting = Prelude.pure newValue, ..}
instance Property "DisableIndexing" TopicColumnProperty where
  type PropertyType "DisableIndexing" TopicColumnProperty = Value Prelude.Bool
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {disableIndexing = Prelude.pure newValue, ..}
instance Property "IsIncludedInTopic" TopicColumnProperty where
  type PropertyType "IsIncludedInTopic" TopicColumnProperty = Value Prelude.Bool
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {isIncludedInTopic = Prelude.pure newValue, ..}
instance Property "NeverAggregateInFilter" TopicColumnProperty where
  type PropertyType "NeverAggregateInFilter" TopicColumnProperty = Value Prelude.Bool
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {neverAggregateInFilter = Prelude.pure newValue, ..}
instance Property "NonAdditive" TopicColumnProperty where
  type PropertyType "NonAdditive" TopicColumnProperty = Value Prelude.Bool
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {nonAdditive = Prelude.pure newValue, ..}
instance Property "NotAllowedAggregations" TopicColumnProperty where
  type PropertyType "NotAllowedAggregations" TopicColumnProperty = ValueList Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty
        {notAllowedAggregations = Prelude.pure newValue, ..}
instance Property "SemanticType" TopicColumnProperty where
  type PropertyType "SemanticType" TopicColumnProperty = SemanticTypeProperty
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {semanticType = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TopicColumnProperty where
  type PropertyType "TimeGranularity" TopicColumnProperty = Value Prelude.Text
  set newValue TopicColumnProperty {..}
    = TopicColumnProperty {timeGranularity = Prelude.pure newValue, ..}