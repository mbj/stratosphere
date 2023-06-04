module Stratosphere.AppSync.GraphQLApi (
        module Exports, GraphQLApi(..), mkGraphQLApi
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.AdditionalAuthenticationProviderProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.LambdaAuthorizerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.LogConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.OpenIDConnectConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.UserPoolConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GraphQLApi
  = GraphQLApi {additionalAuthenticationProviders :: (Prelude.Maybe [AdditionalAuthenticationProviderProperty]),
                apiType :: (Prelude.Maybe (Value Prelude.Text)),
                authenticationType :: (Value Prelude.Text),
                lambdaAuthorizerConfig :: (Prelude.Maybe LambdaAuthorizerConfigProperty),
                logConfig :: (Prelude.Maybe LogConfigProperty),
                mergedApiExecutionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Value Prelude.Text),
                openIDConnectConfig :: (Prelude.Maybe OpenIDConnectConfigProperty),
                ownerContact :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag]),
                userPoolConfig :: (Prelude.Maybe UserPoolConfigProperty),
                visibility :: (Prelude.Maybe (Value Prelude.Text)),
                xrayEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkGraphQLApi ::
  Value Prelude.Text -> Value Prelude.Text -> GraphQLApi
mkGraphQLApi authenticationType name
  = GraphQLApi
      {authenticationType = authenticationType, name = name,
       additionalAuthenticationProviders = Prelude.Nothing,
       apiType = Prelude.Nothing,
       lambdaAuthorizerConfig = Prelude.Nothing,
       logConfig = Prelude.Nothing,
       mergedApiExecutionRoleArn = Prelude.Nothing,
       openIDConnectConfig = Prelude.Nothing,
       ownerContact = Prelude.Nothing, tags = Prelude.Nothing,
       userPoolConfig = Prelude.Nothing, visibility = Prelude.Nothing,
       xrayEnabled = Prelude.Nothing}
instance ToResourceProperties GraphQLApi where
  toResourceProperties GraphQLApi {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalAuthenticationProviders"
                                 Prelude.<$> additionalAuthenticationProviders,
                               (JSON..=) "ApiType" Prelude.<$> apiType,
                               (JSON..=) "LambdaAuthorizerConfig"
                                 Prelude.<$> lambdaAuthorizerConfig,
                               (JSON..=) "LogConfig" Prelude.<$> logConfig,
                               (JSON..=) "MergedApiExecutionRoleArn"
                                 Prelude.<$> mergedApiExecutionRoleArn,
                               (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig,
                               (JSON..=) "OwnerContact" Prelude.<$> ownerContact,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserPoolConfig" Prelude.<$> userPoolConfig,
                               (JSON..=) "Visibility" Prelude.<$> visibility,
                               (JSON..=) "XrayEnabled" Prelude.<$> xrayEnabled]))}
instance JSON.ToJSON GraphQLApi where
  toJSON GraphQLApi {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalAuthenticationProviders"
                    Prelude.<$> additionalAuthenticationProviders,
                  (JSON..=) "ApiType" Prelude.<$> apiType,
                  (JSON..=) "LambdaAuthorizerConfig"
                    Prelude.<$> lambdaAuthorizerConfig,
                  (JSON..=) "LogConfig" Prelude.<$> logConfig,
                  (JSON..=) "MergedApiExecutionRoleArn"
                    Prelude.<$> mergedApiExecutionRoleArn,
                  (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig,
                  (JSON..=) "OwnerContact" Prelude.<$> ownerContact,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserPoolConfig" Prelude.<$> userPoolConfig,
                  (JSON..=) "Visibility" Prelude.<$> visibility,
                  (JSON..=) "XrayEnabled" Prelude.<$> xrayEnabled])))
instance Property "AdditionalAuthenticationProviders" GraphQLApi where
  type PropertyType "AdditionalAuthenticationProviders" GraphQLApi = [AdditionalAuthenticationProviderProperty]
  set newValue GraphQLApi {..}
    = GraphQLApi
        {additionalAuthenticationProviders = Prelude.pure newValue, ..}
instance Property "ApiType" GraphQLApi where
  type PropertyType "ApiType" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..}
    = GraphQLApi {apiType = Prelude.pure newValue, ..}
instance Property "AuthenticationType" GraphQLApi where
  type PropertyType "AuthenticationType" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..}
    = GraphQLApi {authenticationType = newValue, ..}
instance Property "LambdaAuthorizerConfig" GraphQLApi where
  type PropertyType "LambdaAuthorizerConfig" GraphQLApi = LambdaAuthorizerConfigProperty
  set newValue GraphQLApi {..}
    = GraphQLApi {lambdaAuthorizerConfig = Prelude.pure newValue, ..}
instance Property "LogConfig" GraphQLApi where
  type PropertyType "LogConfig" GraphQLApi = LogConfigProperty
  set newValue GraphQLApi {..}
    = GraphQLApi {logConfig = Prelude.pure newValue, ..}
instance Property "MergedApiExecutionRoleArn" GraphQLApi where
  type PropertyType "MergedApiExecutionRoleArn" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..}
    = GraphQLApi
        {mergedApiExecutionRoleArn = Prelude.pure newValue, ..}
instance Property "Name" GraphQLApi where
  type PropertyType "Name" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..} = GraphQLApi {name = newValue, ..}
instance Property "OpenIDConnectConfig" GraphQLApi where
  type PropertyType "OpenIDConnectConfig" GraphQLApi = OpenIDConnectConfigProperty
  set newValue GraphQLApi {..}
    = GraphQLApi {openIDConnectConfig = Prelude.pure newValue, ..}
instance Property "OwnerContact" GraphQLApi where
  type PropertyType "OwnerContact" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..}
    = GraphQLApi {ownerContact = Prelude.pure newValue, ..}
instance Property "Tags" GraphQLApi where
  type PropertyType "Tags" GraphQLApi = [Tag]
  set newValue GraphQLApi {..}
    = GraphQLApi {tags = Prelude.pure newValue, ..}
instance Property "UserPoolConfig" GraphQLApi where
  type PropertyType "UserPoolConfig" GraphQLApi = UserPoolConfigProperty
  set newValue GraphQLApi {..}
    = GraphQLApi {userPoolConfig = Prelude.pure newValue, ..}
instance Property "Visibility" GraphQLApi where
  type PropertyType "Visibility" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..}
    = GraphQLApi {visibility = Prelude.pure newValue, ..}
instance Property "XrayEnabled" GraphQLApi where
  type PropertyType "XrayEnabled" GraphQLApi = Value Prelude.Bool
  set newValue GraphQLApi {..}
    = GraphQLApi {xrayEnabled = Prelude.pure newValue, ..}