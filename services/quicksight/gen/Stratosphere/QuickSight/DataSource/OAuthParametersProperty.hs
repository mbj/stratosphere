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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-oauthparameters.html>
    OAuthParametersProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-oauthparameters.html#cfn-quicksight-datasource-oauthparameters-identityproviderresourceuri>
                             identityProviderResourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-oauthparameters.html#cfn-quicksight-datasource-oauthparameters-identityprovidervpcconnectionproperties>
                             identityProviderVpcConnectionProperties :: (Prelude.Maybe VpcConnectionPropertiesProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-oauthparameters.html#cfn-quicksight-datasource-oauthparameters-oauthscope>
                             oAuthScope :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-oauthparameters.html#cfn-quicksight-datasource-oauthparameters-tokenproviderurl>
                             tokenProviderUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuthParametersProperty ::
  Value Prelude.Text -> OAuthParametersProperty
mkOAuthParametersProperty tokenProviderUrl
  = OAuthParametersProperty
      {haddock_workaround_ = (), tokenProviderUrl = tokenProviderUrl,
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