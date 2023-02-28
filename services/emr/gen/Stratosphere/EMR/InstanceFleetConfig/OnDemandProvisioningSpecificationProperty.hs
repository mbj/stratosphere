module Stratosphere.EMR.InstanceFleetConfig.OnDemandProvisioningSpecificationProperty (
        OnDemandProvisioningSpecificationProperty(..),
        mkOnDemandProvisioningSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnDemandProvisioningSpecificationProperty
  = OnDemandProvisioningSpecificationProperty {allocationStrategy :: (Value Prelude.Text)}
mkOnDemandProvisioningSpecificationProperty ::
  Value Prelude.Text -> OnDemandProvisioningSpecificationProperty
mkOnDemandProvisioningSpecificationProperty allocationStrategy
  = OnDemandProvisioningSpecificationProperty
      {allocationStrategy = allocationStrategy}
instance ToResourceProperties OnDemandProvisioningSpecificationProperty where
  toResourceProperties OnDemandProvisioningSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.OnDemandProvisioningSpecification",
         supportsTags = Prelude.False,
         properties = ["AllocationStrategy" JSON..= allocationStrategy]}
instance JSON.ToJSON OnDemandProvisioningSpecificationProperty where
  toJSON OnDemandProvisioningSpecificationProperty {..}
    = JSON.object ["AllocationStrategy" JSON..= allocationStrategy]
instance Property "AllocationStrategy" OnDemandProvisioningSpecificationProperty where
  type PropertyType "AllocationStrategy" OnDemandProvisioningSpecificationProperty = Value Prelude.Text
  set newValue OnDemandProvisioningSpecificationProperty {}
    = OnDemandProvisioningSpecificationProperty
        {allocationStrategy = newValue, ..}