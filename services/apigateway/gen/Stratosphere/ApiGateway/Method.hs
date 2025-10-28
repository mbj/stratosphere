module Stratosphere.ApiGateway.Method (
        module Exports, Method(..), mkMethod
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.Method.IntegrationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.Method.MethodResponseProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Method
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html>
    Method {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-apikeyrequired>
            apiKeyRequired :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizationscopes>
            authorizationScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizationtype>
            authorizationType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizerid>
            authorizerId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-httpmethod>
            httpMethod :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-integration>
            integration :: (Prelude.Maybe IntegrationProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-methodresponses>
            methodResponses :: (Prelude.Maybe [MethodResponseProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-operationname>
            operationName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestmodels>
            requestModels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestparameters>
            requestParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestvalidatorid>
            requestValidatorId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-resourceid>
            resourceId :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-restapiid>
            restApiId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMethod ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Method
mkMethod httpMethod resourceId restApiId
  = Method
      {haddock_workaround_ = (), httpMethod = httpMethod,
       resourceId = resourceId, restApiId = restApiId,
       apiKeyRequired = Prelude.Nothing,
       authorizationScopes = Prelude.Nothing,
       authorizationType = Prelude.Nothing,
       authorizerId = Prelude.Nothing, integration = Prelude.Nothing,
       methodResponses = Prelude.Nothing, operationName = Prelude.Nothing,
       requestModels = Prelude.Nothing,
       requestParameters = Prelude.Nothing,
       requestValidatorId = Prelude.Nothing}
instance ToResourceProperties Method where
  toResourceProperties Method {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Method", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HttpMethod" JSON..= httpMethod, "ResourceId" JSON..= resourceId,
                            "RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiKeyRequired" Prelude.<$> apiKeyRequired,
                               (JSON..=) "AuthorizationScopes" Prelude.<$> authorizationScopes,
                               (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
                               (JSON..=) "AuthorizerId" Prelude.<$> authorizerId,
                               (JSON..=) "Integration" Prelude.<$> integration,
                               (JSON..=) "MethodResponses" Prelude.<$> methodResponses,
                               (JSON..=) "OperationName" Prelude.<$> operationName,
                               (JSON..=) "RequestModels" Prelude.<$> requestModels,
                               (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                               (JSON..=) "RequestValidatorId" Prelude.<$> requestValidatorId]))}
instance JSON.ToJSON Method where
  toJSON Method {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HttpMethod" JSON..= httpMethod, "ResourceId" JSON..= resourceId,
               "RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "ApiKeyRequired" Prelude.<$> apiKeyRequired,
                  (JSON..=) "AuthorizationScopes" Prelude.<$> authorizationScopes,
                  (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
                  (JSON..=) "AuthorizerId" Prelude.<$> authorizerId,
                  (JSON..=) "Integration" Prelude.<$> integration,
                  (JSON..=) "MethodResponses" Prelude.<$> methodResponses,
                  (JSON..=) "OperationName" Prelude.<$> operationName,
                  (JSON..=) "RequestModels" Prelude.<$> requestModels,
                  (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                  (JSON..=) "RequestValidatorId" Prelude.<$> requestValidatorId])))
instance Property "ApiKeyRequired" Method where
  type PropertyType "ApiKeyRequired" Method = Value Prelude.Bool
  set newValue Method {..}
    = Method {apiKeyRequired = Prelude.pure newValue, ..}
instance Property "AuthorizationScopes" Method where
  type PropertyType "AuthorizationScopes" Method = ValueList Prelude.Text
  set newValue Method {..}
    = Method {authorizationScopes = Prelude.pure newValue, ..}
instance Property "AuthorizationType" Method where
  type PropertyType "AuthorizationType" Method = Value Prelude.Text
  set newValue Method {..}
    = Method {authorizationType = Prelude.pure newValue, ..}
instance Property "AuthorizerId" Method where
  type PropertyType "AuthorizerId" Method = Value Prelude.Text
  set newValue Method {..}
    = Method {authorizerId = Prelude.pure newValue, ..}
instance Property "HttpMethod" Method where
  type PropertyType "HttpMethod" Method = Value Prelude.Text
  set newValue Method {..} = Method {httpMethod = newValue, ..}
instance Property "Integration" Method where
  type PropertyType "Integration" Method = IntegrationProperty
  set newValue Method {..}
    = Method {integration = Prelude.pure newValue, ..}
instance Property "MethodResponses" Method where
  type PropertyType "MethodResponses" Method = [MethodResponseProperty]
  set newValue Method {..}
    = Method {methodResponses = Prelude.pure newValue, ..}
instance Property "OperationName" Method where
  type PropertyType "OperationName" Method = Value Prelude.Text
  set newValue Method {..}
    = Method {operationName = Prelude.pure newValue, ..}
instance Property "RequestModels" Method where
  type PropertyType "RequestModels" Method = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Method {..}
    = Method {requestModels = Prelude.pure newValue, ..}
instance Property "RequestParameters" Method where
  type PropertyType "RequestParameters" Method = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Method {..}
    = Method {requestParameters = Prelude.pure newValue, ..}
instance Property "RequestValidatorId" Method where
  type PropertyType "RequestValidatorId" Method = Value Prelude.Text
  set newValue Method {..}
    = Method {requestValidatorId = Prelude.pure newValue, ..}
instance Property "ResourceId" Method where
  type PropertyType "ResourceId" Method = Value Prelude.Text
  set newValue Method {..} = Method {resourceId = newValue, ..}
instance Property "RestApiId" Method where
  type PropertyType "RestApiId" Method = Value Prelude.Text
  set newValue Method {..} = Method {restApiId = newValue, ..}