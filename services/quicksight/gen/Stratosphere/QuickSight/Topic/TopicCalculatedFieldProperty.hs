module Stratosphere.QuickSight.Topic.TopicCalculatedFieldProperty (
        module Exports, TopicCalculatedFieldProperty(..),
        mkTopicCalculatedFieldProperty
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
data TopicCalculatedFieldProperty
  = TopicCalculatedFieldProperty {aggregation :: (Prelude.Maybe (Value Prelude.Text)),
                                  allowedAggregations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  calculatedFieldDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                  calculatedFieldName :: (Value Prelude.Text),
                                  calculatedFieldSynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  cellValueSynonyms :: (Prelude.Maybe [CellValueSynonymProperty]),
                                  columnDataRole :: (Prelude.Maybe (Value Prelude.Text)),
                                  comparativeOrder :: (Prelude.Maybe ComparativeOrderProperty),
                                  defaultFormatting :: (Prelude.Maybe DefaultFormattingProperty),
                                  expression :: (Value Prelude.Text),
                                  isIncludedInTopic :: (Prelude.Maybe (Value Prelude.Bool)),
                                  neverAggregateInFilter :: (Prelude.Maybe (Value Prelude.Bool)),
                                  notAllowedAggregations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  semanticType :: (Prelude.Maybe SemanticTypeProperty),
                                  timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
mkTopicCalculatedFieldProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TopicCalculatedFieldProperty
mkTopicCalculatedFieldProperty calculatedFieldName expression
  = TopicCalculatedFieldProperty
      {calculatedFieldName = calculatedFieldName,
       expression = expression, aggregation = Prelude.Nothing,
       allowedAggregations = Prelude.Nothing,
       calculatedFieldDescription = Prelude.Nothing,
       calculatedFieldSynonyms = Prelude.Nothing,
       cellValueSynonyms = Prelude.Nothing,
       columnDataRole = Prelude.Nothing,
       comparativeOrder = Prelude.Nothing,
       defaultFormatting = Prelude.Nothing,
       isIncludedInTopic = Prelude.Nothing,
       neverAggregateInFilter = Prelude.Nothing,
       notAllowedAggregations = Prelude.Nothing,
       semanticType = Prelude.Nothing, timeGranularity = Prelude.Nothing}
instance ToResourceProperties TopicCalculatedFieldProperty where
  toResourceProperties TopicCalculatedFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicCalculatedField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CalculatedFieldName" JSON..= calculatedFieldName,
                            "Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                               (JSON..=) "AllowedAggregations" Prelude.<$> allowedAggregations,
                               (JSON..=) "CalculatedFieldDescription"
                                 Prelude.<$> calculatedFieldDescription,
                               (JSON..=) "CalculatedFieldSynonyms"
                                 Prelude.<$> calculatedFieldSynonyms,
                               (JSON..=) "CellValueSynonyms" Prelude.<$> cellValueSynonyms,
                               (JSON..=) "ColumnDataRole" Prelude.<$> columnDataRole,
                               (JSON..=) "ComparativeOrder" Prelude.<$> comparativeOrder,
                               (JSON..=) "DefaultFormatting" Prelude.<$> defaultFormatting,
                               (JSON..=) "IsIncludedInTopic" Prelude.<$> isIncludedInTopic,
                               (JSON..=) "NeverAggregateInFilter"
                                 Prelude.<$> neverAggregateInFilter,
                               (JSON..=) "NotAllowedAggregations"
                                 Prelude.<$> notAllowedAggregations,
                               (JSON..=) "SemanticType" Prelude.<$> semanticType,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))}
instance JSON.ToJSON TopicCalculatedFieldProperty where
  toJSON TopicCalculatedFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CalculatedFieldName" JSON..= calculatedFieldName,
               "Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                  (JSON..=) "AllowedAggregations" Prelude.<$> allowedAggregations,
                  (JSON..=) "CalculatedFieldDescription"
                    Prelude.<$> calculatedFieldDescription,
                  (JSON..=) "CalculatedFieldSynonyms"
                    Prelude.<$> calculatedFieldSynonyms,
                  (JSON..=) "CellValueSynonyms" Prelude.<$> cellValueSynonyms,
                  (JSON..=) "ColumnDataRole" Prelude.<$> columnDataRole,
                  (JSON..=) "ComparativeOrder" Prelude.<$> comparativeOrder,
                  (JSON..=) "DefaultFormatting" Prelude.<$> defaultFormatting,
                  (JSON..=) "IsIncludedInTopic" Prelude.<$> isIncludedInTopic,
                  (JSON..=) "NeverAggregateInFilter"
                    Prelude.<$> neverAggregateInFilter,
                  (JSON..=) "NotAllowedAggregations"
                    Prelude.<$> notAllowedAggregations,
                  (JSON..=) "SemanticType" Prelude.<$> semanticType,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])))
instance Property "Aggregation" TopicCalculatedFieldProperty where
  type PropertyType "Aggregation" TopicCalculatedFieldProperty = Value Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {aggregation = Prelude.pure newValue, ..}
instance Property "AllowedAggregations" TopicCalculatedFieldProperty where
  type PropertyType "AllowedAggregations" TopicCalculatedFieldProperty = ValueList Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {allowedAggregations = Prelude.pure newValue, ..}
instance Property "CalculatedFieldDescription" TopicCalculatedFieldProperty where
  type PropertyType "CalculatedFieldDescription" TopicCalculatedFieldProperty = Value Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {calculatedFieldDescription = Prelude.pure newValue, ..}
instance Property "CalculatedFieldName" TopicCalculatedFieldProperty where
  type PropertyType "CalculatedFieldName" TopicCalculatedFieldProperty = Value Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty {calculatedFieldName = newValue, ..}
instance Property "CalculatedFieldSynonyms" TopicCalculatedFieldProperty where
  type PropertyType "CalculatedFieldSynonyms" TopicCalculatedFieldProperty = ValueList Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {calculatedFieldSynonyms = Prelude.pure newValue, ..}
instance Property "CellValueSynonyms" TopicCalculatedFieldProperty where
  type PropertyType "CellValueSynonyms" TopicCalculatedFieldProperty = [CellValueSynonymProperty]
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {cellValueSynonyms = Prelude.pure newValue, ..}
instance Property "ColumnDataRole" TopicCalculatedFieldProperty where
  type PropertyType "ColumnDataRole" TopicCalculatedFieldProperty = Value Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {columnDataRole = Prelude.pure newValue, ..}
instance Property "ComparativeOrder" TopicCalculatedFieldProperty where
  type PropertyType "ComparativeOrder" TopicCalculatedFieldProperty = ComparativeOrderProperty
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {comparativeOrder = Prelude.pure newValue, ..}
instance Property "DefaultFormatting" TopicCalculatedFieldProperty where
  type PropertyType "DefaultFormatting" TopicCalculatedFieldProperty = DefaultFormattingProperty
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {defaultFormatting = Prelude.pure newValue, ..}
instance Property "Expression" TopicCalculatedFieldProperty where
  type PropertyType "Expression" TopicCalculatedFieldProperty = Value Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty {expression = newValue, ..}
instance Property "IsIncludedInTopic" TopicCalculatedFieldProperty where
  type PropertyType "IsIncludedInTopic" TopicCalculatedFieldProperty = Value Prelude.Bool
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {isIncludedInTopic = Prelude.pure newValue, ..}
instance Property "NeverAggregateInFilter" TopicCalculatedFieldProperty where
  type PropertyType "NeverAggregateInFilter" TopicCalculatedFieldProperty = Value Prelude.Bool
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {neverAggregateInFilter = Prelude.pure newValue, ..}
instance Property "NotAllowedAggregations" TopicCalculatedFieldProperty where
  type PropertyType "NotAllowedAggregations" TopicCalculatedFieldProperty = ValueList Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {notAllowedAggregations = Prelude.pure newValue, ..}
instance Property "SemanticType" TopicCalculatedFieldProperty where
  type PropertyType "SemanticType" TopicCalculatedFieldProperty = SemanticTypeProperty
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {semanticType = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TopicCalculatedFieldProperty where
  type PropertyType "TimeGranularity" TopicCalculatedFieldProperty = Value Prelude.Text
  set newValue TopicCalculatedFieldProperty {..}
    = TopicCalculatedFieldProperty
        {timeGranularity = Prelude.pure newValue, ..}