module Stratosphere.Kendra.DataSource.AclConfigurationProperty (
        AclConfigurationProperty(..), mkAclConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AclConfigurationProperty
  = AclConfigurationProperty {allowedGroupsColumnName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAclConfigurationProperty ::
  Value Prelude.Text -> AclConfigurationProperty
mkAclConfigurationProperty allowedGroupsColumnName
  = AclConfigurationProperty
      {allowedGroupsColumnName = allowedGroupsColumnName}
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
  set newValue AclConfigurationProperty {}
    = AclConfigurationProperty {allowedGroupsColumnName = newValue, ..}