module Stratosphere.ApiGateway.Method.IntegrationProperty (
        module Exports, IntegrationProperty(..), mkIntegrationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.Method.IntegrationResponseProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html>
    IntegrationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-cachekeyparameters>
                         cacheKeyParameters :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-cachenamespace>
                         cacheNamespace :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-connectionid>
                         connectionId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-connectiontype>
                         connectionType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-contenthandling>
                         contentHandling :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-credentials>
                         credentials :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-integrationhttpmethod>
                         integrationHttpMethod :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-integrationresponses>
                         integrationResponses :: (Prelude.Maybe [IntegrationResponseProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-passthroughbehavior>
                         passthroughBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-requestparameters>
                         requestParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-requesttemplates>
                         requestTemplates :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-timeoutinmillis>
                         timeoutInMillis :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-type>
                         type' :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integration.html#cfn-apigateway-method-integration-uri>
                         uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegrationProperty :: Value Prelude.Text -> IntegrationProperty
mkIntegrationProperty type'
  = IntegrationProperty
      {haddock_workaround_ = (), type' = type',
       cacheKeyParameters = Prelude.Nothing,
       cacheNamespace = Prelude.Nothing, connectionId = Prelude.Nothing,
       connectionType = Prelude.Nothing,
       contentHandling = Prelude.Nothing, credentials = Prelude.Nothing,
       integrationHttpMethod = Prelude.Nothing,
       integrationResponses = Prelude.Nothing,
       passthroughBehavior = Prelude.Nothing,
       requestParameters = Prelude.Nothing,
       requestTemplates = Prelude.Nothing,
       timeoutInMillis = Prelude.Nothing, uri = Prelude.Nothing}
instance ToResourceProperties IntegrationProperty where
  toResourceProperties IntegrationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Method.Integration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CacheKeyParameters" Prelude.<$> cacheKeyParameters,
                               (JSON..=) "CacheNamespace" Prelude.<$> cacheNamespace,
                               (JSON..=) "ConnectionId" Prelude.<$> connectionId,
                               (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                               (JSON..=) "ContentHandling" Prelude.<$> contentHandling,
                               (JSON..=) "Credentials" Prelude.<$> credentials,
                               (JSON..=) "IntegrationHttpMethod"
                                 Prelude.<$> integrationHttpMethod,
                               (JSON..=) "IntegrationResponses" Prelude.<$> integrationResponses,
                               (JSON..=) "PassthroughBehavior" Prelude.<$> passthroughBehavior,
                               (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                               (JSON..=) "RequestTemplates" Prelude.<$> requestTemplates,
                               (JSON..=) "TimeoutInMillis" Prelude.<$> timeoutInMillis,
                               (JSON..=) "Uri" Prelude.<$> uri]))}
instance JSON.ToJSON IntegrationProperty where
  toJSON IntegrationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CacheKeyParameters" Prelude.<$> cacheKeyParameters,
                  (JSON..=) "CacheNamespace" Prelude.<$> cacheNamespace,
                  (JSON..=) "ConnectionId" Prelude.<$> connectionId,
                  (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                  (JSON..=) "ContentHandling" Prelude.<$> contentHandling,
                  (JSON..=) "Credentials" Prelude.<$> credentials,
                  (JSON..=) "IntegrationHttpMethod"
                    Prelude.<$> integrationHttpMethod,
                  (JSON..=) "IntegrationResponses" Prelude.<$> integrationResponses,
                  (JSON..=) "PassthroughBehavior" Prelude.<$> passthroughBehavior,
                  (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                  (JSON..=) "RequestTemplates" Prelude.<$> requestTemplates,
                  (JSON..=) "TimeoutInMillis" Prelude.<$> timeoutInMillis,
                  (JSON..=) "Uri" Prelude.<$> uri])))
instance Property "CacheKeyParameters" IntegrationProperty where
  type PropertyType "CacheKeyParameters" IntegrationProperty = ValueList Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty
        {cacheKeyParameters = Prelude.pure newValue, ..}
instance Property "CacheNamespace" IntegrationProperty where
  type PropertyType "CacheNamespace" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {cacheNamespace = Prelude.pure newValue, ..}
instance Property "ConnectionId" IntegrationProperty where
  type PropertyType "ConnectionId" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {connectionId = Prelude.pure newValue, ..}
instance Property "ConnectionType" IntegrationProperty where
  type PropertyType "ConnectionType" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {connectionType = Prelude.pure newValue, ..}
instance Property "ContentHandling" IntegrationProperty where
  type PropertyType "ContentHandling" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {contentHandling = Prelude.pure newValue, ..}
instance Property "Credentials" IntegrationProperty where
  type PropertyType "Credentials" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {credentials = Prelude.pure newValue, ..}
instance Property "IntegrationHttpMethod" IntegrationProperty where
  type PropertyType "IntegrationHttpMethod" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty
        {integrationHttpMethod = Prelude.pure newValue, ..}
instance Property "IntegrationResponses" IntegrationProperty where
  type PropertyType "IntegrationResponses" IntegrationProperty = [IntegrationResponseProperty]
  set newValue IntegrationProperty {..}
    = IntegrationProperty
        {integrationResponses = Prelude.pure newValue, ..}
instance Property "PassthroughBehavior" IntegrationProperty where
  type PropertyType "PassthroughBehavior" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty
        {passthroughBehavior = Prelude.pure newValue, ..}
instance Property "RequestParameters" IntegrationProperty where
  type PropertyType "RequestParameters" IntegrationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IntegrationProperty {..}
    = IntegrationProperty
        {requestParameters = Prelude.pure newValue, ..}
instance Property "RequestTemplates" IntegrationProperty where
  type PropertyType "RequestTemplates" IntegrationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IntegrationProperty {..}
    = IntegrationProperty
        {requestTemplates = Prelude.pure newValue, ..}
instance Property "TimeoutInMillis" IntegrationProperty where
  type PropertyType "TimeoutInMillis" IntegrationProperty = Value Prelude.Integer
  set newValue IntegrationProperty {..}
    = IntegrationProperty {timeoutInMillis = Prelude.pure newValue, ..}
instance Property "Type" IntegrationProperty where
  type PropertyType "Type" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {type' = newValue, ..}
instance Property "Uri" IntegrationProperty where
  type PropertyType "Uri" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {uri = Prelude.pure newValue, ..}