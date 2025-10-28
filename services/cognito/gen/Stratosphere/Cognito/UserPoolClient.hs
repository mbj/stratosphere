module Stratosphere.Cognito.UserPoolClient (
        module Exports, UserPoolClient(..), mkUserPoolClient
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolClient.AnalyticsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolClient.TokenValidityUnitsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolClient
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html>
    UserPoolClient {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-accesstokenvalidity>
                    accessTokenValidity :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthflows>
                    allowedOAuthFlows :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthflowsuserpoolclient>
                    allowedOAuthFlowsUserPoolClient :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthscopes>
                    allowedOAuthScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-analyticsconfiguration>
                    analyticsConfiguration :: (Prelude.Maybe AnalyticsConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-authsessionvalidity>
                    authSessionValidity :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-callbackurls>
                    callbackURLs :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-clientname>
                    clientName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-defaultredirecturi>
                    defaultRedirectURI :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-enablepropagateadditionalusercontextdata>
                    enablePropagateAdditionalUserContextData :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-enabletokenrevocation>
                    enableTokenRevocation :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-explicitauthflows>
                    explicitAuthFlows :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-generatesecret>
                    generateSecret :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-idtokenvalidity>
                    idTokenValidity :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-logouturls>
                    logoutURLs :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-preventuserexistenceerrors>
                    preventUserExistenceErrors :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-readattributes>
                    readAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-refreshtokenvalidity>
                    refreshTokenValidity :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-supportedidentityproviders>
                    supportedIdentityProviders :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-tokenvalidityunits>
                    tokenValidityUnits :: (Prelude.Maybe TokenValidityUnitsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-userpoolid>
                    userPoolId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-writeattributes>
                    writeAttributes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolClient :: Value Prelude.Text -> UserPoolClient
mkUserPoolClient userPoolId
  = UserPoolClient
      {haddock_workaround_ = (), userPoolId = userPoolId,
       accessTokenValidity = Prelude.Nothing,
       allowedOAuthFlows = Prelude.Nothing,
       allowedOAuthFlowsUserPoolClient = Prelude.Nothing,
       allowedOAuthScopes = Prelude.Nothing,
       analyticsConfiguration = Prelude.Nothing,
       authSessionValidity = Prelude.Nothing,
       callbackURLs = Prelude.Nothing, clientName = Prelude.Nothing,
       defaultRedirectURI = Prelude.Nothing,
       enablePropagateAdditionalUserContextData = Prelude.Nothing,
       enableTokenRevocation = Prelude.Nothing,
       explicitAuthFlows = Prelude.Nothing,
       generateSecret = Prelude.Nothing,
       idTokenValidity = Prelude.Nothing, logoutURLs = Prelude.Nothing,
       preventUserExistenceErrors = Prelude.Nothing,
       readAttributes = Prelude.Nothing,
       refreshTokenValidity = Prelude.Nothing,
       supportedIdentityProviders = Prelude.Nothing,
       tokenValidityUnits = Prelude.Nothing,
       writeAttributes = Prelude.Nothing}
instance ToResourceProperties UserPoolClient where
  toResourceProperties UserPoolClient {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolClient",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessTokenValidity" Prelude.<$> accessTokenValidity,
                               (JSON..=) "AllowedOAuthFlows" Prelude.<$> allowedOAuthFlows,
                               (JSON..=) "AllowedOAuthFlowsUserPoolClient"
                                 Prelude.<$> allowedOAuthFlowsUserPoolClient,
                               (JSON..=) "AllowedOAuthScopes" Prelude.<$> allowedOAuthScopes,
                               (JSON..=) "AnalyticsConfiguration"
                                 Prelude.<$> analyticsConfiguration,
                               (JSON..=) "AuthSessionValidity" Prelude.<$> authSessionValidity,
                               (JSON..=) "CallbackURLs" Prelude.<$> callbackURLs,
                               (JSON..=) "ClientName" Prelude.<$> clientName,
                               (JSON..=) "DefaultRedirectURI" Prelude.<$> defaultRedirectURI,
                               (JSON..=) "EnablePropagateAdditionalUserContextData"
                                 Prelude.<$> enablePropagateAdditionalUserContextData,
                               (JSON..=) "EnableTokenRevocation"
                                 Prelude.<$> enableTokenRevocation,
                               (JSON..=) "ExplicitAuthFlows" Prelude.<$> explicitAuthFlows,
                               (JSON..=) "GenerateSecret" Prelude.<$> generateSecret,
                               (JSON..=) "IdTokenValidity" Prelude.<$> idTokenValidity,
                               (JSON..=) "LogoutURLs" Prelude.<$> logoutURLs,
                               (JSON..=) "PreventUserExistenceErrors"
                                 Prelude.<$> preventUserExistenceErrors,
                               (JSON..=) "ReadAttributes" Prelude.<$> readAttributes,
                               (JSON..=) "RefreshTokenValidity" Prelude.<$> refreshTokenValidity,
                               (JSON..=) "SupportedIdentityProviders"
                                 Prelude.<$> supportedIdentityProviders,
                               (JSON..=) "TokenValidityUnits" Prelude.<$> tokenValidityUnits,
                               (JSON..=) "WriteAttributes" Prelude.<$> writeAttributes]))}
instance JSON.ToJSON UserPoolClient where
  toJSON UserPoolClient {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "AccessTokenValidity" Prelude.<$> accessTokenValidity,
                  (JSON..=) "AllowedOAuthFlows" Prelude.<$> allowedOAuthFlows,
                  (JSON..=) "AllowedOAuthFlowsUserPoolClient"
                    Prelude.<$> allowedOAuthFlowsUserPoolClient,
                  (JSON..=) "AllowedOAuthScopes" Prelude.<$> allowedOAuthScopes,
                  (JSON..=) "AnalyticsConfiguration"
                    Prelude.<$> analyticsConfiguration,
                  (JSON..=) "AuthSessionValidity" Prelude.<$> authSessionValidity,
                  (JSON..=) "CallbackURLs" Prelude.<$> callbackURLs,
                  (JSON..=) "ClientName" Prelude.<$> clientName,
                  (JSON..=) "DefaultRedirectURI" Prelude.<$> defaultRedirectURI,
                  (JSON..=) "EnablePropagateAdditionalUserContextData"
                    Prelude.<$> enablePropagateAdditionalUserContextData,
                  (JSON..=) "EnableTokenRevocation"
                    Prelude.<$> enableTokenRevocation,
                  (JSON..=) "ExplicitAuthFlows" Prelude.<$> explicitAuthFlows,
                  (JSON..=) "GenerateSecret" Prelude.<$> generateSecret,
                  (JSON..=) "IdTokenValidity" Prelude.<$> idTokenValidity,
                  (JSON..=) "LogoutURLs" Prelude.<$> logoutURLs,
                  (JSON..=) "PreventUserExistenceErrors"
                    Prelude.<$> preventUserExistenceErrors,
                  (JSON..=) "ReadAttributes" Prelude.<$> readAttributes,
                  (JSON..=) "RefreshTokenValidity" Prelude.<$> refreshTokenValidity,
                  (JSON..=) "SupportedIdentityProviders"
                    Prelude.<$> supportedIdentityProviders,
                  (JSON..=) "TokenValidityUnits" Prelude.<$> tokenValidityUnits,
                  (JSON..=) "WriteAttributes" Prelude.<$> writeAttributes])))
instance Property "AccessTokenValidity" UserPoolClient where
  type PropertyType "AccessTokenValidity" UserPoolClient = Value Prelude.Integer
  set newValue UserPoolClient {..}
    = UserPoolClient {accessTokenValidity = Prelude.pure newValue, ..}
instance Property "AllowedOAuthFlows" UserPoolClient where
  type PropertyType "AllowedOAuthFlows" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {allowedOAuthFlows = Prelude.pure newValue, ..}
instance Property "AllowedOAuthFlowsUserPoolClient" UserPoolClient where
  type PropertyType "AllowedOAuthFlowsUserPoolClient" UserPoolClient = Value Prelude.Bool
  set newValue UserPoolClient {..}
    = UserPoolClient
        {allowedOAuthFlowsUserPoolClient = Prelude.pure newValue, ..}
instance Property "AllowedOAuthScopes" UserPoolClient where
  type PropertyType "AllowedOAuthScopes" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {allowedOAuthScopes = Prelude.pure newValue, ..}
instance Property "AnalyticsConfiguration" UserPoolClient where
  type PropertyType "AnalyticsConfiguration" UserPoolClient = AnalyticsConfigurationProperty
  set newValue UserPoolClient {..}
    = UserPoolClient
        {analyticsConfiguration = Prelude.pure newValue, ..}
instance Property "AuthSessionValidity" UserPoolClient where
  type PropertyType "AuthSessionValidity" UserPoolClient = Value Prelude.Integer
  set newValue UserPoolClient {..}
    = UserPoolClient {authSessionValidity = Prelude.pure newValue, ..}
instance Property "CallbackURLs" UserPoolClient where
  type PropertyType "CallbackURLs" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {callbackURLs = Prelude.pure newValue, ..}
instance Property "ClientName" UserPoolClient where
  type PropertyType "ClientName" UserPoolClient = Value Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {clientName = Prelude.pure newValue, ..}
instance Property "DefaultRedirectURI" UserPoolClient where
  type PropertyType "DefaultRedirectURI" UserPoolClient = Value Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {defaultRedirectURI = Prelude.pure newValue, ..}
instance Property "EnablePropagateAdditionalUserContextData" UserPoolClient where
  type PropertyType "EnablePropagateAdditionalUserContextData" UserPoolClient = Value Prelude.Bool
  set newValue UserPoolClient {..}
    = UserPoolClient
        {enablePropagateAdditionalUserContextData = Prelude.pure newValue,
         ..}
instance Property "EnableTokenRevocation" UserPoolClient where
  type PropertyType "EnableTokenRevocation" UserPoolClient = Value Prelude.Bool
  set newValue UserPoolClient {..}
    = UserPoolClient
        {enableTokenRevocation = Prelude.pure newValue, ..}
instance Property "ExplicitAuthFlows" UserPoolClient where
  type PropertyType "ExplicitAuthFlows" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {explicitAuthFlows = Prelude.pure newValue, ..}
instance Property "GenerateSecret" UserPoolClient where
  type PropertyType "GenerateSecret" UserPoolClient = Value Prelude.Bool
  set newValue UserPoolClient {..}
    = UserPoolClient {generateSecret = Prelude.pure newValue, ..}
instance Property "IdTokenValidity" UserPoolClient where
  type PropertyType "IdTokenValidity" UserPoolClient = Value Prelude.Integer
  set newValue UserPoolClient {..}
    = UserPoolClient {idTokenValidity = Prelude.pure newValue, ..}
instance Property "LogoutURLs" UserPoolClient where
  type PropertyType "LogoutURLs" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {logoutURLs = Prelude.pure newValue, ..}
instance Property "PreventUserExistenceErrors" UserPoolClient where
  type PropertyType "PreventUserExistenceErrors" UserPoolClient = Value Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient
        {preventUserExistenceErrors = Prelude.pure newValue, ..}
instance Property "ReadAttributes" UserPoolClient where
  type PropertyType "ReadAttributes" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {readAttributes = Prelude.pure newValue, ..}
instance Property "RefreshTokenValidity" UserPoolClient where
  type PropertyType "RefreshTokenValidity" UserPoolClient = Value Prelude.Integer
  set newValue UserPoolClient {..}
    = UserPoolClient {refreshTokenValidity = Prelude.pure newValue, ..}
instance Property "SupportedIdentityProviders" UserPoolClient where
  type PropertyType "SupportedIdentityProviders" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient
        {supportedIdentityProviders = Prelude.pure newValue, ..}
instance Property "TokenValidityUnits" UserPoolClient where
  type PropertyType "TokenValidityUnits" UserPoolClient = TokenValidityUnitsProperty
  set newValue UserPoolClient {..}
    = UserPoolClient {tokenValidityUnits = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolClient where
  type PropertyType "UserPoolId" UserPoolClient = Value Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {userPoolId = newValue, ..}
instance Property "WriteAttributes" UserPoolClient where
  type PropertyType "WriteAttributes" UserPoolClient = ValueList Prelude.Text
  set newValue UserPoolClient {..}
    = UserPoolClient {writeAttributes = Prelude.pure newValue, ..}