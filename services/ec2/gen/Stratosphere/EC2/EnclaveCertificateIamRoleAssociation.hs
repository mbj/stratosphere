module Stratosphere.EC2.EnclaveCertificateIamRoleAssociation (
        EnclaveCertificateIamRoleAssociation(..),
        mkEnclaveCertificateIamRoleAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnclaveCertificateIamRoleAssociation
  = EnclaveCertificateIamRoleAssociation {certificateArn :: (Value Prelude.Text),
                                          roleArn :: (Value Prelude.Text)}
mkEnclaveCertificateIamRoleAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnclaveCertificateIamRoleAssociation
mkEnclaveCertificateIamRoleAssociation certificateArn roleArn
  = EnclaveCertificateIamRoleAssociation
      {certificateArn = certificateArn, roleArn = roleArn}
instance ToResourceProperties EnclaveCertificateIamRoleAssociation where
  toResourceProperties EnclaveCertificateIamRoleAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EnclaveCertificateIamRoleAssociation",
         properties = ["CertificateArn" JSON..= certificateArn,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON EnclaveCertificateIamRoleAssociation where
  toJSON EnclaveCertificateIamRoleAssociation {..}
    = JSON.object
        ["CertificateArn" JSON..= certificateArn,
         "RoleArn" JSON..= roleArn]
instance Property "CertificateArn" EnclaveCertificateIamRoleAssociation where
  type PropertyType "CertificateArn" EnclaveCertificateIamRoleAssociation = Value Prelude.Text
  set newValue EnclaveCertificateIamRoleAssociation {..}
    = EnclaveCertificateIamRoleAssociation
        {certificateArn = newValue, ..}
instance Property "RoleArn" EnclaveCertificateIamRoleAssociation where
  type PropertyType "RoleArn" EnclaveCertificateIamRoleAssociation = Value Prelude.Text
  set newValue EnclaveCertificateIamRoleAssociation {..}
    = EnclaveCertificateIamRoleAssociation {roleArn = newValue, ..}