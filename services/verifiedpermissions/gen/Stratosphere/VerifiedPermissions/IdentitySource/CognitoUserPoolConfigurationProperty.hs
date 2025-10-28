module Stratosphere.VerifiedPermissions.IdentitySource.CognitoUserPoolConfigurationProperty (
        module Exports, CognitoUserPoolConfigurationProperty(..),
        mkCognitoUserPoolConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.CognitoGroupConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoUserPoolConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-cognitouserpoolconfiguration.html>
    CognitoUserPoolConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-cognitouserpoolconfiguration.html#cfn-verifiedpermissions-identitysource-cognitouserpoolconfiguration-clientids>
                                          clientIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-cognitouserpoolconfiguration.html#cfn-verifiedpermissions-identitysource-cognitouserpoolconfiguration-groupconfiguration>
                                          groupConfiguration :: (Prelude.Maybe CognitoGroupConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-cognitouserpoolconfiguration.html#cfn-verifiedpermissions-identitysource-cognitouserpoolconfiguration-userpoolarn>
                                          userPoolArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoUserPoolConfigurationProperty ::
  Value Prelude.Text -> CognitoUserPoolConfigurationProperty
mkCognitoUserPoolConfigurationProperty userPoolArn
  = CognitoUserPoolConfigurationProperty
      {haddock_workaround_ = (), userPoolArn = userPoolArn,
       clientIds = Prelude.Nothing, groupConfiguration = Prelude.Nothing}
instance ToResourceProperties CognitoUserPoolConfigurationProperty where
  toResourceProperties CognitoUserPoolConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.CognitoUserPoolConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolArn" JSON..= userPoolArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientIds" Prelude.<$> clientIds,
                               (JSON..=) "GroupConfiguration" Prelude.<$> groupConfiguration]))}
instance JSON.ToJSON CognitoUserPoolConfigurationProperty where
  toJSON CognitoUserPoolConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolArn" JSON..= userPoolArn]
              (Prelude.catMaybes
                 [(JSON..=) "ClientIds" Prelude.<$> clientIds,
                  (JSON..=) "GroupConfiguration" Prelude.<$> groupConfiguration])))
instance Property "ClientIds" CognitoUserPoolConfigurationProperty where
  type PropertyType "ClientIds" CognitoUserPoolConfigurationProperty = ValueList Prelude.Text
  set newValue CognitoUserPoolConfigurationProperty {..}
    = CognitoUserPoolConfigurationProperty
        {clientIds = Prelude.pure newValue, ..}
instance Property "GroupConfiguration" CognitoUserPoolConfigurationProperty where
  type PropertyType "GroupConfiguration" CognitoUserPoolConfigurationProperty = CognitoGroupConfigurationProperty
  set newValue CognitoUserPoolConfigurationProperty {..}
    = CognitoUserPoolConfigurationProperty
        {groupConfiguration = Prelude.pure newValue, ..}
instance Property "UserPoolArn" CognitoUserPoolConfigurationProperty where
  type PropertyType "UserPoolArn" CognitoUserPoolConfigurationProperty = Value Prelude.Text
  set newValue CognitoUserPoolConfigurationProperty {..}
    = CognitoUserPoolConfigurationProperty {userPoolArn = newValue, ..}