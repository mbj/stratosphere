module Stratosphere.ApiGateway.BasePathMappingV2 (
        BasePathMappingV2(..), mkBasePathMappingV2
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasePathMappingV2
  = BasePathMappingV2 {basePath :: (Prelude.Maybe (Value Prelude.Text)),
                       domainNameArn :: (Value Prelude.Text),
                       restApiId :: (Value Prelude.Text),
                       stage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasePathMappingV2 ::
  Value Prelude.Text -> Value Prelude.Text -> BasePathMappingV2
mkBasePathMappingV2 domainNameArn restApiId
  = BasePathMappingV2
      {domainNameArn = domainNameArn, restApiId = restApiId,
       basePath = Prelude.Nothing, stage = Prelude.Nothing}
instance ToResourceProperties BasePathMappingV2 where
  toResourceProperties BasePathMappingV2 {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::BasePathMappingV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainNameArn" JSON..= domainNameArn,
                            "RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "BasePath" Prelude.<$> basePath,
                               (JSON..=) "Stage" Prelude.<$> stage]))}
instance JSON.ToJSON BasePathMappingV2 where
  toJSON BasePathMappingV2 {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainNameArn" JSON..= domainNameArn,
               "RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "BasePath" Prelude.<$> basePath,
                  (JSON..=) "Stage" Prelude.<$> stage])))
instance Property "BasePath" BasePathMappingV2 where
  type PropertyType "BasePath" BasePathMappingV2 = Value Prelude.Text
  set newValue BasePathMappingV2 {..}
    = BasePathMappingV2 {basePath = Prelude.pure newValue, ..}
instance Property "DomainNameArn" BasePathMappingV2 where
  type PropertyType "DomainNameArn" BasePathMappingV2 = Value Prelude.Text
  set newValue BasePathMappingV2 {..}
    = BasePathMappingV2 {domainNameArn = newValue, ..}
instance Property "RestApiId" BasePathMappingV2 where
  type PropertyType "RestApiId" BasePathMappingV2 = Value Prelude.Text
  set newValue BasePathMappingV2 {..}
    = BasePathMappingV2 {restApiId = newValue, ..}
instance Property "Stage" BasePathMappingV2 where
  type PropertyType "Stage" BasePathMappingV2 = Value Prelude.Text
  set newValue BasePathMappingV2 {..}
    = BasePathMappingV2 {stage = Prelude.pure newValue, ..}