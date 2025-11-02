module Stratosphere.AppSync.GraphQLApi (
        module Exports, GraphQLApi(..), mkGraphQLApi
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.AdditionalAuthenticationProviderProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.EnhancedMetricsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.LambdaAuthorizerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.LogConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.OpenIDConnectConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.UserPoolConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GraphQLApi
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html>
    GraphQLApi {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-additionalauthenticationproviders>
                additionalAuthenticationProviders :: (Prelude.Maybe [AdditionalAuthenticationProviderProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-apitype>
                apiType :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-authenticationtype>
                authenticationType :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-enhancedmetricsconfig>
                enhancedMetricsConfig :: (Prelude.Maybe EnhancedMetricsConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-environmentvariables>
                environmentVariables :: (Prelude.Maybe JSON.Object),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-introspectionconfig>
                introspectionConfig :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-lambdaauthorizerconfig>
                lambdaAuthorizerConfig :: (Prelude.Maybe LambdaAuthorizerConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-logconfig>
                logConfig :: (Prelude.Maybe LogConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-mergedapiexecutionrolearn>
                mergedApiExecutionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-openidconnectconfig>
                openIDConnectConfig :: (Prelude.Maybe OpenIDConnectConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-ownercontact>
                ownerContact :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-querydepthlimit>
                queryDepthLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-resolvercountlimit>
                resolverCountLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-userpoolconfig>
                userPoolConfig :: (Prelude.Maybe UserPoolConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-visibility>
                visibility :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-xrayenabled>
                xrayEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGraphQLApi ::
  Value Prelude.Text -> Value Prelude.Text -> GraphQLApi
mkGraphQLApi authenticationType name
  = GraphQLApi
      {haddock_workaround_ = (), authenticationType = authenticationType,
       name = name, additionalAuthenticationProviders = Prelude.Nothing,
       apiType = Prelude.Nothing, enhancedMetricsConfig = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       introspectionConfig = Prelude.Nothing,
       lambdaAuthorizerConfig = Prelude.Nothing,
       logConfig = Prelude.Nothing,
       mergedApiExecutionRoleArn = Prelude.Nothing,
       openIDConnectConfig = Prelude.Nothing,
       ownerContact = Prelude.Nothing, queryDepthLimit = Prelude.Nothing,
       resolverCountLimit = Prelude.Nothing, tags = Prelude.Nothing,
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
                               (JSON..=) "EnhancedMetricsConfig"
                                 Prelude.<$> enhancedMetricsConfig,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                               (JSON..=) "IntrospectionConfig" Prelude.<$> introspectionConfig,
                               (JSON..=) "LambdaAuthorizerConfig"
                                 Prelude.<$> lambdaAuthorizerConfig,
                               (JSON..=) "LogConfig" Prelude.<$> logConfig,
                               (JSON..=) "MergedApiExecutionRoleArn"
                                 Prelude.<$> mergedApiExecutionRoleArn,
                               (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig,
                               (JSON..=) "OwnerContact" Prelude.<$> ownerContact,
                               (JSON..=) "QueryDepthLimit" Prelude.<$> queryDepthLimit,
                               (JSON..=) "ResolverCountLimit" Prelude.<$> resolverCountLimit,
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
                  (JSON..=) "EnhancedMetricsConfig"
                    Prelude.<$> enhancedMetricsConfig,
                  (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                  (JSON..=) "IntrospectionConfig" Prelude.<$> introspectionConfig,
                  (JSON..=) "LambdaAuthorizerConfig"
                    Prelude.<$> lambdaAuthorizerConfig,
                  (JSON..=) "LogConfig" Prelude.<$> logConfig,
                  (JSON..=) "MergedApiExecutionRoleArn"
                    Prelude.<$> mergedApiExecutionRoleArn,
                  (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig,
                  (JSON..=) "OwnerContact" Prelude.<$> ownerContact,
                  (JSON..=) "QueryDepthLimit" Prelude.<$> queryDepthLimit,
                  (JSON..=) "ResolverCountLimit" Prelude.<$> resolverCountLimit,
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
instance Property "EnhancedMetricsConfig" GraphQLApi where
  type PropertyType "EnhancedMetricsConfig" GraphQLApi = EnhancedMetricsConfigProperty
  set newValue GraphQLApi {..}
    = GraphQLApi {enhancedMetricsConfig = Prelude.pure newValue, ..}
instance Property "EnvironmentVariables" GraphQLApi where
  type PropertyType "EnvironmentVariables" GraphQLApi = JSON.Object
  set newValue GraphQLApi {..}
    = GraphQLApi {environmentVariables = Prelude.pure newValue, ..}
instance Property "IntrospectionConfig" GraphQLApi where
  type PropertyType "IntrospectionConfig" GraphQLApi = Value Prelude.Text
  set newValue GraphQLApi {..}
    = GraphQLApi {introspectionConfig = Prelude.pure newValue, ..}
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
instance Property "QueryDepthLimit" GraphQLApi where
  type PropertyType "QueryDepthLimit" GraphQLApi = Value Prelude.Integer
  set newValue GraphQLApi {..}
    = GraphQLApi {queryDepthLimit = Prelude.pure newValue, ..}
instance Property "ResolverCountLimit" GraphQLApi where
  type PropertyType "ResolverCountLimit" GraphQLApi = Value Prelude.Integer
  set newValue GraphQLApi {..}
    = GraphQLApi {resolverCountLimit = Prelude.pure newValue, ..}
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