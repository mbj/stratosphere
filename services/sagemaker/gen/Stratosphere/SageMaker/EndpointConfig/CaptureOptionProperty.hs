module Stratosphere.SageMaker.EndpointConfig.CaptureOptionProperty (
        CaptureOptionProperty(..), mkCaptureOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptureOptionProperty
  = CaptureOptionProperty {captureMode :: (Value Prelude.Text)}
mkCaptureOptionProperty ::
  Value Prelude.Text -> CaptureOptionProperty
mkCaptureOptionProperty captureMode
  = CaptureOptionProperty {captureMode = captureMode}
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
  set newValue CaptureOptionProperty {}
    = CaptureOptionProperty {captureMode = newValue, ..}