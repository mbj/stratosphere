module Stratosphere.ApiGateway.BasePathMapping (
        BasePathMapping(..), mkBasePathMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasePathMapping
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html>
    BasePathMapping {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-basepath>
                     basePath :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-domainname>
                     domainName :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-id>
                     id :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-restapiid>
                     restApiId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-stage>
                     stage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasePathMapping :: Value Prelude.Text -> BasePathMapping
mkBasePathMapping domainName
  = BasePathMapping
      {haddock_workaround_ = (), domainName = domainName,
       basePath = Prelude.Nothing, id = Prelude.Nothing,
       restApiId = Prelude.Nothing, stage = Prelude.Nothing}
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