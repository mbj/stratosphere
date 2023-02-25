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
  = ClientCertificate {description :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
mkClientCertificate :: ClientCertificate
mkClientCertificate
  = ClientCertificate
      {description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ClientCertificate where
  toResourceProperties ClientCertificate {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::ClientCertificate",
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