module Stratosphere.ODB.OdbNetwork (
        OdbNetwork(..), mkOdbNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OdbNetwork
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html>
    OdbNetwork {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-availabilityzone>
                availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-availabilityzoneid>
                availabilityZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-backupsubnetcidr>
                backupSubnetCidr :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-clientsubnetcidr>
                clientSubnetCidr :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-customdomainname>
                customDomainName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-defaultdnsprefix>
                defaultDnsPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-deleteassociatedresources>
                deleteAssociatedResources :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-displayname>
                displayName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-s3access>
                s3Access :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-s3policydocument>
                s3PolicyDocument :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbnetwork.html#cfn-odb-odbnetwork-zeroetlaccess>
                zeroEtlAccess :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOdbNetwork :: OdbNetwork
mkOdbNetwork
  = OdbNetwork
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       availabilityZoneId = Prelude.Nothing,
       backupSubnetCidr = Prelude.Nothing,
       clientSubnetCidr = Prelude.Nothing,
       customDomainName = Prelude.Nothing,
       defaultDnsPrefix = Prelude.Nothing,
       deleteAssociatedResources = Prelude.Nothing,
       displayName = Prelude.Nothing, s3Access = Prelude.Nothing,
       s3PolicyDocument = Prelude.Nothing, tags = Prelude.Nothing,
       zeroEtlAccess = Prelude.Nothing}
instance ToResourceProperties OdbNetwork where
  toResourceProperties OdbNetwork {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbNetwork", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                            (JSON..=) "BackupSubnetCidr" Prelude.<$> backupSubnetCidr,
                            (JSON..=) "ClientSubnetCidr" Prelude.<$> clientSubnetCidr,
                            (JSON..=) "CustomDomainName" Prelude.<$> customDomainName,
                            (JSON..=) "DefaultDnsPrefix" Prelude.<$> defaultDnsPrefix,
                            (JSON..=) "DeleteAssociatedResources"
                              Prelude.<$> deleteAssociatedResources,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "S3Access" Prelude.<$> s3Access,
                            (JSON..=) "S3PolicyDocument" Prelude.<$> s3PolicyDocument,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "ZeroEtlAccess" Prelude.<$> zeroEtlAccess])}
instance JSON.ToJSON OdbNetwork where
  toJSON OdbNetwork {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
               (JSON..=) "BackupSubnetCidr" Prelude.<$> backupSubnetCidr,
               (JSON..=) "ClientSubnetCidr" Prelude.<$> clientSubnetCidr,
               (JSON..=) "CustomDomainName" Prelude.<$> customDomainName,
               (JSON..=) "DefaultDnsPrefix" Prelude.<$> defaultDnsPrefix,
               (JSON..=) "DeleteAssociatedResources"
                 Prelude.<$> deleteAssociatedResources,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "S3Access" Prelude.<$> s3Access,
               (JSON..=) "S3PolicyDocument" Prelude.<$> s3PolicyDocument,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "ZeroEtlAccess" Prelude.<$> zeroEtlAccess]))
instance Property "AvailabilityZone" OdbNetwork where
  type PropertyType "AvailabilityZone" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {availabilityZone = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneId" OdbNetwork where
  type PropertyType "AvailabilityZoneId" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {availabilityZoneId = Prelude.pure newValue, ..}
instance Property "BackupSubnetCidr" OdbNetwork where
  type PropertyType "BackupSubnetCidr" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {backupSubnetCidr = Prelude.pure newValue, ..}
instance Property "ClientSubnetCidr" OdbNetwork where
  type PropertyType "ClientSubnetCidr" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {clientSubnetCidr = Prelude.pure newValue, ..}
instance Property "CustomDomainName" OdbNetwork where
  type PropertyType "CustomDomainName" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {customDomainName = Prelude.pure newValue, ..}
instance Property "DefaultDnsPrefix" OdbNetwork where
  type PropertyType "DefaultDnsPrefix" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {defaultDnsPrefix = Prelude.pure newValue, ..}
instance Property "DeleteAssociatedResources" OdbNetwork where
  type PropertyType "DeleteAssociatedResources" OdbNetwork = Value Prelude.Bool
  set newValue OdbNetwork {..}
    = OdbNetwork
        {deleteAssociatedResources = Prelude.pure newValue, ..}
instance Property "DisplayName" OdbNetwork where
  type PropertyType "DisplayName" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {displayName = Prelude.pure newValue, ..}
instance Property "S3Access" OdbNetwork where
  type PropertyType "S3Access" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {s3Access = Prelude.pure newValue, ..}
instance Property "S3PolicyDocument" OdbNetwork where
  type PropertyType "S3PolicyDocument" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {s3PolicyDocument = Prelude.pure newValue, ..}
instance Property "Tags" OdbNetwork where
  type PropertyType "Tags" OdbNetwork = [Tag]
  set newValue OdbNetwork {..}
    = OdbNetwork {tags = Prelude.pure newValue, ..}
instance Property "ZeroEtlAccess" OdbNetwork where
  type PropertyType "ZeroEtlAccess" OdbNetwork = Value Prelude.Text
  set newValue OdbNetwork {..}
    = OdbNetwork {zeroEtlAccess = Prelude.pure newValue, ..}