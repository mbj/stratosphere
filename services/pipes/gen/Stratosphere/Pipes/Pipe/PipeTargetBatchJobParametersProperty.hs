module Stratosphere.Pipes.Pipe.PipeTargetBatchJobParametersProperty (
        module Exports, PipeTargetBatchJobParametersProperty(..),
        mkPipeTargetBatchJobParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.BatchArrayPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.BatchContainerOverridesProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.BatchJobDependencyProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.BatchRetryStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetBatchJobParametersProperty
  = PipeTargetBatchJobParametersProperty {arrayProperties :: (Prelude.Maybe BatchArrayPropertiesProperty),
                                          containerOverrides :: (Prelude.Maybe BatchContainerOverridesProperty),
                                          dependsOn :: (Prelude.Maybe [BatchJobDependencyProperty]),
                                          jobDefinition :: (Value Prelude.Text),
                                          jobName :: (Value Prelude.Text),
                                          parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                          retryStrategy :: (Prelude.Maybe BatchRetryStrategyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetBatchJobParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> PipeTargetBatchJobParametersProperty
mkPipeTargetBatchJobParametersProperty jobDefinition jobName
  = PipeTargetBatchJobParametersProperty
      {jobDefinition = jobDefinition, jobName = jobName,
       arrayProperties = Prelude.Nothing,
       containerOverrides = Prelude.Nothing, dependsOn = Prelude.Nothing,
       parameters = Prelude.Nothing, retryStrategy = Prelude.Nothing}
instance ToResourceProperties PipeTargetBatchJobParametersProperty where
  toResourceProperties PipeTargetBatchJobParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetBatchJobParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JobDefinition" JSON..= jobDefinition, "JobName" JSON..= jobName]
                           (Prelude.catMaybes
                              [(JSON..=) "ArrayProperties" Prelude.<$> arrayProperties,
                               (JSON..=) "ContainerOverrides" Prelude.<$> containerOverrides,
                               (JSON..=) "DependsOn" Prelude.<$> dependsOn,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "RetryStrategy" Prelude.<$> retryStrategy]))}
instance JSON.ToJSON PipeTargetBatchJobParametersProperty where
  toJSON PipeTargetBatchJobParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JobDefinition" JSON..= jobDefinition, "JobName" JSON..= jobName]
              (Prelude.catMaybes
                 [(JSON..=) "ArrayProperties" Prelude.<$> arrayProperties,
                  (JSON..=) "ContainerOverrides" Prelude.<$> containerOverrides,
                  (JSON..=) "DependsOn" Prelude.<$> dependsOn,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "RetryStrategy" Prelude.<$> retryStrategy])))
instance Property "ArrayProperties" PipeTargetBatchJobParametersProperty where
  type PropertyType "ArrayProperties" PipeTargetBatchJobParametersProperty = BatchArrayPropertiesProperty
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty
        {arrayProperties = Prelude.pure newValue, ..}
instance Property "ContainerOverrides" PipeTargetBatchJobParametersProperty where
  type PropertyType "ContainerOverrides" PipeTargetBatchJobParametersProperty = BatchContainerOverridesProperty
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty
        {containerOverrides = Prelude.pure newValue, ..}
instance Property "DependsOn" PipeTargetBatchJobParametersProperty where
  type PropertyType "DependsOn" PipeTargetBatchJobParametersProperty = [BatchJobDependencyProperty]
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty
        {dependsOn = Prelude.pure newValue, ..}
instance Property "JobDefinition" PipeTargetBatchJobParametersProperty where
  type PropertyType "JobDefinition" PipeTargetBatchJobParametersProperty = Value Prelude.Text
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty
        {jobDefinition = newValue, ..}
instance Property "JobName" PipeTargetBatchJobParametersProperty where
  type PropertyType "JobName" PipeTargetBatchJobParametersProperty = Value Prelude.Text
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty {jobName = newValue, ..}
instance Property "Parameters" PipeTargetBatchJobParametersProperty where
  type PropertyType "Parameters" PipeTargetBatchJobParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "RetryStrategy" PipeTargetBatchJobParametersProperty where
  type PropertyType "RetryStrategy" PipeTargetBatchJobParametersProperty = BatchRetryStrategyProperty
  set newValue PipeTargetBatchJobParametersProperty {..}
    = PipeTargetBatchJobParametersProperty
        {retryStrategy = Prelude.pure newValue, ..}