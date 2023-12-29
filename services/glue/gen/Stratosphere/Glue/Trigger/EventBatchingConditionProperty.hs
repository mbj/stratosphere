module Stratosphere.Glue.Trigger.EventBatchingConditionProperty (
        EventBatchingConditionProperty(..),
        mkEventBatchingConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBatchingConditionProperty
  = EventBatchingConditionProperty {batchSize :: (Value Prelude.Integer),
                                    batchWindow :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBatchingConditionProperty ::
  Value Prelude.Integer -> EventBatchingConditionProperty
mkEventBatchingConditionProperty batchSize
  = EventBatchingConditionProperty
      {batchSize = batchSize, batchWindow = Prelude.Nothing}
instance ToResourceProperties EventBatchingConditionProperty where
  toResourceProperties EventBatchingConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Trigger.EventBatchingCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BatchSize" JSON..= batchSize]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchWindow" Prelude.<$> batchWindow]))}
instance JSON.ToJSON EventBatchingConditionProperty where
  toJSON EventBatchingConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BatchSize" JSON..= batchSize]
              (Prelude.catMaybes
                 [(JSON..=) "BatchWindow" Prelude.<$> batchWindow])))
instance Property "BatchSize" EventBatchingConditionProperty where
  type PropertyType "BatchSize" EventBatchingConditionProperty = Value Prelude.Integer
  set newValue EventBatchingConditionProperty {..}
    = EventBatchingConditionProperty {batchSize = newValue, ..}
instance Property "BatchWindow" EventBatchingConditionProperty where
  type PropertyType "BatchWindow" EventBatchingConditionProperty = Value Prelude.Integer
  set newValue EventBatchingConditionProperty {..}
    = EventBatchingConditionProperty
        {batchWindow = Prelude.pure newValue, ..}