module Stratosphere.Cognito.UserPool.UserAttributeUpdateSettingsProperty (
        UserAttributeUpdateSettingsProperty(..),
        mkUserAttributeUpdateSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserAttributeUpdateSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-userattributeupdatesettings.html>
    UserAttributeUpdateSettingsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-userattributeupdatesettings.html#cfn-cognito-userpool-userattributeupdatesettings-attributesrequireverificationbeforeupdate>
                                         attributesRequireVerificationBeforeUpdate :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserAttributeUpdateSettingsProperty ::
  ValueList Prelude.Text -> UserAttributeUpdateSettingsProperty
mkUserAttributeUpdateSettingsProperty
  attributesRequireVerificationBeforeUpdate
  = UserAttributeUpdateSettingsProperty
      {haddock_workaround_ = (),
       attributesRequireVerificationBeforeUpdate = attributesRequireVerificationBeforeUpdate}
instance ToResourceProperties UserAttributeUpdateSettingsProperty where
  toResourceProperties UserAttributeUpdateSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.UserAttributeUpdateSettings",
         supportsTags = Prelude.False,
         properties = ["AttributesRequireVerificationBeforeUpdate"
                         JSON..= attributesRequireVerificationBeforeUpdate]}
instance JSON.ToJSON UserAttributeUpdateSettingsProperty where
  toJSON UserAttributeUpdateSettingsProperty {..}
    = JSON.object
        ["AttributesRequireVerificationBeforeUpdate"
           JSON..= attributesRequireVerificationBeforeUpdate]
instance Property "AttributesRequireVerificationBeforeUpdate" UserAttributeUpdateSettingsProperty where
  type PropertyType "AttributesRequireVerificationBeforeUpdate" UserAttributeUpdateSettingsProperty = ValueList Prelude.Text
  set newValue UserAttributeUpdateSettingsProperty {..}
    = UserAttributeUpdateSettingsProperty
        {attributesRequireVerificationBeforeUpdate = newValue, ..}