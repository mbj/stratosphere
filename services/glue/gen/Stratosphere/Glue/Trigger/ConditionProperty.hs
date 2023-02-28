module Stratosphere.Glue.Trigger.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = ConditionProperty {crawlState :: (Prelude.Maybe (Value Prelude.Text)),
                       crawlerName :: (Prelude.Maybe (Value Prelude.Text)),
                       jobName :: (Prelude.Maybe (Value Prelude.Text)),
                       logicalOperator :: (Prelude.Maybe (Value Prelude.Text)),
                       state :: (Prelude.Maybe (Value Prelude.Text))}
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {crawlState = Prelude.Nothing, crawlerName = Prelude.Nothing,
       jobName = Prelude.Nothing, logicalOperator = Prelude.Nothing,
       state = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Trigger.Condition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CrawlState" Prelude.<$> crawlState,
                            (JSON..=) "CrawlerName" Prelude.<$> crawlerName,
                            (JSON..=) "JobName" Prelude.<$> jobName,
                            (JSON..=) "LogicalOperator" Prelude.<$> logicalOperator,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CrawlState" Prelude.<$> crawlState,
               (JSON..=) "CrawlerName" Prelude.<$> crawlerName,
               (JSON..=) "JobName" Prelude.<$> jobName,
               (JSON..=) "LogicalOperator" Prelude.<$> logicalOperator,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "CrawlState" ConditionProperty where
  type PropertyType "CrawlState" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {crawlState = Prelude.pure newValue, ..}
instance Property "CrawlerName" ConditionProperty where
  type PropertyType "CrawlerName" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {crawlerName = Prelude.pure newValue, ..}
instance Property "JobName" ConditionProperty where
  type PropertyType "JobName" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {jobName = Prelude.pure newValue, ..}
instance Property "LogicalOperator" ConditionProperty where
  type PropertyType "LogicalOperator" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {logicalOperator = Prelude.pure newValue, ..}
instance Property "State" ConditionProperty where
  type PropertyType "State" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {state = Prelude.pure newValue, ..}