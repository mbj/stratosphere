module Stratosphere.ServiceCatalog.ServiceActionAssociation (
        ServiceActionAssociation(..), mkServiceActionAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceActionAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-serviceactionassociation.html>
    ServiceActionAssociation {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-serviceactionassociation.html#cfn-servicecatalog-serviceactionassociation-productid>
                              productId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-serviceactionassociation.html#cfn-servicecatalog-serviceactionassociation-provisioningartifactid>
                              provisioningArtifactId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-serviceactionassociation.html#cfn-servicecatalog-serviceactionassociation-serviceactionid>
                              serviceActionId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceActionAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ServiceActionAssociation
mkServiceActionAssociation
  productId
  provisioningArtifactId
  serviceActionId
  = ServiceActionAssociation
      {haddock_workaround_ = (), productId = productId,
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