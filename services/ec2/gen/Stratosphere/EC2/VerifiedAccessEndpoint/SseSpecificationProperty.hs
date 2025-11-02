module Stratosphere.EC2.VerifiedAccessEndpoint.SseSpecificationProperty (
        SseSpecificationProperty(..), mkSseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SseSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-ssespecification.html>
    SseSpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-ssespecification.html#cfn-ec2-verifiedaccessendpoint-ssespecification-customermanagedkeyenabled>
                              customerManagedKeyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-ssespecification.html#cfn-ec2-verifiedaccessendpoint-ssespecification-kmskeyarn>
                              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSseSpecificationProperty :: SseSpecificationProperty
mkSseSpecificationProperty
  = SseSpecificationProperty
      {haddock_workaround_ = (),
       customerManagedKeyEnabled = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties SseSpecificationProperty where
  toResourceProperties SseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.SseSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerManagedKeyEnabled"
                              Prelude.<$> customerManagedKeyEnabled,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON SseSpecificationProperty where
  toJSON SseSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerManagedKeyEnabled"
                 Prelude.<$> customerManagedKeyEnabled,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "CustomerManagedKeyEnabled" SseSpecificationProperty where
  type PropertyType "CustomerManagedKeyEnabled" SseSpecificationProperty = Value Prelude.Bool
  set newValue SseSpecificationProperty {..}
    = SseSpecificationProperty
        {customerManagedKeyEnabled = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" SseSpecificationProperty where
  type PropertyType "KmsKeyArn" SseSpecificationProperty = Value Prelude.Text
  set newValue SseSpecificationProperty {..}
    = SseSpecificationProperty {kmsKeyArn = Prelude.pure newValue, ..}