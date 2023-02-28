module Stratosphere.ApiGatewayV2.ApiMapping (
        ApiMapping(..), mkApiMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiMapping
  = ApiMapping {apiId :: (Value Prelude.Text),
                apiMappingKey :: (Prelude.Maybe (Value Prelude.Text)),
                domainName :: (Value Prelude.Text),
                stage :: (Value Prelude.Text)}
mkApiMapping ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ApiMapping
mkApiMapping apiId domainName stage
  = ApiMapping
      {apiId = apiId, domainName = domainName, stage = stage,
       apiMappingKey = Prelude.Nothing}
instance ToResourceProperties ApiMapping where
  toResourceProperties ApiMapping {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "DomainName" JSON..= domainName,
                            "Stage" JSON..= stage]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiMappingKey" Prelude.<$> apiMappingKey]))}
instance JSON.ToJSON ApiMapping where
  toJSON ApiMapping {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "DomainName" JSON..= domainName,
               "Stage" JSON..= stage]
              (Prelude.catMaybes
                 [(JSON..=) "ApiMappingKey" Prelude.<$> apiMappingKey])))
instance Property "ApiId" ApiMapping where
  type PropertyType "ApiId" ApiMapping = Value Prelude.Text
  set newValue ApiMapping {..} = ApiMapping {apiId = newValue, ..}
instance Property "ApiMappingKey" ApiMapping where
  type PropertyType "ApiMappingKey" ApiMapping = Value Prelude.Text
  set newValue ApiMapping {..}
    = ApiMapping {apiMappingKey = Prelude.pure newValue, ..}
instance Property "DomainName" ApiMapping where
  type PropertyType "DomainName" ApiMapping = Value Prelude.Text
  set newValue ApiMapping {..}
    = ApiMapping {domainName = newValue, ..}
instance Property "Stage" ApiMapping where
  type PropertyType "Stage" ApiMapping = Value Prelude.Text
  set newValue ApiMapping {..} = ApiMapping {stage = newValue, ..}