module Stratosphere.SageMaker.DeviceFleet.EdgeOutputConfigProperty (
        EdgeOutputConfigProperty(..), mkEdgeOutputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EdgeOutputConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-devicefleet-edgeoutputconfig.html>
    EdgeOutputConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-devicefleet-edgeoutputconfig.html#cfn-sagemaker-devicefleet-edgeoutputconfig-kmskeyid>
                              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-devicefleet-edgeoutputconfig.html#cfn-sagemaker-devicefleet-edgeoutputconfig-s3outputlocation>
                              s3OutputLocation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEdgeOutputConfigProperty ::
  Value Prelude.Text -> EdgeOutputConfigProperty
mkEdgeOutputConfigProperty s3OutputLocation
  = EdgeOutputConfigProperty
      {haddock_workaround_ = (), s3OutputLocation = s3OutputLocation,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EdgeOutputConfigProperty where
  toResourceProperties EdgeOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DeviceFleet.EdgeOutputConfig",
         supportsTags = Prelude.False,
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