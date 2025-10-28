module Stratosphere.VerifiedPermissions.IdentitySource.CognitoGroupConfigurationProperty (
        CognitoGroupConfigurationProperty(..),
        mkCognitoGroupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoGroupConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-cognitogroupconfiguration.html>
    CognitoGroupConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-cognitogroupconfiguration.html#cfn-verifiedpermissions-identitysource-cognitogroupconfiguration-groupentitytype>
                                       groupEntityType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoGroupConfigurationProperty ::
  Value Prelude.Text -> CognitoGroupConfigurationProperty
mkCognitoGroupConfigurationProperty groupEntityType
  = CognitoGroupConfigurationProperty
      {haddock_workaround_ = (), groupEntityType = groupEntityType}
instance ToResourceProperties CognitoGroupConfigurationProperty where
  toResourceProperties CognitoGroupConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.CognitoGroupConfiguration",
         supportsTags = Prelude.False,
         properties = ["GroupEntityType" JSON..= groupEntityType]}
instance JSON.ToJSON CognitoGroupConfigurationProperty where
  toJSON CognitoGroupConfigurationProperty {..}
    = JSON.object ["GroupEntityType" JSON..= groupEntityType]
instance Property "GroupEntityType" CognitoGroupConfigurationProperty where
  type PropertyType "GroupEntityType" CognitoGroupConfigurationProperty = Value Prelude.Text
  set newValue CognitoGroupConfigurationProperty {..}
    = CognitoGroupConfigurationProperty
        {groupEntityType = newValue, ..}