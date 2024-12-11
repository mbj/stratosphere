module Stratosphere.QuickSight.DataSource.OAuthParametersProperty (
        module Exports, OAuthParametersProperty(..),
        mkOAuthParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.VpcConnectionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuthParametersProperty
  = OAuthParametersProperty {identityProviderResourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                             identityProviderVpcConnectionProperties :: (Prelude.Maybe VpcConnectionPropertiesProperty),
                             oAuthScope :: (Prelude.Maybe (Value Prelude.Text)),
                             tokenProviderUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuthParametersProperty ::
  Value Prelude.Text -> OAuthParametersProperty
mkOAuthParametersProperty tokenProviderUrl
  = OAuthParametersProperty
      {tokenProviderUrl = tokenProviderUrl,
       identityProviderResourceUri = Prelude.Nothing,
       identityProviderVpcConnectionProperties = Prelude.Nothing,
       oAuthScope = Prelude.Nothing}
instance ToResourceProperties OAuthParametersProperty where
  toResourceProperties OAuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.OAuthParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TokenProviderUrl" JSON..= tokenProviderUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "IdentityProviderResourceUri"
                                 Prelude.<$> identityProviderResourceUri,
                               (JSON..=) "IdentityProviderVpcConnectionProperties"
                                 Prelude.<$> identityProviderVpcConnectionProperties,
                               (JSON..=) "OAuthScope" Prelude.<$> oAuthScope]))}
instance JSON.ToJSON OAuthParametersProperty where
  toJSON OAuthParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TokenProviderUrl" JSON..= tokenProviderUrl]
              (Prelude.catMaybes
                 [(JSON..=) "IdentityProviderResourceUri"
                    Prelude.<$> identityProviderResourceUri,
                  (JSON..=) "IdentityProviderVpcConnectionProperties"
                    Prelude.<$> identityProviderVpcConnectionProperties,
                  (JSON..=) "OAuthScope" Prelude.<$> oAuthScope])))
instance Property "IdentityProviderResourceUri" OAuthParametersProperty where
  type PropertyType "IdentityProviderResourceUri" OAuthParametersProperty = Value Prelude.Text
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty
        {identityProviderResourceUri = Prelude.pure newValue, ..}
instance Property "IdentityProviderVpcConnectionProperties" OAuthParametersProperty where
  type PropertyType "IdentityProviderVpcConnectionProperties" OAuthParametersProperty = VpcConnectionPropertiesProperty
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty
        {identityProviderVpcConnectionProperties = Prelude.pure newValue,
         ..}
instance Property "OAuthScope" OAuthParametersProperty where
  type PropertyType "OAuthScope" OAuthParametersProperty = Value Prelude.Text
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty {oAuthScope = Prelude.pure newValue, ..}
instance Property "TokenProviderUrl" OAuthParametersProperty where
  type PropertyType "TokenProviderUrl" OAuthParametersProperty = Value Prelude.Text
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty {tokenProviderUrl = newValue, ..}