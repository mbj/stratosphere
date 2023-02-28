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
  = JsonTokenTypeConfigurationProperty {groupAttributeField :: (Value Prelude.Text),
                                        userNameAttributeField :: (Value Prelude.Text)}
mkJsonTokenTypeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> JsonTokenTypeConfigurationProperty
mkJsonTokenTypeConfigurationProperty
  groupAttributeField
  userNameAttributeField
  = JsonTokenTypeConfigurationProperty
      {groupAttributeField = groupAttributeField,
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