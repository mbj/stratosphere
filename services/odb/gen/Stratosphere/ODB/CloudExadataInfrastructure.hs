module Stratosphere.ODB.CloudExadataInfrastructure (
        module Exports, CloudExadataInfrastructure(..),
        mkCloudExadataInfrastructure
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ODB.CloudExadataInfrastructure.CustomerContactProperty as Exports
import {-# SOURCE #-} Stratosphere.ODB.CloudExadataInfrastructure.MaintenanceWindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CloudExadataInfrastructure
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html>
    CloudExadataInfrastructure {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-availabilityzone>
                                availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-availabilityzoneid>
                                availabilityZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-computecount>
                                computeCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-customercontactstosendtooci>
                                customerContactsToSendToOCI :: (Prelude.Maybe [CustomerContactProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-databaseservertype>
                                databaseServerType :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-displayname>
                                displayName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow>
                                maintenanceWindow :: (Prelude.Maybe MaintenanceWindowProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-shape>
                                shape :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-storagecount>
                                storageCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-storageservertype>
                                storageServerType :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudexadatainfrastructure.html#cfn-odb-cloudexadatainfrastructure-tags>
                                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudExadataInfrastructure :: CloudExadataInfrastructure
mkCloudExadataInfrastructure
  = CloudExadataInfrastructure
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       availabilityZoneId = Prelude.Nothing,
       computeCount = Prelude.Nothing,
       customerContactsToSendToOCI = Prelude.Nothing,
       databaseServerType = Prelude.Nothing,
       displayName = Prelude.Nothing, maintenanceWindow = Prelude.Nothing,
       shape = Prelude.Nothing, storageCount = Prelude.Nothing,
       storageServerType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CloudExadataInfrastructure where
  toResourceProperties CloudExadataInfrastructure {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudExadataInfrastructure",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                            (JSON..=) "ComputeCount" Prelude.<$> computeCount,
                            (JSON..=) "CustomerContactsToSendToOCI"
                              Prelude.<$> customerContactsToSendToOCI,
                            (JSON..=) "DatabaseServerType" Prelude.<$> databaseServerType,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                            (JSON..=) "Shape" Prelude.<$> shape,
                            (JSON..=) "StorageCount" Prelude.<$> storageCount,
                            (JSON..=) "StorageServerType" Prelude.<$> storageServerType,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON CloudExadataInfrastructure where
  toJSON CloudExadataInfrastructure {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
               (JSON..=) "ComputeCount" Prelude.<$> computeCount,
               (JSON..=) "CustomerContactsToSendToOCI"
                 Prelude.<$> customerContactsToSendToOCI,
               (JSON..=) "DatabaseServerType" Prelude.<$> databaseServerType,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
               (JSON..=) "Shape" Prelude.<$> shape,
               (JSON..=) "StorageCount" Prelude.<$> storageCount,
               (JSON..=) "StorageServerType" Prelude.<$> storageServerType,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AvailabilityZone" CloudExadataInfrastructure where
  type PropertyType "AvailabilityZone" CloudExadataInfrastructure = Value Prelude.Text
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneId" CloudExadataInfrastructure where
  type PropertyType "AvailabilityZoneId" CloudExadataInfrastructure = Value Prelude.Text
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {availabilityZoneId = Prelude.pure newValue, ..}
instance Property "ComputeCount" CloudExadataInfrastructure where
  type PropertyType "ComputeCount" CloudExadataInfrastructure = Value Prelude.Integer
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {computeCount = Prelude.pure newValue, ..}
instance Property "CustomerContactsToSendToOCI" CloudExadataInfrastructure where
  type PropertyType "CustomerContactsToSendToOCI" CloudExadataInfrastructure = [CustomerContactProperty]
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {customerContactsToSendToOCI = Prelude.pure newValue, ..}
instance Property "DatabaseServerType" CloudExadataInfrastructure where
  type PropertyType "DatabaseServerType" CloudExadataInfrastructure = Value Prelude.Text
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {databaseServerType = Prelude.pure newValue, ..}
instance Property "DisplayName" CloudExadataInfrastructure where
  type PropertyType "DisplayName" CloudExadataInfrastructure = Value Prelude.Text
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {displayName = Prelude.pure newValue, ..}
instance Property "MaintenanceWindow" CloudExadataInfrastructure where
  type PropertyType "MaintenanceWindow" CloudExadataInfrastructure = MaintenanceWindowProperty
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {maintenanceWindow = Prelude.pure newValue, ..}
instance Property "Shape" CloudExadataInfrastructure where
  type PropertyType "Shape" CloudExadataInfrastructure = Value Prelude.Text
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure {shape = Prelude.pure newValue, ..}
instance Property "StorageCount" CloudExadataInfrastructure where
  type PropertyType "StorageCount" CloudExadataInfrastructure = Value Prelude.Integer
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {storageCount = Prelude.pure newValue, ..}
instance Property "StorageServerType" CloudExadataInfrastructure where
  type PropertyType "StorageServerType" CloudExadataInfrastructure = Value Prelude.Text
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure
        {storageServerType = Prelude.pure newValue, ..}
instance Property "Tags" CloudExadataInfrastructure where
  type PropertyType "Tags" CloudExadataInfrastructure = [Tag]
  set newValue CloudExadataInfrastructure {..}
    = CloudExadataInfrastructure {tags = Prelude.pure newValue, ..}