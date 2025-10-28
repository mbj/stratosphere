module Stratosphere.Events.Rule.BatchParametersProperty (
        module Exports, BatchParametersProperty(..),
        mkBatchParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Rule.BatchArrayPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.BatchRetryStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html>
    BatchParametersProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-arrayproperties>
                             arrayProperties :: (Prelude.Maybe BatchArrayPropertiesProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-jobdefinition>
                             jobDefinition :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-jobname>
                             jobName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-retrystrategy>
                             retryStrategy :: (Prelude.Maybe BatchRetryStrategyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchParametersProperty ::
  Value Prelude.Text -> Value Prelude.Text -> BatchParametersProperty
mkBatchParametersProperty jobDefinition jobName
  = BatchParametersProperty
      {haddock_workaround_ = (), jobDefinition = jobDefinition,
       jobName = jobName, arrayProperties = Prelude.Nothing,
       retryStrategy = Prelude.Nothing}
instance ToResourceProperties BatchParametersProperty where
  toResourceProperties BatchParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.BatchParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JobDefinition" JSON..= jobDefinition, "JobName" JSON..= jobName]
                           (Prelude.catMaybes
                              [(JSON..=) "ArrayProperties" Prelude.<$> arrayProperties,
                               (JSON..=) "RetryStrategy" Prelude.<$> retryStrategy]))}
instance JSON.ToJSON BatchParametersProperty where
  toJSON BatchParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JobDefinition" JSON..= jobDefinition, "JobName" JSON..= jobName]
              (Prelude.catMaybes
                 [(JSON..=) "ArrayProperties" Prelude.<$> arrayProperties,
                  (JSON..=) "RetryStrategy" Prelude.<$> retryStrategy])))
instance Property "ArrayProperties" BatchParametersProperty where
  type PropertyType "ArrayProperties" BatchParametersProperty = BatchArrayPropertiesProperty
  set newValue BatchParametersProperty {..}
    = BatchParametersProperty
        {arrayProperties = Prelude.pure newValue, ..}
instance Property "JobDefinition" BatchParametersProperty where
  type PropertyType "JobDefinition" BatchParametersProperty = Value Prelude.Text
  set newValue BatchParametersProperty {..}
    = BatchParametersProperty {jobDefinition = newValue, ..}
instance Property "JobName" BatchParametersProperty where
  type PropertyType "JobName" BatchParametersProperty = Value Prelude.Text
  set newValue BatchParametersProperty {..}
    = BatchParametersProperty {jobName = newValue, ..}
instance Property "RetryStrategy" BatchParametersProperty where
  type PropertyType "RetryStrategy" BatchParametersProperty = BatchRetryStrategyProperty
  set newValue BatchParametersProperty {..}
    = BatchParametersProperty
        {retryStrategy = Prelude.pure newValue, ..}