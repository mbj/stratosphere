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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-identityproviderconfiguration.html>
    IdentityProviderConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-identityproviderconfiguration.html#cfn-healthlake-fhirdatastore-identityproviderconfiguration-authorizationstrategy>
                                           authorizationStrategy :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-identityproviderconfiguration.html#cfn-healthlake-fhirdatastore-identityproviderconfiguration-finegrainedauthorizationenabled>
                                           fineGrainedAuthorizationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-identityproviderconfiguration.html#cfn-healthlake-fhirdatastore-identityproviderconfiguration-idplambdaarn>
                                           idpLambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-identityproviderconfiguration.html#cfn-healthlake-fhirdatastore-identityproviderconfiguration-metadata>
                                           metadata :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProviderConfigurationProperty ::
  Value Prelude.Text -> IdentityProviderConfigurationProperty
mkIdentityProviderConfigurationProperty authorizationStrategy
  = IdentityProviderConfigurationProperty
      {haddock_workaround_ = (),
       authorizationStrategy = authorizationStrategy,
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