module Stratosphere.SageMaker.InferenceComponent.InferenceComponentStartupParametersProperty (
        InferenceComponentStartupParametersProperty(..),
        mkInferenceComponentStartupParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentStartupParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentstartupparameters.html>
    InferenceComponentStartupParametersProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentstartupparameters.html#cfn-sagemaker-inferencecomponent-inferencecomponentstartupparameters-containerstartuphealthchecktimeoutinseconds>
                                                 containerStartupHealthCheckTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentstartupparameters.html#cfn-sagemaker-inferencecomponent-inferencecomponentstartupparameters-modeldatadownloadtimeoutinseconds>
                                                 modelDataDownloadTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentStartupParametersProperty ::
  InferenceComponentStartupParametersProperty
mkInferenceComponentStartupParametersProperty
  = InferenceComponentStartupParametersProperty
      {haddock_workaround_ = (),
       containerStartupHealthCheckTimeoutInSeconds = Prelude.Nothing,
       modelDataDownloadTimeoutInSeconds = Prelude.Nothing}
instance ToResourceProperties InferenceComponentStartupParametersProperty where
  toResourceProperties
    InferenceComponentStartupParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentStartupParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerStartupHealthCheckTimeoutInSeconds"
                              Prelude.<$> containerStartupHealthCheckTimeoutInSeconds,
                            (JSON..=) "ModelDataDownloadTimeoutInSeconds"
                              Prelude.<$> modelDataDownloadTimeoutInSeconds])}
instance JSON.ToJSON InferenceComponentStartupParametersProperty where
  toJSON InferenceComponentStartupParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerStartupHealthCheckTimeoutInSeconds"
                 Prelude.<$> containerStartupHealthCheckTimeoutInSeconds,
               (JSON..=) "ModelDataDownloadTimeoutInSeconds"
                 Prelude.<$> modelDataDownloadTimeoutInSeconds]))
instance Property "ContainerStartupHealthCheckTimeoutInSeconds" InferenceComponentStartupParametersProperty where
  type PropertyType "ContainerStartupHealthCheckTimeoutInSeconds" InferenceComponentStartupParametersProperty = Value Prelude.Integer
  set newValue InferenceComponentStartupParametersProperty {..}
    = InferenceComponentStartupParametersProperty
        {containerStartupHealthCheckTimeoutInSeconds = Prelude.pure
                                                         newValue,
         ..}
instance Property "ModelDataDownloadTimeoutInSeconds" InferenceComponentStartupParametersProperty where
  type PropertyType "ModelDataDownloadTimeoutInSeconds" InferenceComponentStartupParametersProperty = Value Prelude.Integer
  set newValue InferenceComponentStartupParametersProperty {..}
    = InferenceComponentStartupParametersProperty
        {modelDataDownloadTimeoutInSeconds = Prelude.pure newValue, ..}