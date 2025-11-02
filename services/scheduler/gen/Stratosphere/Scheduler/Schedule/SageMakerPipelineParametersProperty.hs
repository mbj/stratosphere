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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-sagemakerpipelineparameters.html>
    SageMakerPipelineParametersProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-sagemakerpipelineparameters.html#cfn-scheduler-schedule-sagemakerpipelineparameters-pipelineparameterlist>
                                         pipelineParameterList :: (Prelude.Maybe [SageMakerPipelineParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSageMakerPipelineParametersProperty ::
  SageMakerPipelineParametersProperty
mkSageMakerPipelineParametersProperty
  = SageMakerPipelineParametersProperty
      {haddock_workaround_ = (), pipelineParameterList = Prelude.Nothing}
instance ToResourceProperties SageMakerPipelineParametersProperty where
  toResourceProperties SageMakerPipelineParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.SageMakerPipelineParameters",
         supportsTags = Prelude.False,
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
  set newValue SageMakerPipelineParametersProperty {..}
    = SageMakerPipelineParametersProperty
        {pipelineParameterList = Prelude.pure newValue, ..}