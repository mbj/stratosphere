module Stratosphere.ApiGateway.BasePathMapping (
        BasePathMapping(..), mkBasePathMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasePathMapping
  = BasePathMapping {basePath :: (Prelude.Maybe (Value Prelude.Text)),
                     domainName :: (Value Prelude.Text),
                     id :: (Prelude.Maybe (Value Prelude.Text)),
                     restApiId :: (Prelude.Maybe (Value Prelude.Text)),
                     stage :: (Prelude.Maybe (Value Prelude.Text))}
mkBasePathMapping :: Value Prelude.Text -> BasePathMapping
mkBasePathMapping domainName
  = BasePathMapping
      {domainName = domainName, basePath = Prelude.Nothing,
       id = Prelude.Nothing, restApiId = Prelude.Nothing,
       stage = Prelude.Nothing}
instance ToResourceProperties BasePathMapping where
  toResourceProperties BasePathMapping {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::BasePathMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "BasePath" Prelude.<$> basePath,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "RestApiId" Prelude.<$> restApiId,
                               (JSON..=) "Stage" Prelude.<$> stage]))}
instance JSON.ToJSON BasePathMapping where
  toJSON BasePathMapping {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "BasePath" Prelude.<$> basePath,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "RestApiId" Prelude.<$> restApiId,
                  (JSON..=) "Stage" Prelude.<$> stage])))
instance Property "BasePath" BasePathMapping where
  type PropertyType "BasePath" BasePathMapping = Value Prelude.Text
  set newValue BasePathMapping {..}
    = BasePathMapping {basePath = Prelude.pure newValue, ..}
instance Property "DomainName" BasePathMapping where
  type PropertyType "DomainName" BasePathMapping = Value Prelude.Text
  set newValue BasePathMapping {..}
    = BasePathMapping {domainName = newValue, ..}
instance Property "Id" BasePathMapping where
  type PropertyType "Id" BasePathMapping = Value Prelude.Text
  set newValue BasePathMapping {..}
    = BasePathMapping {id = Prelude.pure newValue, ..}
instance Property "RestApiId" BasePathMapping where
  type PropertyType "RestApiId" BasePathMapping = Value Prelude.Text
  set newValue BasePathMapping {..}
    = BasePathMapping {restApiId = Prelude.pure newValue, ..}
instance Property "Stage" BasePathMapping where
  type PropertyType "Stage" BasePathMapping = Value Prelude.Text
  set newValue BasePathMapping {..}
    = BasePathMapping {stage = Prelude.pure newValue, ..}