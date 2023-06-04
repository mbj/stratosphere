module Stratosphere.QuickSight.Topic.TopicDateRangeFilterProperty (
        module Exports, TopicDateRangeFilterProperty(..),
        mkTopicDateRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicRangeFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicDateRangeFilterProperty
  = TopicDateRangeFilterProperty {constant :: (Prelude.Maybe TopicRangeFilterConstantProperty),
                                  inclusive :: (Prelude.Maybe (Value Prelude.Bool))}
mkTopicDateRangeFilterProperty :: TopicDateRangeFilterProperty
mkTopicDateRangeFilterProperty
  = TopicDateRangeFilterProperty
      {constant = Prelude.Nothing, inclusive = Prelude.Nothing}
instance ToResourceProperties TopicDateRangeFilterProperty where
  toResourceProperties TopicDateRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicDateRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constant" Prelude.<$> constant,
                            (JSON..=) "Inclusive" Prelude.<$> inclusive])}
instance JSON.ToJSON TopicDateRangeFilterProperty where
  toJSON TopicDateRangeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constant" Prelude.<$> constant,
               (JSON..=) "Inclusive" Prelude.<$> inclusive]))
instance Property "Constant" TopicDateRangeFilterProperty where
  type PropertyType "Constant" TopicDateRangeFilterProperty = TopicRangeFilterConstantProperty
  set newValue TopicDateRangeFilterProperty {..}
    = TopicDateRangeFilterProperty
        {constant = Prelude.pure newValue, ..}
instance Property "Inclusive" TopicDateRangeFilterProperty where
  type PropertyType "Inclusive" TopicDateRangeFilterProperty = Value Prelude.Bool
  set newValue TopicDateRangeFilterProperty {..}
    = TopicDateRangeFilterProperty
        {inclusive = Prelude.pure newValue, ..}