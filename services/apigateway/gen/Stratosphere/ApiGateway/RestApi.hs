module Stratosphere.ApiGateway.RestApi (
        module Exports, RestApi(..), mkRestApi
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.RestApi.EndpointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.RestApi.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RestApi
  = RestApi {apiKeySourceType :: (Prelude.Maybe (Value Prelude.Text)),
             binaryMediaTypes :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
             body :: (Prelude.Maybe JSON.Object),
             bodyS3Location :: (Prelude.Maybe S3LocationProperty),
             cloneFrom :: (Prelude.Maybe (Value Prelude.Text)),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             disableExecuteApiEndpoint :: (Prelude.Maybe (Value Prelude.Bool)),
             endpointConfiguration :: (Prelude.Maybe EndpointConfigurationProperty),
             failOnWarnings :: (Prelude.Maybe (Value Prelude.Bool)),
             minimumCompressionSize :: (Prelude.Maybe (Value Prelude.Integer)),
             mode :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
             policy :: (Prelude.Maybe JSON.Object),
             tags :: (Prelude.Maybe [Tag])}
mkRestApi :: RestApi
mkRestApi
  = RestApi
      {apiKeySourceType = Prelude.Nothing,
       binaryMediaTypes = Prelude.Nothing, body = Prelude.Nothing,
       bodyS3Location = Prelude.Nothing, cloneFrom = Prelude.Nothing,
       description = Prelude.Nothing,
       disableExecuteApiEndpoint = Prelude.Nothing,
       endpointConfiguration = Prelude.Nothing,
       failOnWarnings = Prelude.Nothing,
       minimumCompressionSize = Prelude.Nothing, mode = Prelude.Nothing,
       name = Prelude.Nothing, parameters = Prelude.Nothing,
       policy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RestApi where
  toResourceProperties RestApi {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::RestApi",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiKeySourceType" Prelude.<$> apiKeySourceType,
                            (JSON..=) "BinaryMediaTypes" Prelude.<$> binaryMediaTypes,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "BodyS3Location" Prelude.<$> bodyS3Location,
                            (JSON..=) "CloneFrom" Prelude.<$> cloneFrom,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisableExecuteApiEndpoint"
                              Prelude.<$> disableExecuteApiEndpoint,
                            (JSON..=) "EndpointConfiguration"
                              Prelude.<$> endpointConfiguration,
                            (JSON..=) "FailOnWarnings" Prelude.<$> failOnWarnings,
                            (JSON..=) "MinimumCompressionSize"
                              Prelude.<$> minimumCompressionSize,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "Policy" Prelude.<$> policy,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON RestApi where
  toJSON RestApi {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiKeySourceType" Prelude.<$> apiKeySourceType,
               (JSON..=) "BinaryMediaTypes" Prelude.<$> binaryMediaTypes,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "BodyS3Location" Prelude.<$> bodyS3Location,
               (JSON..=) "CloneFrom" Prelude.<$> cloneFrom,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisableExecuteApiEndpoint"
                 Prelude.<$> disableExecuteApiEndpoint,
               (JSON..=) "EndpointConfiguration"
                 Prelude.<$> endpointConfiguration,
               (JSON..=) "FailOnWarnings" Prelude.<$> failOnWarnings,
               (JSON..=) "MinimumCompressionSize"
                 Prelude.<$> minimumCompressionSize,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "Policy" Prelude.<$> policy,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ApiKeySourceType" RestApi where
  type PropertyType "ApiKeySourceType" RestApi = Value Prelude.Text
  set newValue RestApi {..}
    = RestApi {apiKeySourceType = Prelude.pure newValue, ..}
instance Property "BinaryMediaTypes" RestApi where
  type PropertyType "BinaryMediaTypes" RestApi = ValueList (Value Prelude.Text)
  set newValue RestApi {..}
    = RestApi {binaryMediaTypes = Prelude.pure newValue, ..}
instance Property "Body" RestApi where
  type PropertyType "Body" RestApi = JSON.Object
  set newValue RestApi {..}
    = RestApi {body = Prelude.pure newValue, ..}
instance Property "BodyS3Location" RestApi where
  type PropertyType "BodyS3Location" RestApi = S3LocationProperty
  set newValue RestApi {..}
    = RestApi {bodyS3Location = Prelude.pure newValue, ..}
instance Property "CloneFrom" RestApi where
  type PropertyType "CloneFrom" RestApi = Value Prelude.Text
  set newValue RestApi {..}
    = RestApi {cloneFrom = Prelude.pure newValue, ..}
instance Property "Description" RestApi where
  type PropertyType "Description" RestApi = Value Prelude.Text
  set newValue RestApi {..}
    = RestApi {description = Prelude.pure newValue, ..}
instance Property "DisableExecuteApiEndpoint" RestApi where
  type PropertyType "DisableExecuteApiEndpoint" RestApi = Value Prelude.Bool
  set newValue RestApi {..}
    = RestApi {disableExecuteApiEndpoint = Prelude.pure newValue, ..}
instance Property "EndpointConfiguration" RestApi where
  type PropertyType "EndpointConfiguration" RestApi = EndpointConfigurationProperty
  set newValue RestApi {..}
    = RestApi {endpointConfiguration = Prelude.pure newValue, ..}
instance Property "FailOnWarnings" RestApi where
  type PropertyType "FailOnWarnings" RestApi = Value Prelude.Bool
  set newValue RestApi {..}
    = RestApi {failOnWarnings = Prelude.pure newValue, ..}
instance Property "MinimumCompressionSize" RestApi where
  type PropertyType "MinimumCompressionSize" RestApi = Value Prelude.Integer
  set newValue RestApi {..}
    = RestApi {minimumCompressionSize = Prelude.pure newValue, ..}
instance Property "Mode" RestApi where
  type PropertyType "Mode" RestApi = Value Prelude.Text
  set newValue RestApi {..}
    = RestApi {mode = Prelude.pure newValue, ..}
instance Property "Name" RestApi where
  type PropertyType "Name" RestApi = Value Prelude.Text
  set newValue RestApi {..}
    = RestApi {name = Prelude.pure newValue, ..}
instance Property "Parameters" RestApi where
  type PropertyType "Parameters" RestApi = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RestApi {..}
    = RestApi {parameters = Prelude.pure newValue, ..}
instance Property "Policy" RestApi where
  type PropertyType "Policy" RestApi = JSON.Object
  set newValue RestApi {..}
    = RestApi {policy = Prelude.pure newValue, ..}
instance Property "Tags" RestApi where
  type PropertyType "Tags" RestApi = [Tag]
  set newValue RestApi {..}
    = RestApi {tags = Prelude.pure newValue, ..}