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
  = BatchParametersProperty {arrayProperties :: (Prelude.Maybe BatchArrayPropertiesProperty),
                             jobDefinition :: (Value Prelude.Text),
                             jobName :: (Value Prelude.Text),
                             retryStrategy :: (Prelude.Maybe BatchRetryStrategyProperty)}
mkBatchParametersProperty ::
  Value Prelude.Text -> Value Prelude.Text -> BatchParametersProperty
mkBatchParametersProperty jobDefinition jobName
  = BatchParametersProperty
      {jobDefinition = jobDefinition, jobName = jobName,
       arrayProperties = Prelude.Nothing, retryStrategy = Prelude.Nothing}
instance ToResourceProperties BatchParametersProperty where
  toResourceProperties BatchParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.BatchParameters",
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