module Stratosphere.Transfer.WebApp.IdentityProviderDetailsProperty (
        IdentityProviderDetailsProperty(..),
        mkIdentityProviderDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityProviderDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-identityproviderdetails.html>
    IdentityProviderDetailsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-identityproviderdetails.html#cfn-transfer-webapp-identityproviderdetails-applicationarn>
                                     applicationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-identityproviderdetails.html#cfn-transfer-webapp-identityproviderdetails-instancearn>
                                     instanceArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-identityproviderdetails.html#cfn-transfer-webapp-identityproviderdetails-role>
                                     role :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProviderDetailsProperty ::
  IdentityProviderDetailsProperty
mkIdentityProviderDetailsProperty
  = IdentityProviderDetailsProperty
      {haddock_workaround_ = (), applicationArn = Prelude.Nothing,
       instanceArn = Prelude.Nothing, role = Prelude.Nothing}
instance ToResourceProperties IdentityProviderDetailsProperty where
  toResourceProperties IdentityProviderDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::WebApp.IdentityProviderDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
                            (JSON..=) "InstanceArn" Prelude.<$> instanceArn,
                            (JSON..=) "Role" Prelude.<$> role])}
instance JSON.ToJSON IdentityProviderDetailsProperty where
  toJSON IdentityProviderDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
               (JSON..=) "InstanceArn" Prelude.<$> instanceArn,
               (JSON..=) "Role" Prelude.<$> role]))
instance Property "ApplicationArn" IdentityProviderDetailsProperty where
  type PropertyType "ApplicationArn" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {applicationArn = Prelude.pure newValue, ..}
instance Property "InstanceArn" IdentityProviderDetailsProperty where
  type PropertyType "InstanceArn" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {instanceArn = Prelude.pure newValue, ..}
instance Property "Role" IdentityProviderDetailsProperty where
  type PropertyType "Role" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {role = Prelude.pure newValue, ..}