module Stratosphere.SageMaker.Pipeline.ParallelismConfigurationProperty (
        ParallelismConfigurationProperty(..),
        mkParallelismConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParallelismConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-pipeline-parallelismconfiguration.html>
    ParallelismConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-pipeline-parallelismconfiguration.html#cfn-sagemaker-pipeline-parallelismconfiguration-maxparallelexecutionsteps>
                                      maxParallelExecutionSteps :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParallelismConfigurationProperty ::
  Value Prelude.Integer -> ParallelismConfigurationProperty
mkParallelismConfigurationProperty maxParallelExecutionSteps
  = ParallelismConfigurationProperty
      {haddock_workaround_ = (),
       maxParallelExecutionSteps = maxParallelExecutionSteps}
instance ToResourceProperties ParallelismConfigurationProperty where
  toResourceProperties ParallelismConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Pipeline.ParallelismConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxParallelExecutionSteps"
                         JSON..= maxParallelExecutionSteps]}
instance JSON.ToJSON ParallelismConfigurationProperty where
  toJSON ParallelismConfigurationProperty {..}
    = JSON.object
        ["MaxParallelExecutionSteps" JSON..= maxParallelExecutionSteps]
instance Property "MaxParallelExecutionSteps" ParallelismConfigurationProperty where
  type PropertyType "MaxParallelExecutionSteps" ParallelismConfigurationProperty = Value Prelude.Integer
  set newValue ParallelismConfigurationProperty {..}
    = ParallelismConfigurationProperty
        {maxParallelExecutionSteps = newValue, ..}