module Stratosphere.HealthLake.FHIRDatastore.IdentityProviderConfigurationProperty (
        IdentityProviderConfigurationProperty(..),
        mkIdentityProviderConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityProviderConfigurationProperty
  = IdentityProviderConfigurationProperty {authorizationStrategy :: (Value Prelude.Text),
                                           fineGrainedAuthorizationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                           idpLambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                                           metadata :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProviderConfigurationProperty ::
  Value Prelude.Text -> IdentityProviderConfigurationProperty
mkIdentityProviderConfigurationProperty authorizationStrategy
  = IdentityProviderConfigurationProperty
      {authorizationStrategy = authorizationStrategy,
       fineGrainedAuthorizationEnabled = Prelude.Nothing,
       idpLambdaArn = Prelude.Nothing, metadata = Prelude.Nothing}
instance ToResourceProperties IdentityProviderConfigurationProperty where
  toResourceProperties IdentityProviderConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore.IdentityProviderConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizationStrategy" JSON..= authorizationStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "FineGrainedAuthorizationEnabled"
                                 Prelude.<$> fineGrainedAuthorizationEnabled,
                               (JSON..=) "IdpLambdaArn" Prelude.<$> idpLambdaArn,
                               (JSON..=) "Metadata" Prelude.<$> metadata]))}
instance JSON.ToJSON IdentityProviderConfigurationProperty where
  toJSON IdentityProviderConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizationStrategy" JSON..= authorizationStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "FineGrainedAuthorizationEnabled"
                    Prelude.<$> fineGrainedAuthorizationEnabled,
                  (JSON..=) "IdpLambdaArn" Prelude.<$> idpLambdaArn,
                  (JSON..=) "Metadata" Prelude.<$> metadata])))
instance Property "AuthorizationStrategy" IdentityProviderConfigurationProperty where
  type PropertyType "AuthorizationStrategy" IdentityProviderConfigurationProperty = Value Prelude.Text
  set newValue IdentityProviderConfigurationProperty {..}
    = IdentityProviderConfigurationProperty
        {authorizationStrategy = newValue, ..}
instance Property "FineGrainedAuthorizationEnabled" IdentityProviderConfigurationProperty where
  type PropertyType "FineGrainedAuthorizationEnabled" IdentityProviderConfigurationProperty = Value Prelude.Bool
  set newValue IdentityProviderConfigurationProperty {..}
    = IdentityProviderConfigurationProperty
        {fineGrainedAuthorizationEnabled = Prelude.pure newValue, ..}
instance Property "IdpLambdaArn" IdentityProviderConfigurationProperty where
  type PropertyType "IdpLambdaArn" IdentityProviderConfigurationProperty = Value Prelude.Text
  set newValue IdentityProviderConfigurationProperty {..}
    = IdentityProviderConfigurationProperty
        {idpLambdaArn = Prelude.pure newValue, ..}
instance Property "Metadata" IdentityProviderConfigurationProperty where
  type PropertyType "Metadata" IdentityProviderConfigurationProperty = Value Prelude.Text
  set newValue IdentityProviderConfigurationProperty {..}
    = IdentityProviderConfigurationProperty
        {metadata = Prelude.pure newValue, ..}