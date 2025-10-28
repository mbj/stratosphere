module Stratosphere.Deadline.Fleet.FleetConfigurationProperty (
        module Exports, FleetConfigurationProperty(..),
        mkFleetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.CustomerManagedFleetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.ServiceManagedEc2FleetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FleetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetconfiguration.html>
    FleetConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetconfiguration.html#cfn-deadline-fleet-fleetconfiguration-customermanaged>
                                customerManaged :: (Prelude.Maybe CustomerManagedFleetConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetconfiguration.html#cfn-deadline-fleet-fleetconfiguration-servicemanagedec2>
                                serviceManagedEc2 :: (Prelude.Maybe ServiceManagedEc2FleetConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetConfigurationProperty :: FleetConfigurationProperty
mkFleetConfigurationProperty
  = FleetConfigurationProperty
      {haddock_workaround_ = (), customerManaged = Prelude.Nothing,
       serviceManagedEc2 = Prelude.Nothing}
instance ToResourceProperties FleetConfigurationProperty where
  toResourceProperties FleetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.FleetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerManaged" Prelude.<$> customerManaged,
                            (JSON..=) "ServiceManagedEc2" Prelude.<$> serviceManagedEc2])}
instance JSON.ToJSON FleetConfigurationProperty where
  toJSON FleetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerManaged" Prelude.<$> customerManaged,
               (JSON..=) "ServiceManagedEc2" Prelude.<$> serviceManagedEc2]))
instance Property "CustomerManaged" FleetConfigurationProperty where
  type PropertyType "CustomerManaged" FleetConfigurationProperty = CustomerManagedFleetConfigurationProperty
  set newValue FleetConfigurationProperty {..}
    = FleetConfigurationProperty
        {customerManaged = Prelude.pure newValue, ..}
instance Property "ServiceManagedEc2" FleetConfigurationProperty where
  type PropertyType "ServiceManagedEc2" FleetConfigurationProperty = ServiceManagedEc2FleetConfigurationProperty
  set newValue FleetConfigurationProperty {..}
    = FleetConfigurationProperty
        {serviceManagedEc2 = Prelude.pure newValue, ..}