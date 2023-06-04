module Stratosphere.QuickSight.Topic.TopicRelativeDateFilterProperty (
        module Exports, TopicRelativeDateFilterProperty(..),
        mkTopicRelativeDateFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicSingularFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicRelativeDateFilterProperty
  = TopicRelativeDateFilterProperty {constant :: (Prelude.Maybe TopicSingularFilterConstantProperty),
                                     relativeDateFilterFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                     timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
mkTopicRelativeDateFilterProperty ::
  TopicRelativeDateFilterProperty
mkTopicRelativeDateFilterProperty
  = TopicRelativeDateFilterProperty
      {constant = Prelude.Nothing,
       relativeDateFilterFunction = Prelude.Nothing,
       timeGranularity = Prelude.Nothing}
instance ToResourceProperties TopicRelativeDateFilterProperty where
  toResourceProperties TopicRelativeDateFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicRelativeDateFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constant" Prelude.<$> constant,
                            (JSON..=) "RelativeDateFilterFunction"
                              Prelude.<$> relativeDateFilterFunction,
                            (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])}
instance JSON.ToJSON TopicRelativeDateFilterProperty where
  toJSON TopicRelativeDateFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constant" Prelude.<$> constant,
               (JSON..=) "RelativeDateFilterFunction"
                 Prelude.<$> relativeDateFilterFunction,
               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))
instance Property "Constant" TopicRelativeDateFilterProperty where
  type PropertyType "Constant" TopicRelativeDateFilterProperty = TopicSingularFilterConstantProperty
  set newValue TopicRelativeDateFilterProperty {..}
    = TopicRelativeDateFilterProperty
        {constant = Prelude.pure newValue, ..}
instance Property "RelativeDateFilterFunction" TopicRelativeDateFilterProperty where
  type PropertyType "RelativeDateFilterFunction" TopicRelativeDateFilterProperty = Value Prelude.Text
  set newValue TopicRelativeDateFilterProperty {..}
    = TopicRelativeDateFilterProperty
        {relativeDateFilterFunction = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TopicRelativeDateFilterProperty where
  type PropertyType "TimeGranularity" TopicRelativeDateFilterProperty = Value Prelude.Text
  set newValue TopicRelativeDateFilterProperty {..}
    = TopicRelativeDateFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}