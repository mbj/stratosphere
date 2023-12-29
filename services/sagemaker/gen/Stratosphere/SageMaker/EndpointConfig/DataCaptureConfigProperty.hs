module Stratosphere.SageMaker.EndpointConfig.DataCaptureConfigProperty (
        module Exports, DataCaptureConfigProperty(..),
        mkDataCaptureConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.CaptureContentTypeHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.CaptureOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCaptureConfigProperty
  = DataCaptureConfigProperty {captureContentTypeHeader :: (Prelude.Maybe CaptureContentTypeHeaderProperty),
                               captureOptions :: [CaptureOptionProperty],
                               destinationS3Uri :: (Value Prelude.Text),
                               enableCapture :: (Prelude.Maybe (Value Prelude.Bool)),
                               initialSamplingPercentage :: (Value Prelude.Integer),
                               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCaptureConfigProperty ::
  [CaptureOptionProperty]
  -> Value Prelude.Text
     -> Value Prelude.Integer -> DataCaptureConfigProperty
mkDataCaptureConfigProperty
  captureOptions
  destinationS3Uri
  initialSamplingPercentage
  = DataCaptureConfigProperty
      {captureOptions = captureOptions,
       destinationS3Uri = destinationS3Uri,
       initialSamplingPercentage = initialSamplingPercentage,
       captureContentTypeHeader = Prelude.Nothing,
       enableCapture = Prelude.Nothing, kmsKeyId = Prelude.Nothing}
instance ToResourceProperties DataCaptureConfigProperty where
  toResourceProperties DataCaptureConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.DataCaptureConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CaptureOptions" JSON..= captureOptions,
                            "DestinationS3Uri" JSON..= destinationS3Uri,
                            "InitialSamplingPercentage" JSON..= initialSamplingPercentage]
                           (Prelude.catMaybes
                              [(JSON..=) "CaptureContentTypeHeader"
                                 Prelude.<$> captureContentTypeHeader,
                               (JSON..=) "EnableCapture" Prelude.<$> enableCapture,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON DataCaptureConfigProperty where
  toJSON DataCaptureConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CaptureOptions" JSON..= captureOptions,
               "DestinationS3Uri" JSON..= destinationS3Uri,
               "InitialSamplingPercentage" JSON..= initialSamplingPercentage]
              (Prelude.catMaybes
                 [(JSON..=) "CaptureContentTypeHeader"
                    Prelude.<$> captureContentTypeHeader,
                  (JSON..=) "EnableCapture" Prelude.<$> enableCapture,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "CaptureContentTypeHeader" DataCaptureConfigProperty where
  type PropertyType "CaptureContentTypeHeader" DataCaptureConfigProperty = CaptureContentTypeHeaderProperty
  set newValue DataCaptureConfigProperty {..}
    = DataCaptureConfigProperty
        {captureContentTypeHeader = Prelude.pure newValue, ..}
instance Property "CaptureOptions" DataCaptureConfigProperty where
  type PropertyType "CaptureOptions" DataCaptureConfigProperty = [CaptureOptionProperty]
  set newValue DataCaptureConfigProperty {..}
    = DataCaptureConfigProperty {captureOptions = newValue, ..}
instance Property "DestinationS3Uri" DataCaptureConfigProperty where
  type PropertyType "DestinationS3Uri" DataCaptureConfigProperty = Value Prelude.Text
  set newValue DataCaptureConfigProperty {..}
    = DataCaptureConfigProperty {destinationS3Uri = newValue, ..}
instance Property "EnableCapture" DataCaptureConfigProperty where
  type PropertyType "EnableCapture" DataCaptureConfigProperty = Value Prelude.Bool
  set newValue DataCaptureConfigProperty {..}
    = DataCaptureConfigProperty
        {enableCapture = Prelude.pure newValue, ..}
instance Property "InitialSamplingPercentage" DataCaptureConfigProperty where
  type PropertyType "InitialSamplingPercentage" DataCaptureConfigProperty = Value Prelude.Integer
  set newValue DataCaptureConfigProperty {..}
    = DataCaptureConfigProperty
        {initialSamplingPercentage = newValue, ..}
instance Property "KmsKeyId" DataCaptureConfigProperty where
  type PropertyType "KmsKeyId" DataCaptureConfigProperty = Value Prelude.Text
  set newValue DataCaptureConfigProperty {..}
    = DataCaptureConfigProperty {kmsKeyId = Prelude.pure newValue, ..}