module Stratosphere.Deadline.Fleet.ServiceManagedEc2InstanceMarketOptionsProperty (
        ServiceManagedEc2InstanceMarketOptionsProperty(..),
        mkServiceManagedEc2InstanceMarketOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceManagedEc2InstanceMarketOptionsProperty
  = ServiceManagedEc2InstanceMarketOptionsProperty {type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceManagedEc2InstanceMarketOptionsProperty ::
  Value Prelude.Text
  -> ServiceManagedEc2InstanceMarketOptionsProperty
mkServiceManagedEc2InstanceMarketOptionsProperty type'
  = ServiceManagedEc2InstanceMarketOptionsProperty {type' = type'}
instance ToResourceProperties ServiceManagedEc2InstanceMarketOptionsProperty where
  toResourceProperties
    ServiceManagedEc2InstanceMarketOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.ServiceManagedEc2InstanceMarketOptions",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON ServiceManagedEc2InstanceMarketOptionsProperty where
  toJSON ServiceManagedEc2InstanceMarketOptionsProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" ServiceManagedEc2InstanceMarketOptionsProperty where
  type PropertyType "Type" ServiceManagedEc2InstanceMarketOptionsProperty = Value Prelude.Text
  set newValue ServiceManagedEc2InstanceMarketOptionsProperty {}
    = ServiceManagedEc2InstanceMarketOptionsProperty
        {type' = newValue, ..}