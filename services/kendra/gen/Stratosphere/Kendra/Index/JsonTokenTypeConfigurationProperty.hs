module Stratosphere.Kendra.Index.JsonTokenTypeConfigurationProperty (
        JsonTokenTypeConfigurationProperty(..),
        mkJsonTokenTypeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonTokenTypeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jsontokentypeconfiguration.html>
    JsonTokenTypeConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jsontokentypeconfiguration.html#cfn-kendra-index-jsontokentypeconfiguration-groupattributefield>
                                        groupAttributeField :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-jsontokentypeconfiguration.html#cfn-kendra-index-jsontokentypeconfiguration-usernameattributefield>
                                        userNameAttributeField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonTokenTypeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> JsonTokenTypeConfigurationProperty
mkJsonTokenTypeConfigurationProperty
  groupAttributeField
  userNameAttributeField
  = JsonTokenTypeConfigurationProperty
      {haddock_workaround_ = (),
       groupAttributeField = groupAttributeField,
       userNameAttributeField = userNameAttributeField}
instance ToResourceProperties JsonTokenTypeConfigurationProperty where
  toResourceProperties JsonTokenTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.JsonTokenTypeConfiguration",
         supportsTags = Prelude.False,
         properties = ["GroupAttributeField" JSON..= groupAttributeField,
                       "UserNameAttributeField" JSON..= userNameAttributeField]}
instance JSON.ToJSON JsonTokenTypeConfigurationProperty where
  toJSON JsonTokenTypeConfigurationProperty {..}
    = JSON.object
        ["GroupAttributeField" JSON..= groupAttributeField,
         "UserNameAttributeField" JSON..= userNameAttributeField]
instance Property "GroupAttributeField" JsonTokenTypeConfigurationProperty where
  type PropertyType "GroupAttributeField" JsonTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JsonTokenTypeConfigurationProperty {..}
    = JsonTokenTypeConfigurationProperty
        {groupAttributeField = newValue, ..}
instance Property "UserNameAttributeField" JsonTokenTypeConfigurationProperty where
  type PropertyType "UserNameAttributeField" JsonTokenTypeConfigurationProperty = Value Prelude.Text
  set newValue JsonTokenTypeConfigurationProperty {..}
    = JsonTokenTypeConfigurationProperty
        {userNameAttributeField = newValue, ..}