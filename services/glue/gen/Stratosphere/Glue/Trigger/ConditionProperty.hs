module Stratosphere.Glue.Trigger.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-crawlstate>
                       crawlState :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-crawlername>
                       crawlerName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-jobname>
                       jobName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-logicaloperator>
                       logicalOperator :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-state>
                       state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {haddock_workaround_ = (), crawlState = Prelude.Nothing,
       crawlerName = Prelude.Nothing, jobName = Prelude.Nothing,
       logicalOperator = Prelude.Nothing, state = Prelude.Nothing}
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