module Stratosphere.OpsWorks.ElasticLoadBalancerAttachment (
        ElasticLoadBalancerAttachment(..), mkElasticLoadBalancerAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticLoadBalancerAttachment
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html>
    ElasticLoadBalancerAttachment {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-elbname>
                                   elasticLoadBalancerName :: (Value Prelude.Text),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-layerid>
                                   layerId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticLoadBalancerAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> ElasticLoadBalancerAttachment
mkElasticLoadBalancerAttachment elasticLoadBalancerName layerId
  = ElasticLoadBalancerAttachment
      {elasticLoadBalancerName = elasticLoadBalancerName,
       layerId = layerId}
instance ToResourceProperties ElasticLoadBalancerAttachment where
  toResourceProperties ElasticLoadBalancerAttachment {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::ElasticLoadBalancerAttachment",
         supportsTags = Prelude.False,
         properties = ["ElasticLoadBalancerName"
                         JSON..= elasticLoadBalancerName,
                       "LayerId" JSON..= layerId]}
instance JSON.ToJSON ElasticLoadBalancerAttachment where
  toJSON ElasticLoadBalancerAttachment {..}
    = JSON.object
        ["ElasticLoadBalancerName" JSON..= elasticLoadBalancerName,
         "LayerId" JSON..= layerId]
instance Property "ElasticLoadBalancerName" ElasticLoadBalancerAttachment where
  type PropertyType "ElasticLoadBalancerName" ElasticLoadBalancerAttachment = Value Prelude.Text
  set newValue ElasticLoadBalancerAttachment {..}
    = ElasticLoadBalancerAttachment
        {elasticLoadBalancerName = newValue, ..}
instance Property "LayerId" ElasticLoadBalancerAttachment where
  type PropertyType "LayerId" ElasticLoadBalancerAttachment = Value Prelude.Text
  set newValue ElasticLoadBalancerAttachment {..}
    = ElasticLoadBalancerAttachment {layerId = newValue, ..}