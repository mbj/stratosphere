module Stratosphere.Deadline.Fleet.ServiceManagedEc2FleetConfigurationProperty (
        module Exports, ServiceManagedEc2FleetConfigurationProperty(..),
        mkServiceManagedEc2FleetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.ServiceManagedEc2InstanceCapabilitiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.ServiceManagedEc2InstanceMarketOptionsProperty as Exports
import Stratosphere.ResourceProperties
data ServiceManagedEc2FleetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html>
    ServiceManagedEc2FleetConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html#cfn-deadline-fleet-servicemanagedec2fleetconfiguration-instancecapabilities>
                                                 instanceCapabilities :: ServiceManagedEc2InstanceCapabilitiesProperty,
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html#cfn-deadline-fleet-servicemanagedec2fleetconfiguration-instancemarketoptions>
                                                 instanceMarketOptions :: ServiceManagedEc2InstanceMarketOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceManagedEc2FleetConfigurationProperty ::
  ServiceManagedEc2InstanceCapabilitiesProperty
  -> ServiceManagedEc2InstanceMarketOptionsProperty
     -> ServiceManagedEc2FleetConfigurationProperty
mkServiceManagedEc2FleetConfigurationProperty
  instanceCapabilities
  instanceMarketOptions
  = ServiceManagedEc2FleetConfigurationProperty
      {haddock_workaround_ = (),
       instanceCapabilities = instanceCapabilities,
       instanceMarketOptions = instanceMarketOptions}
instance ToResourceProperties ServiceManagedEc2FleetConfigurationProperty where
  toResourceProperties
    ServiceManagedEc2FleetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.ServiceManagedEc2FleetConfiguration",
         supportsTags = Prelude.False,
         properties = ["InstanceCapabilities" JSON..= instanceCapabilities,
                       "InstanceMarketOptions" JSON..= instanceMarketOptions]}
instance JSON.ToJSON ServiceManagedEc2FleetConfigurationProperty where
  toJSON ServiceManagedEc2FleetConfigurationProperty {..}
    = JSON.object
        ["InstanceCapabilities" JSON..= instanceCapabilities,
         "InstanceMarketOptions" JSON..= instanceMarketOptions]
instance Property "InstanceCapabilities" ServiceManagedEc2FleetConfigurationProperty where
  type PropertyType "InstanceCapabilities" ServiceManagedEc2FleetConfigurationProperty = ServiceManagedEc2InstanceCapabilitiesProperty
  set newValue ServiceManagedEc2FleetConfigurationProperty {..}
    = ServiceManagedEc2FleetConfigurationProperty
        {instanceCapabilities = newValue, ..}
instance Property "InstanceMarketOptions" ServiceManagedEc2FleetConfigurationProperty where
  type PropertyType "InstanceMarketOptions" ServiceManagedEc2FleetConfigurationProperty = ServiceManagedEc2InstanceMarketOptionsProperty
  set newValue ServiceManagedEc2FleetConfigurationProperty {..}
    = ServiceManagedEc2FleetConfigurationProperty
        {instanceMarketOptions = newValue, ..}