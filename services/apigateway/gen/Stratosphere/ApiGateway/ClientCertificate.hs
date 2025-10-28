module Stratosphere.ApiGateway.ClientCertificate (
        ClientCertificate(..), mkClientCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ClientCertificate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html>
    ClientCertificate {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientCertificate :: ClientCertificate
mkClientCertificate
  = ClientCertificate
      {haddock_workaround_ = (), description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ClientCertificate where
  toResourceProperties ClientCertificate {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::ClientCertificate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ClientCertificate where
  toJSON ClientCertificate {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" ClientCertificate where
  type PropertyType "Description" ClientCertificate = Value Prelude.Text
  set newValue ClientCertificate {..}
    = ClientCertificate {description = Prelude.pure newValue, ..}
instance Property "Tags" ClientCertificate where
  type PropertyType "Tags" ClientCertificate = [Tag]
  set newValue ClientCertificate {..}
    = ClientCertificate {tags = Prelude.pure newValue, ..}