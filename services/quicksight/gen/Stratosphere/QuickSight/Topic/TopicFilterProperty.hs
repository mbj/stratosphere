module Stratosphere.QuickSight.Topic.TopicFilterProperty (
        module Exports, TopicFilterProperty(..), mkTopicFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicCategoryFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicDateRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicNumericEqualityFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicNumericRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicRelativeDateFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html>
    TopicFilterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-categoryfilter>
                         categoryFilter :: (Prelude.Maybe TopicCategoryFilterProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-daterangefilter>
                         dateRangeFilter :: (Prelude.Maybe TopicDateRangeFilterProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filterclass>
                         filterClass :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filterdescription>
                         filterDescription :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filtername>
                         filterName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filtersynonyms>
                         filterSynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filtertype>
                         filterType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-numericequalityfilter>
                         numericEqualityFilter :: (Prelude.Maybe TopicNumericEqualityFilterProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-numericrangefilter>
                         numericRangeFilter :: (Prelude.Maybe TopicNumericRangeFilterProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-operandfieldname>
                         operandFieldName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-relativedatefilter>
                         relativeDateFilter :: (Prelude.Maybe TopicRelativeDateFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TopicFilterProperty
mkTopicFilterProperty filterName operandFieldName
  = TopicFilterProperty
      {haddock_workaround_ = (), filterName = filterName,
       operandFieldName = operandFieldName,
       categoryFilter = Prelude.Nothing,
       dateRangeFilter = Prelude.Nothing, filterClass = Prelude.Nothing,
       filterDescription = Prelude.Nothing,
       filterSynonyms = Prelude.Nothing, filterType = Prelude.Nothing,
       numericEqualityFilter = Prelude.Nothing,
       numericRangeFilter = Prelude.Nothing,
       relativeDateFilter = Prelude.Nothing}
instance ToResourceProperties TopicFilterProperty where
  toResourceProperties TopicFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterName" JSON..= filterName,
                            "OperandFieldName" JSON..= operandFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "CategoryFilter" Prelude.<$> categoryFilter,
                               (JSON..=) "DateRangeFilter" Prelude.<$> dateRangeFilter,
                               (JSON..=) "FilterClass" Prelude.<$> filterClass,
                               (JSON..=) "FilterDescription" Prelude.<$> filterDescription,
                               (JSON..=) "FilterSynonyms" Prelude.<$> filterSynonyms,
                               (JSON..=) "FilterType" Prelude.<$> filterType,
                               (JSON..=) "NumericEqualityFilter"
                                 Prelude.<$> numericEqualityFilter,
                               (JSON..=) "NumericRangeFilter" Prelude.<$> numericRangeFilter,
                               (JSON..=) "RelativeDateFilter" Prelude.<$> relativeDateFilter]))}
instance JSON.ToJSON TopicFilterProperty where
  toJSON TopicFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterName" JSON..= filterName,
               "OperandFieldName" JSON..= operandFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "CategoryFilter" Prelude.<$> categoryFilter,
                  (JSON..=) "DateRangeFilter" Prelude.<$> dateRangeFilter,
                  (JSON..=) "FilterClass" Prelude.<$> filterClass,
                  (JSON..=) "FilterDescription" Prelude.<$> filterDescription,
                  (JSON..=) "FilterSynonyms" Prelude.<$> filterSynonyms,
                  (JSON..=) "FilterType" Prelude.<$> filterType,
                  (JSON..=) "NumericEqualityFilter"
                    Prelude.<$> numericEqualityFilter,
                  (JSON..=) "NumericRangeFilter" Prelude.<$> numericRangeFilter,
                  (JSON..=) "RelativeDateFilter" Prelude.<$> relativeDateFilter])))
instance Property "CategoryFilter" TopicFilterProperty where
  type PropertyType "CategoryFilter" TopicFilterProperty = TopicCategoryFilterProperty
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {categoryFilter = Prelude.pure newValue, ..}
instance Property "DateRangeFilter" TopicFilterProperty where
  type PropertyType "DateRangeFilter" TopicFilterProperty = TopicDateRangeFilterProperty
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {dateRangeFilter = Prelude.pure newValue, ..}
instance Property "FilterClass" TopicFilterProperty where
  type PropertyType "FilterClass" TopicFilterProperty = Value Prelude.Text
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {filterClass = Prelude.pure newValue, ..}
instance Property "FilterDescription" TopicFilterProperty where
  type PropertyType "FilterDescription" TopicFilterProperty = Value Prelude.Text
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty
        {filterDescription = Prelude.pure newValue, ..}
instance Property "FilterName" TopicFilterProperty where
  type PropertyType "FilterName" TopicFilterProperty = Value Prelude.Text
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {filterName = newValue, ..}
instance Property "FilterSynonyms" TopicFilterProperty where
  type PropertyType "FilterSynonyms" TopicFilterProperty = ValueList Prelude.Text
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {filterSynonyms = Prelude.pure newValue, ..}
instance Property "FilterType" TopicFilterProperty where
  type PropertyType "FilterType" TopicFilterProperty = Value Prelude.Text
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {filterType = Prelude.pure newValue, ..}
instance Property "NumericEqualityFilter" TopicFilterProperty where
  type PropertyType "NumericEqualityFilter" TopicFilterProperty = TopicNumericEqualityFilterProperty
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty
        {numericEqualityFilter = Prelude.pure newValue, ..}
instance Property "NumericRangeFilter" TopicFilterProperty where
  type PropertyType "NumericRangeFilter" TopicFilterProperty = TopicNumericRangeFilterProperty
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty
        {numericRangeFilter = Prelude.pure newValue, ..}
instance Property "OperandFieldName" TopicFilterProperty where
  type PropertyType "OperandFieldName" TopicFilterProperty = Value Prelude.Text
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty {operandFieldName = newValue, ..}
instance Property "RelativeDateFilter" TopicFilterProperty where
  type PropertyType "RelativeDateFilter" TopicFilterProperty = TopicRelativeDateFilterProperty
  set newValue TopicFilterProperty {..}
    = TopicFilterProperty
        {relativeDateFilter = Prelude.pure newValue, ..}