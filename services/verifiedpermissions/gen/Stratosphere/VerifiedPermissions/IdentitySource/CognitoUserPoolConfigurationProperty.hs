module Stratosphere.VerifiedPermissions.IdentitySource.CognitoUserPoolConfigurationProperty (
        CognitoUserPoolConfigurationProperty(..),
        mkCognitoUserPoolConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoUserPoolConfigurationProperty
  = CognitoUserPoolConfigurationProperty {clientIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          userPoolArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoUserPoolConfigurationProperty ::
  Value Prelude.Text -> CognitoUserPoolConfigurationProperty
mkCognitoUserPoolConfigurationProperty userPoolArn
  = CognitoUserPoolConfigurationProperty
      {userPoolArn = userPoolArn, clientIds = Prelude.Nothing}
instance ToResourceProperties CognitoUserPoolConfigurationProperty where
  toResourceProperties CognitoUserPoolConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.CognitoUserPoolConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolArn" JSON..= userPoolArn]
                           (Prelude.catMaybes [(JSON..=) "ClientIds" Prelude.<$> clientIds]))}
instance JSON.ToJSON CognitoUserPoolConfigurationProperty where
  toJSON CognitoUserPoolConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolArn" JSON..= userPoolArn]
              (Prelude.catMaybes [(JSON..=) "ClientIds" Prelude.<$> clientIds])))
instance Property "ClientIds" CognitoUserPoolConfigurationProperty where
  type PropertyType "ClientIds" CognitoUserPoolConfigurationProperty = ValueList Prelude.Text
  set newValue CognitoUserPoolConfigurationProperty {..}
    = CognitoUserPoolConfigurationProperty
        {clientIds = Prelude.pure newValue, ..}
instance Property "UserPoolArn" CognitoUserPoolConfigurationProperty where
  type PropertyType "UserPoolArn" CognitoUserPoolConfigurationProperty = Value Prelude.Text
  set newValue CognitoUserPoolConfigurationProperty {..}
    = CognitoUserPoolConfigurationProperty {userPoolArn = newValue, ..}