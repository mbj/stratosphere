module Stratosphere.QuickSight.Topic.TopicNumericRangeFilterProperty (
        module Exports, TopicNumericRangeFilterProperty(..),
        mkTopicNumericRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicRangeFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicNumericRangeFilterProperty
  = TopicNumericRangeFilterProperty {aggregation :: (Prelude.Maybe (Value Prelude.Text)),
                                     constant :: (Prelude.Maybe TopicRangeFilterConstantProperty),
                                     inclusive :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicNumericRangeFilterProperty ::
  TopicNumericRangeFilterProperty
mkTopicNumericRangeFilterProperty
  = TopicNumericRangeFilterProperty
      {aggregation = Prelude.Nothing, constant = Prelude.Nothing,
       inclusive = Prelude.Nothing}
instance ToResourceProperties TopicNumericRangeFilterProperty where
  toResourceProperties TopicNumericRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicNumericRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                            (JSON..=) "Constant" Prelude.<$> constant,
                            (JSON..=) "Inclusive" Prelude.<$> inclusive])}
instance JSON.ToJSON TopicNumericRangeFilterProperty where
  toJSON TopicNumericRangeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
               (JSON..=) "Constant" Prelude.<$> constant,
               (JSON..=) "Inclusive" Prelude.<$> inclusive]))
instance Property "Aggregation" TopicNumericRangeFilterProperty where
  type PropertyType "Aggregation" TopicNumericRangeFilterProperty = Value Prelude.Text
  set newValue TopicNumericRangeFilterProperty {..}
    = TopicNumericRangeFilterProperty
        {aggregation = Prelude.pure newValue, ..}
instance Property "Constant" TopicNumericRangeFilterProperty where
  type PropertyType "Constant" TopicNumericRangeFilterProperty = TopicRangeFilterConstantProperty
  set newValue TopicNumericRangeFilterProperty {..}
    = TopicNumericRangeFilterProperty
        {constant = Prelude.pure newValue, ..}
instance Property "Inclusive" TopicNumericRangeFilterProperty where
  type PropertyType "Inclusive" TopicNumericRangeFilterProperty = Value Prelude.Bool
  set newValue TopicNumericRangeFilterProperty {..}
    = TopicNumericRangeFilterProperty
        {inclusive = Prelude.pure newValue, ..}