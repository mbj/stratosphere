module Stratosphere.FSx.FileSystem.OntapConfigurationProperty (
        module Exports, OntapConfigurationProperty(..),
        mkOntapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.DiskIopsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OntapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html>
    OntapConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-automaticbackupretentiondays>
                                automaticBackupRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-dailyautomaticbackupstarttime>
                                dailyAutomaticBackupStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-deploymenttype>
                                deploymentType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-diskiopsconfiguration>
                                diskIopsConfiguration :: (Prelude.Maybe DiskIopsConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-endpointipaddressrange>
                                endpointIpAddressRange :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-endpointipv6addressrange>
                                endpointIpv6AddressRange :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-fsxadminpassword>
                                fsxAdminPassword :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-hapairs>
                                hAPairs :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-preferredsubnetid>
                                preferredSubnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-routetableids>
                                routeTableIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-throughputcapacity>
                                throughputCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-throughputcapacityperhapair>
                                throughputCapacityPerHAPair :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-ontapconfiguration.html#cfn-fsx-filesystem-ontapconfiguration-weeklymaintenancestarttime>
                                weeklyMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOntapConfigurationProperty ::
  Value Prelude.Text -> OntapConfigurationProperty
mkOntapConfigurationProperty deploymentType
  = OntapConfigurationProperty
      {haddock_workaround_ = (), deploymentType = deploymentType,
       automaticBackupRetentionDays = Prelude.Nothing,
       dailyAutomaticBackupStartTime = Prelude.Nothing,
       diskIopsConfiguration = Prelude.Nothing,
       endpointIpAddressRange = Prelude.Nothing,
       endpointIpv6AddressRange = Prelude.Nothing,
       fsxAdminPassword = Prelude.Nothing, hAPairs = Prelude.Nothing,
       preferredSubnetId = Prelude.Nothing,
       routeTableIds = Prelude.Nothing,
       throughputCapacity = Prelude.Nothing,
       throughputCapacityPerHAPair = Prelude.Nothing,
       weeklyMaintenanceStartTime = Prelude.Nothing}
instance ToResourceProperties OntapConfigurationProperty where
  toResourceProperties OntapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.OntapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeploymentType" JSON..= deploymentType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticBackupRetentionDays"
                                 Prelude.<$> automaticBackupRetentionDays,
                               (JSON..=) "DailyAutomaticBackupStartTime"
                                 Prelude.<$> dailyAutomaticBackupStartTime,
                               (JSON..=) "DiskIopsConfiguration"
                                 Prelude.<$> diskIopsConfiguration,
                               (JSON..=) "EndpointIpAddressRange"
                                 Prelude.<$> endpointIpAddressRange,
                               (JSON..=) "EndpointIpv6AddressRange"
                                 Prelude.<$> endpointIpv6AddressRange,
                               (JSON..=) "FsxAdminPassword" Prelude.<$> fsxAdminPassword,
                               (JSON..=) "HAPairs" Prelude.<$> hAPairs,
                               (JSON..=) "PreferredSubnetId" Prelude.<$> preferredSubnetId,
                               (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
                               (JSON..=) "ThroughputCapacity" Prelude.<$> throughputCapacity,
                               (JSON..=) "ThroughputCapacityPerHAPair"
                                 Prelude.<$> throughputCapacityPerHAPair,
                               (JSON..=) "WeeklyMaintenanceStartTime"
                                 Prelude.<$> weeklyMaintenanceStartTime]))}
instance JSON.ToJSON OntapConfigurationProperty where
  toJSON OntapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeploymentType" JSON..= deploymentType]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticBackupRetentionDays"
                    Prelude.<$> automaticBackupRetentionDays,
                  (JSON..=) "DailyAutomaticBackupStartTime"
                    Prelude.<$> dailyAutomaticBackupStartTime,
                  (JSON..=) "DiskIopsConfiguration"
                    Prelude.<$> diskIopsConfiguration,
                  (JSON..=) "EndpointIpAddressRange"
                    Prelude.<$> endpointIpAddressRange,
                  (JSON..=) "EndpointIpv6AddressRange"
                    Prelude.<$> endpointIpv6AddressRange,
                  (JSON..=) "FsxAdminPassword" Prelude.<$> fsxAdminPassword,
                  (JSON..=) "HAPairs" Prelude.<$> hAPairs,
                  (JSON..=) "PreferredSubnetId" Prelude.<$> preferredSubnetId,
                  (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
                  (JSON..=) "ThroughputCapacity" Prelude.<$> throughputCapacity,
                  (JSON..=) "ThroughputCapacityPerHAPair"
                    Prelude.<$> throughputCapacityPerHAPair,
                  (JSON..=) "WeeklyMaintenanceStartTime"
                    Prelude.<$> weeklyMaintenanceStartTime])))
instance Property "AutomaticBackupRetentionDays" OntapConfigurationProperty where
  type PropertyType "AutomaticBackupRetentionDays" OntapConfigurationProperty = Value Prelude.Integer
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {automaticBackupRetentionDays = Prelude.pure newValue, ..}
instance Property "DailyAutomaticBackupStartTime" OntapConfigurationProperty where
  type PropertyType "DailyAutomaticBackupStartTime" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {dailyAutomaticBackupStartTime = Prelude.pure newValue, ..}
instance Property "DeploymentType" OntapConfigurationProperty where
  type PropertyType "DeploymentType" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty {deploymentType = newValue, ..}
instance Property "DiskIopsConfiguration" OntapConfigurationProperty where
  type PropertyType "DiskIopsConfiguration" OntapConfigurationProperty = DiskIopsConfigurationProperty
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {diskIopsConfiguration = Prelude.pure newValue, ..}
instance Property "EndpointIpAddressRange" OntapConfigurationProperty where
  type PropertyType "EndpointIpAddressRange" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {endpointIpAddressRange = Prelude.pure newValue, ..}
instance Property "EndpointIpv6AddressRange" OntapConfigurationProperty where
  type PropertyType "EndpointIpv6AddressRange" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {endpointIpv6AddressRange = Prelude.pure newValue, ..}
instance Property "FsxAdminPassword" OntapConfigurationProperty where
  type PropertyType "FsxAdminPassword" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {fsxAdminPassword = Prelude.pure newValue, ..}
instance Property "HAPairs" OntapConfigurationProperty where
  type PropertyType "HAPairs" OntapConfigurationProperty = Value Prelude.Integer
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty {hAPairs = Prelude.pure newValue, ..}
instance Property "PreferredSubnetId" OntapConfigurationProperty where
  type PropertyType "PreferredSubnetId" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {preferredSubnetId = Prelude.pure newValue, ..}
instance Property "RouteTableIds" OntapConfigurationProperty where
  type PropertyType "RouteTableIds" OntapConfigurationProperty = ValueList Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {routeTableIds = Prelude.pure newValue, ..}
instance Property "ThroughputCapacity" OntapConfigurationProperty where
  type PropertyType "ThroughputCapacity" OntapConfigurationProperty = Value Prelude.Integer
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {throughputCapacity = Prelude.pure newValue, ..}
instance Property "ThroughputCapacityPerHAPair" OntapConfigurationProperty where
  type PropertyType "ThroughputCapacityPerHAPair" OntapConfigurationProperty = Value Prelude.Integer
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {throughputCapacityPerHAPair = Prelude.pure newValue, ..}
instance Property "WeeklyMaintenanceStartTime" OntapConfigurationProperty where
  type PropertyType "WeeklyMaintenanceStartTime" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {weeklyMaintenanceStartTime = Prelude.pure newValue, ..}