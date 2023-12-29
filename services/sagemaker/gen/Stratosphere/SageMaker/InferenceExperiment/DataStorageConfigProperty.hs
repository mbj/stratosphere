module Stratosphere.SageMaker.InferenceExperiment.DataStorageConfigProperty (
        module Exports, DataStorageConfigProperty(..),
        mkDataStorageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.CaptureContentTypeHeaderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataStorageConfigProperty
  = DataStorageConfigProperty {contentType :: (Prelude.Maybe CaptureContentTypeHeaderProperty),
                               destination :: (Value Prelude.Text),
                               kmsKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataStorageConfigProperty ::
  Value Prelude.Text -> DataStorageConfigProperty
mkDataStorageConfigProperty destination
  = DataStorageConfigProperty
      {destination = destination, contentType = Prelude.Nothing,
       kmsKey = Prelude.Nothing}
instance ToResourceProperties DataStorageConfigProperty where
  toResourceProperties DataStorageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.DataStorageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "KmsKey" Prelude.<$> kmsKey]))}
instance JSON.ToJSON DataStorageConfigProperty where
  toJSON DataStorageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination]
              (Prelude.catMaybes
                 [(JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "KmsKey" Prelude.<$> kmsKey])))
instance Property "ContentType" DataStorageConfigProperty where
  type PropertyType "ContentType" DataStorageConfigProperty = CaptureContentTypeHeaderProperty
  set newValue DataStorageConfigProperty {..}
    = DataStorageConfigProperty
        {contentType = Prelude.pure newValue, ..}
instance Property "Destination" DataStorageConfigProperty where
  type PropertyType "Destination" DataStorageConfigProperty = Value Prelude.Text
  set newValue DataStorageConfigProperty {..}
    = DataStorageConfigProperty {destination = newValue, ..}
instance Property "KmsKey" DataStorageConfigProperty where
  type PropertyType "KmsKey" DataStorageConfigProperty = Value Prelude.Text
  set newValue DataStorageConfigProperty {..}
    = DataStorageConfigProperty {kmsKey = Prelude.pure newValue, ..}