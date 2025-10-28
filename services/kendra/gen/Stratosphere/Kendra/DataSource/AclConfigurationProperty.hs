module Stratosphere.Kendra.DataSource.AclConfigurationProperty (
        AclConfigurationProperty(..), mkAclConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AclConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-aclconfiguration.html>
    AclConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-aclconfiguration.html#cfn-kendra-datasource-aclconfiguration-allowedgroupscolumnname>
                              allowedGroupsColumnName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAclConfigurationProperty ::
  Value Prelude.Text -> AclConfigurationProperty
mkAclConfigurationProperty allowedGroupsColumnName
  = AclConfigurationProperty
      {haddock_workaround_ = (),
       allowedGroupsColumnName = allowedGroupsColumnName}
instance ToResourceProperties AclConfigurationProperty where
  toResourceProperties AclConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.AclConfiguration",
         supportsTags = Prelude.False,
         properties = ["AllowedGroupsColumnName"
                         JSON..= allowedGroupsColumnName]}
instance JSON.ToJSON AclConfigurationProperty where
  toJSON AclConfigurationProperty {..}
    = JSON.object
        ["AllowedGroupsColumnName" JSON..= allowedGroupsColumnName]
instance Property "AllowedGroupsColumnName" AclConfigurationProperty where
  type PropertyType "AllowedGroupsColumnName" AclConfigurationProperty = Value Prelude.Text
  set newValue AclConfigurationProperty {..}
    = AclConfigurationProperty {allowedGroupsColumnName = newValue, ..}