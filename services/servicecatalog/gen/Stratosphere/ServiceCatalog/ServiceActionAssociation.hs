module Stratosphere.ServiceCatalog.ServiceActionAssociation (
        ServiceActionAssociation(..), mkServiceActionAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceActionAssociation
  = ServiceActionAssociation {productId :: (Value Prelude.Text),
                              provisioningArtifactId :: (Value Prelude.Text),
                              serviceActionId :: (Value Prelude.Text)}
mkServiceActionAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ServiceActionAssociation
mkServiceActionAssociation
  productId
  provisioningArtifactId
  serviceActionId
  = ServiceActionAssociation
      {productId = productId,
       provisioningArtifactId = provisioningArtifactId,
       serviceActionId = serviceActionId}
instance ToResourceProperties ServiceActionAssociation where
  toResourceProperties ServiceActionAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::ServiceActionAssociation",
         supportsTags = Prelude.False,
         properties = ["ProductId" JSON..= productId,
                       "ProvisioningArtifactId" JSON..= provisioningArtifactId,
                       "ServiceActionId" JSON..= serviceActionId]}
instance JSON.ToJSON ServiceActionAssociation where
  toJSON ServiceActionAssociation {..}
    = JSON.object
        ["ProductId" JSON..= productId,
         "ProvisioningArtifactId" JSON..= provisioningArtifactId,
         "ServiceActionId" JSON..= serviceActionId]
instance Property "ProductId" ServiceActionAssociation where
  type PropertyType "ProductId" ServiceActionAssociation = Value Prelude.Text
  set newValue ServiceActionAssociation {..}
    = ServiceActionAssociation {productId = newValue, ..}
instance Property "ProvisioningArtifactId" ServiceActionAssociation where
  type PropertyType "ProvisioningArtifactId" ServiceActionAssociation = Value Prelude.Text
  set newValue ServiceActionAssociation {..}
    = ServiceActionAssociation {provisioningArtifactId = newValue, ..}
instance Property "ServiceActionId" ServiceActionAssociation where
  type PropertyType "ServiceActionId" ServiceActionAssociation = Value Prelude.Text
  set newValue ServiceActionAssociation {..}
    = ServiceActionAssociation {serviceActionId = newValue, ..}