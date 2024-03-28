module Stratosphere.VerifiedPermissions.IdentitySource.IdentitySourceDetailsProperty (
        IdentitySourceDetailsProperty(..), mkIdentitySourceDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentitySourceDetailsProperty
  = IdentitySourceDetailsProperty {clientIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   discoveryUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                   openIdIssuer :: (Prelude.Maybe (Value Prelude.Text)),
                                   userPoolArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentitySourceDetailsProperty :: IdentitySourceDetailsProperty
mkIdentitySourceDetailsProperty
  = IdentitySourceDetailsProperty
      {clientIds = Prelude.Nothing, discoveryUrl = Prelude.Nothing,
       openIdIssuer = Prelude.Nothing, userPoolArn = Prelude.Nothing}
instance ToResourceProperties IdentitySourceDetailsProperty where
  toResourceProperties IdentitySourceDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.IdentitySourceDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientIds" Prelude.<$> clientIds,
                            (JSON..=) "DiscoveryUrl" Prelude.<$> discoveryUrl,
                            (JSON..=) "OpenIdIssuer" Prelude.<$> openIdIssuer,
                            (JSON..=) "UserPoolArn" Prelude.<$> userPoolArn])}
instance JSON.ToJSON IdentitySourceDetailsProperty where
  toJSON IdentitySourceDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientIds" Prelude.<$> clientIds,
               (JSON..=) "DiscoveryUrl" Prelude.<$> discoveryUrl,
               (JSON..=) "OpenIdIssuer" Prelude.<$> openIdIssuer,
               (JSON..=) "UserPoolArn" Prelude.<$> userPoolArn]))
instance Property "ClientIds" IdentitySourceDetailsProperty where
  type PropertyType "ClientIds" IdentitySourceDetailsProperty = ValueList Prelude.Text
  set newValue IdentitySourceDetailsProperty {..}
    = IdentitySourceDetailsProperty
        {clientIds = Prelude.pure newValue, ..}
instance Property "DiscoveryUrl" IdentitySourceDetailsProperty where
  type PropertyType "DiscoveryUrl" IdentitySourceDetailsProperty = Value Prelude.Text
  set newValue IdentitySourceDetailsProperty {..}
    = IdentitySourceDetailsProperty
        {discoveryUrl = Prelude.pure newValue, ..}
instance Property "OpenIdIssuer" IdentitySourceDetailsProperty where
  type PropertyType "OpenIdIssuer" IdentitySourceDetailsProperty = Value Prelude.Text
  set newValue IdentitySourceDetailsProperty {..}
    = IdentitySourceDetailsProperty
        {openIdIssuer = Prelude.pure newValue, ..}
instance Property "UserPoolArn" IdentitySourceDetailsProperty where
  type PropertyType "UserPoolArn" IdentitySourceDetailsProperty = Value Prelude.Text
  set newValue IdentitySourceDetailsProperty {..}
    = IdentitySourceDetailsProperty
        {userPoolArn = Prelude.pure newValue, ..}