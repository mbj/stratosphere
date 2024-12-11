module Stratosphere.Cognito.IdentityPool (
        module Exports, IdentityPool(..), mkIdentityPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.IdentityPool.CognitoIdentityProviderProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.IdentityPool.CognitoStreamsProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.IdentityPool.PushSyncProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdentityPool
  = IdentityPool {allowClassicFlow :: (Prelude.Maybe (Value Prelude.Bool)),
                  allowUnauthenticatedIdentities :: (Value Prelude.Bool),
                  cognitoEvents :: (Prelude.Maybe JSON.Object),
                  cognitoIdentityProviders :: (Prelude.Maybe [CognitoIdentityProviderProperty]),
                  cognitoStreams :: (Prelude.Maybe CognitoStreamsProperty),
                  developerProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                  identityPoolName :: (Prelude.Maybe (Value Prelude.Text)),
                  identityPoolTags :: (Prelude.Maybe [Tag]),
                  openIdConnectProviderARNs :: (Prelude.Maybe (ValueList Prelude.Text)),
                  pushSync :: (Prelude.Maybe PushSyncProperty),
                  samlProviderARNs :: (Prelude.Maybe (ValueList Prelude.Text)),
                  supportedLoginProviders :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityPool :: Value Prelude.Bool -> IdentityPool
mkIdentityPool allowUnauthenticatedIdentities
  = IdentityPool
      {allowUnauthenticatedIdentities = allowUnauthenticatedIdentities,
       allowClassicFlow = Prelude.Nothing,
       cognitoEvents = Prelude.Nothing,
       cognitoIdentityProviders = Prelude.Nothing,
       cognitoStreams = Prelude.Nothing,
       developerProviderName = Prelude.Nothing,
       identityPoolName = Prelude.Nothing,
       identityPoolTags = Prelude.Nothing,
       openIdConnectProviderARNs = Prelude.Nothing,
       pushSync = Prelude.Nothing, samlProviderARNs = Prelude.Nothing,
       supportedLoginProviders = Prelude.Nothing}
instance ToResourceProperties IdentityPool where
  toResourceProperties IdentityPool {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowUnauthenticatedIdentities"
                              JSON..= allowUnauthenticatedIdentities]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowClassicFlow" Prelude.<$> allowClassicFlow,
                               (JSON..=) "CognitoEvents" Prelude.<$> cognitoEvents,
                               (JSON..=) "CognitoIdentityProviders"
                                 Prelude.<$> cognitoIdentityProviders,
                               (JSON..=) "CognitoStreams" Prelude.<$> cognitoStreams,
                               (JSON..=) "DeveloperProviderName"
                                 Prelude.<$> developerProviderName,
                               (JSON..=) "IdentityPoolName" Prelude.<$> identityPoolName,
                               (JSON..=) "IdentityPoolTags" Prelude.<$> identityPoolTags,
                               (JSON..=) "OpenIdConnectProviderARNs"
                                 Prelude.<$> openIdConnectProviderARNs,
                               (JSON..=) "PushSync" Prelude.<$> pushSync,
                               (JSON..=) "SamlProviderARNs" Prelude.<$> samlProviderARNs,
                               (JSON..=) "SupportedLoginProviders"
                                 Prelude.<$> supportedLoginProviders]))}
instance JSON.ToJSON IdentityPool where
  toJSON IdentityPool {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowUnauthenticatedIdentities"
                 JSON..= allowUnauthenticatedIdentities]
              (Prelude.catMaybes
                 [(JSON..=) "AllowClassicFlow" Prelude.<$> allowClassicFlow,
                  (JSON..=) "CognitoEvents" Prelude.<$> cognitoEvents,
                  (JSON..=) "CognitoIdentityProviders"
                    Prelude.<$> cognitoIdentityProviders,
                  (JSON..=) "CognitoStreams" Prelude.<$> cognitoStreams,
                  (JSON..=) "DeveloperProviderName"
                    Prelude.<$> developerProviderName,
                  (JSON..=) "IdentityPoolName" Prelude.<$> identityPoolName,
                  (JSON..=) "IdentityPoolTags" Prelude.<$> identityPoolTags,
                  (JSON..=) "OpenIdConnectProviderARNs"
                    Prelude.<$> openIdConnectProviderARNs,
                  (JSON..=) "PushSync" Prelude.<$> pushSync,
                  (JSON..=) "SamlProviderARNs" Prelude.<$> samlProviderARNs,
                  (JSON..=) "SupportedLoginProviders"
                    Prelude.<$> supportedLoginProviders])))
instance Property "AllowClassicFlow" IdentityPool where
  type PropertyType "AllowClassicFlow" IdentityPool = Value Prelude.Bool
  set newValue IdentityPool {..}
    = IdentityPool {allowClassicFlow = Prelude.pure newValue, ..}
instance Property "AllowUnauthenticatedIdentities" IdentityPool where
  type PropertyType "AllowUnauthenticatedIdentities" IdentityPool = Value Prelude.Bool
  set newValue IdentityPool {..}
    = IdentityPool {allowUnauthenticatedIdentities = newValue, ..}
instance Property "CognitoEvents" IdentityPool where
  type PropertyType "CognitoEvents" IdentityPool = JSON.Object
  set newValue IdentityPool {..}
    = IdentityPool {cognitoEvents = Prelude.pure newValue, ..}
instance Property "CognitoIdentityProviders" IdentityPool where
  type PropertyType "CognitoIdentityProviders" IdentityPool = [CognitoIdentityProviderProperty]
  set newValue IdentityPool {..}
    = IdentityPool
        {cognitoIdentityProviders = Prelude.pure newValue, ..}
instance Property "CognitoStreams" IdentityPool where
  type PropertyType "CognitoStreams" IdentityPool = CognitoStreamsProperty
  set newValue IdentityPool {..}
    = IdentityPool {cognitoStreams = Prelude.pure newValue, ..}
instance Property "DeveloperProviderName" IdentityPool where
  type PropertyType "DeveloperProviderName" IdentityPool = Value Prelude.Text
  set newValue IdentityPool {..}
    = IdentityPool {developerProviderName = Prelude.pure newValue, ..}
instance Property "IdentityPoolName" IdentityPool where
  type PropertyType "IdentityPoolName" IdentityPool = Value Prelude.Text
  set newValue IdentityPool {..}
    = IdentityPool {identityPoolName = Prelude.pure newValue, ..}
instance Property "IdentityPoolTags" IdentityPool where
  type PropertyType "IdentityPoolTags" IdentityPool = [Tag]
  set newValue IdentityPool {..}
    = IdentityPool {identityPoolTags = Prelude.pure newValue, ..}
instance Property "OpenIdConnectProviderARNs" IdentityPool where
  type PropertyType "OpenIdConnectProviderARNs" IdentityPool = ValueList Prelude.Text
  set newValue IdentityPool {..}
    = IdentityPool
        {openIdConnectProviderARNs = Prelude.pure newValue, ..}
instance Property "PushSync" IdentityPool where
  type PropertyType "PushSync" IdentityPool = PushSyncProperty
  set newValue IdentityPool {..}
    = IdentityPool {pushSync = Prelude.pure newValue, ..}
instance Property "SamlProviderARNs" IdentityPool where
  type PropertyType "SamlProviderARNs" IdentityPool = ValueList Prelude.Text
  set newValue IdentityPool {..}
    = IdentityPool {samlProviderARNs = Prelude.pure newValue, ..}
instance Property "SupportedLoginProviders" IdentityPool where
  type PropertyType "SupportedLoginProviders" IdentityPool = JSON.Object
  set newValue IdentityPool {..}
    = IdentityPool
        {supportedLoginProviders = Prelude.pure newValue, ..}