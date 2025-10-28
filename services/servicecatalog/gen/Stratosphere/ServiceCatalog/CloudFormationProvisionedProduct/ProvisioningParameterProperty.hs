module Stratosphere.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningParameterProperty (
        ProvisioningParameterProperty(..), mkProvisioningParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisioningParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html>
    ProvisioningParameterProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-key>
                                   key :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-value>
                                   value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisioningParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ProvisioningParameterProperty
mkProvisioningParameterProperty key value
  = ProvisioningParameterProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties ProvisioningParameterProperty where
  toResourceProperties ProvisioningParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ProvisioningParameterProperty where
  toJSON ProvisioningParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ProvisioningParameterProperty where
  type PropertyType "Key" ProvisioningParameterProperty = Value Prelude.Text
  set newValue ProvisioningParameterProperty {..}
    = ProvisioningParameterProperty {key = newValue, ..}
instance Property "Value" ProvisioningParameterProperty where
  type PropertyType "Value" ProvisioningParameterProperty = Value Prelude.Text
  set newValue ProvisioningParameterProperty {..}
    = ProvisioningParameterProperty {value = newValue, ..}