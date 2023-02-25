module Stratosphere.SageMaker.DeviceFleet.EdgeOutputConfigProperty (
        EdgeOutputConfigProperty(..), mkEdgeOutputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EdgeOutputConfigProperty
  = EdgeOutputConfigProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                              s3OutputLocation :: (Value Prelude.Text)}
mkEdgeOutputConfigProperty ::
  Value Prelude.Text -> EdgeOutputConfigProperty
mkEdgeOutputConfigProperty s3OutputLocation
  = EdgeOutputConfigProperty
      {s3OutputLocation = s3OutputLocation, kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EdgeOutputConfigProperty where
  toResourceProperties EdgeOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DeviceFleet.EdgeOutputConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3OutputLocation" JSON..= s3OutputLocation]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON EdgeOutputConfigProperty where
  toJSON EdgeOutputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3OutputLocation" JSON..= s3OutputLocation]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" EdgeOutputConfigProperty where
  type PropertyType "KmsKeyId" EdgeOutputConfigProperty = Value Prelude.Text
  set newValue EdgeOutputConfigProperty {..}
    = EdgeOutputConfigProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "S3OutputLocation" EdgeOutputConfigProperty where
  type PropertyType "S3OutputLocation" EdgeOutputConfigProperty = Value Prelude.Text
  set newValue EdgeOutputConfigProperty {..}
    = EdgeOutputConfigProperty {s3OutputLocation = newValue, ..}