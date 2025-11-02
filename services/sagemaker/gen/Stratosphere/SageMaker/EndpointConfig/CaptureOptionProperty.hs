module Stratosphere.SageMaker.EndpointConfig.CaptureOptionProperty (
        CaptureOptionProperty(..), mkCaptureOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptureOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-captureoption.html>
    CaptureOptionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-captureoption.html#cfn-sagemaker-endpointconfig-captureoption-capturemode>
                           captureMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptureOptionProperty ::
  Value Prelude.Text -> CaptureOptionProperty
mkCaptureOptionProperty captureMode
  = CaptureOptionProperty
      {haddock_workaround_ = (), captureMode = captureMode}
instance ToResourceProperties CaptureOptionProperty where
  toResourceProperties CaptureOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.CaptureOption",
         supportsTags = Prelude.False,
         properties = ["CaptureMode" JSON..= captureMode]}
instance JSON.ToJSON CaptureOptionProperty where
  toJSON CaptureOptionProperty {..}
    = JSON.object ["CaptureMode" JSON..= captureMode]
instance Property "CaptureMode" CaptureOptionProperty where
  type PropertyType "CaptureMode" CaptureOptionProperty = Value Prelude.Text
  set newValue CaptureOptionProperty {..}
    = CaptureOptionProperty {captureMode = newValue, ..}