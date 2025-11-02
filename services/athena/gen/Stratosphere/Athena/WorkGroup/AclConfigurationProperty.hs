module Stratosphere.Athena.WorkGroup.AclConfigurationProperty (
        AclConfigurationProperty(..), mkAclConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AclConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-aclconfiguration.html>
    AclConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-aclconfiguration.html#cfn-athena-workgroup-aclconfiguration-s3acloption>
                              s3AclOption :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAclConfigurationProperty ::
  Value Prelude.Text -> AclConfigurationProperty
mkAclConfigurationProperty s3AclOption
  = AclConfigurationProperty
      {haddock_workaround_ = (), s3AclOption = s3AclOption}
instance ToResourceProperties AclConfigurationProperty where
  toResourceProperties AclConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.AclConfiguration",
         supportsTags = Prelude.False,
         properties = ["S3AclOption" JSON..= s3AclOption]}
instance JSON.ToJSON AclConfigurationProperty where
  toJSON AclConfigurationProperty {..}
    = JSON.object ["S3AclOption" JSON..= s3AclOption]
instance Property "S3AclOption" AclConfigurationProperty where
  type PropertyType "S3AclOption" AclConfigurationProperty = Value Prelude.Text
  set newValue AclConfigurationProperty {..}
    = AclConfigurationProperty {s3AclOption = newValue, ..}