module Stratosphere.DMS.InstanceProfile (
        InstanceProfile(..), mkInstanceProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InstanceProfile
  = InstanceProfile {availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     instanceProfileIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                     instanceProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                     kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                     networkType :: (Prelude.Maybe (Value Prelude.Text)),
                     publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                     subnetGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag]),
                     vpcSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceProfile :: InstanceProfile
mkInstanceProfile
  = InstanceProfile
      {availabilityZone = Prelude.Nothing, description = Prelude.Nothing,
       instanceProfileIdentifier = Prelude.Nothing,
       instanceProfileName = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       networkType = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       subnetGroupIdentifier = Prelude.Nothing, tags = Prelude.Nothing,
       vpcSecurityGroups = Prelude.Nothing}
instance ToResourceProperties InstanceProfile where
  toResourceProperties InstanceProfile {..}
    = ResourceProperties
        {awsType = "AWS::DMS::InstanceProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "InstanceProfileIdentifier"
                              Prelude.<$> instanceProfileIdentifier,
                            (JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "NetworkType" Prelude.<$> networkType,
                            (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                            (JSON..=) "SubnetGroupIdentifier"
                              Prelude.<$> subnetGroupIdentifier,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VpcSecurityGroups" Prelude.<$> vpcSecurityGroups])}
instance JSON.ToJSON InstanceProfile where
  toJSON InstanceProfile {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "InstanceProfileIdentifier"
                 Prelude.<$> instanceProfileIdentifier,
               (JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "NetworkType" Prelude.<$> networkType,
               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
               (JSON..=) "SubnetGroupIdentifier"
                 Prelude.<$> subnetGroupIdentifier,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VpcSecurityGroups" Prelude.<$> vpcSecurityGroups]))
instance Property "AvailabilityZone" InstanceProfile where
  type PropertyType "AvailabilityZone" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {availabilityZone = Prelude.pure newValue, ..}
instance Property "Description" InstanceProfile where
  type PropertyType "Description" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {description = Prelude.pure newValue, ..}
instance Property "InstanceProfileIdentifier" InstanceProfile where
  type PropertyType "InstanceProfileIdentifier" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile
        {instanceProfileIdentifier = Prelude.pure newValue, ..}
instance Property "InstanceProfileName" InstanceProfile where
  type PropertyType "InstanceProfileName" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {instanceProfileName = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" InstanceProfile where
  type PropertyType "KmsKeyArn" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "NetworkType" InstanceProfile where
  type PropertyType "NetworkType" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {networkType = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" InstanceProfile where
  type PropertyType "PubliclyAccessible" InstanceProfile = Value Prelude.Bool
  set newValue InstanceProfile {..}
    = InstanceProfile {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "SubnetGroupIdentifier" InstanceProfile where
  type PropertyType "SubnetGroupIdentifier" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile
        {subnetGroupIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" InstanceProfile where
  type PropertyType "Tags" InstanceProfile = [Tag]
  set newValue InstanceProfile {..}
    = InstanceProfile {tags = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroups" InstanceProfile where
  type PropertyType "VpcSecurityGroups" InstanceProfile = ValueList Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {vpcSecurityGroups = Prelude.pure newValue, ..}