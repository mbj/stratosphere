module Stratosphere.ODB.OdbNetwork.ManagedServicesProperty (
        module Exports, ManagedServicesProperty(..),
        mkManagedServicesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ODB.OdbNetwork.ManagedS3BackupAccessProperty as Exports
import {-# SOURCE #-} Stratosphere.ODB.OdbNetwork.S3AccessProperty as Exports
import {-# SOURCE #-} Stratosphere.ODB.OdbNetwork.ServiceNetworkEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.ODB.OdbNetwork.ZeroEtlAccessProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedServicesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html>
    ManagedServicesProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-manageds3backupaccess>
                             managedS3BackupAccess :: (Prelude.Maybe ManagedS3BackupAccessProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-managedservicesipv4cidrs>
                             managedServicesIpv4Cidrs :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-resourcegatewayarn>
                             resourceGatewayArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-s3access>
                             s3Access :: (Prelude.Maybe S3AccessProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-servicenetworkarn>
                             serviceNetworkArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-servicenetworkendpoint>
                             serviceNetworkEndpoint :: (Prelude.Maybe ServiceNetworkEndpointProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-zeroetlaccess>
                             zeroEtlAccess :: (Prelude.Maybe ZeroEtlAccessProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedServicesProperty :: ManagedServicesProperty
mkManagedServicesProperty
  = ManagedServicesProperty
      {haddock_workaround_ = (), managedS3BackupAccess = Prelude.Nothing,
       managedServicesIpv4Cidrs = Prelude.Nothing,
       resourceGatewayArn = Prelude.Nothing, s3Access = Prelude.Nothing,
       serviceNetworkArn = Prelude.Nothing,
       serviceNetworkEndpoint = Prelude.Nothing,
       zeroEtlAccess = Prelude.Nothing}
instance ToResourceProperties ManagedServicesProperty where
  toResourceProperties ManagedServicesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbNetwork.ManagedServices",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManagedS3BackupAccess"
                              Prelude.<$> managedS3BackupAccess,
                            (JSON..=) "ManagedServicesIpv4Cidrs"
                              Prelude.<$> managedServicesIpv4Cidrs,
                            (JSON..=) "ResourceGatewayArn" Prelude.<$> resourceGatewayArn,
                            (JSON..=) "S3Access" Prelude.<$> s3Access,
                            (JSON..=) "ServiceNetworkArn" Prelude.<$> serviceNetworkArn,
                            (JSON..=) "ServiceNetworkEndpoint"
                              Prelude.<$> serviceNetworkEndpoint,
                            (JSON..=) "ZeroEtlAccess" Prelude.<$> zeroEtlAccess])}
instance JSON.ToJSON ManagedServicesProperty where
  toJSON ManagedServicesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManagedS3BackupAccess"
                 Prelude.<$> managedS3BackupAccess,
               (JSON..=) "ManagedServicesIpv4Cidrs"
                 Prelude.<$> managedServicesIpv4Cidrs,
               (JSON..=) "ResourceGatewayArn" Prelude.<$> resourceGatewayArn,
               (JSON..=) "S3Access" Prelude.<$> s3Access,
               (JSON..=) "ServiceNetworkArn" Prelude.<$> serviceNetworkArn,
               (JSON..=) "ServiceNetworkEndpoint"
                 Prelude.<$> serviceNetworkEndpoint,
               (JSON..=) "ZeroEtlAccess" Prelude.<$> zeroEtlAccess]))
instance Property "ManagedS3BackupAccess" ManagedServicesProperty where
  type PropertyType "ManagedS3BackupAccess" ManagedServicesProperty = ManagedS3BackupAccessProperty
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty
        {managedS3BackupAccess = Prelude.pure newValue, ..}
instance Property "ManagedServicesIpv4Cidrs" ManagedServicesProperty where
  type PropertyType "ManagedServicesIpv4Cidrs" ManagedServicesProperty = ValueList Prelude.Text
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty
        {managedServicesIpv4Cidrs = Prelude.pure newValue, ..}
instance Property "ResourceGatewayArn" ManagedServicesProperty where
  type PropertyType "ResourceGatewayArn" ManagedServicesProperty = Value Prelude.Text
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty
        {resourceGatewayArn = Prelude.pure newValue, ..}
instance Property "S3Access" ManagedServicesProperty where
  type PropertyType "S3Access" ManagedServicesProperty = S3AccessProperty
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty {s3Access = Prelude.pure newValue, ..}
instance Property "ServiceNetworkArn" ManagedServicesProperty where
  type PropertyType "ServiceNetworkArn" ManagedServicesProperty = Value Prelude.Text
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty
        {serviceNetworkArn = Prelude.pure newValue, ..}
instance Property "ServiceNetworkEndpoint" ManagedServicesProperty where
  type PropertyType "ServiceNetworkEndpoint" ManagedServicesProperty = ServiceNetworkEndpointProperty
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty
        {serviceNetworkEndpoint = Prelude.pure newValue, ..}
instance Property "ZeroEtlAccess" ManagedServicesProperty where
  type PropertyType "ZeroEtlAccess" ManagedServicesProperty = ZeroEtlAccessProperty
  set newValue ManagedServicesProperty {..}
    = ManagedServicesProperty
        {zeroEtlAccess = Prelude.pure newValue, ..}