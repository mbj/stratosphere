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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-enclavecertificateiamroleassociation.html>
    EnclaveCertificateIamRoleAssociation {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-enclavecertificateiamroleassociation.html#cfn-ec2-enclavecertificateiamroleassociation-certificatearn>
                                          certificateArn :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-enclavecertificateiamroleassociation.html#cfn-ec2-enclavecertificateiamroleassociation-rolearn>
                                          roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnclaveCertificateIamRoleAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnclaveCertificateIamRoleAssociation
mkEnclaveCertificateIamRoleAssociation certificateArn roleArn
  = EnclaveCertificateIamRoleAssociation
      {haddock_workaround_ = (), certificateArn = certificateArn,
       roleArn = roleArn}
instance ToResourceProperties EnclaveCertificateIamRoleAssociation where
  toResourceProperties EnclaveCertificateIamRoleAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EnclaveCertificateIamRoleAssociation",
         supportsTags = Prelude.False,
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