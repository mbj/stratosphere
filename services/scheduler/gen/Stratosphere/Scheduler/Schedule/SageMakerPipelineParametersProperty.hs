module Stratosphere.Scheduler.Schedule.SageMakerPipelineParametersProperty (
        module Exports, SageMakerPipelineParametersProperty(..),
        mkSageMakerPipelineParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.SageMakerPipelineParameterProperty as Exports
import Stratosphere.ResourceProperties
data SageMakerPipelineParametersProperty
  = SageMakerPipelineParametersProperty {pipelineParameterList :: (Prelude.Maybe [SageMakerPipelineParameterProperty])}
mkSageMakerPipelineParametersProperty ::
  SageMakerPipelineParametersProperty
mkSageMakerPipelineParametersProperty
  = SageMakerPipelineParametersProperty
      {pipelineParameterList = Prelude.Nothing}
instance ToResourceProperties SageMakerPipelineParametersProperty where
  toResourceProperties SageMakerPipelineParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.SageMakerPipelineParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PipelineParameterList"
                              Prelude.<$> pipelineParameterList])}
instance JSON.ToJSON SageMakerPipelineParametersProperty where
  toJSON SageMakerPipelineParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PipelineParameterList"
                 Prelude.<$> pipelineParameterList]))
instance Property "PipelineParameterList" SageMakerPipelineParametersProperty where
  type PropertyType "PipelineParameterList" SageMakerPipelineParametersProperty = [SageMakerPipelineParameterProperty]
  set newValue SageMakerPipelineParametersProperty {}
    = SageMakerPipelineParametersProperty
        {pipelineParameterList = Prelude.pure newValue, ..}