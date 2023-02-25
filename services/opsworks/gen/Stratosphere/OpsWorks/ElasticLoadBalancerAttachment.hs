module Stratosphere.OpsWorks.ElasticLoadBalancerAttachment (
        ElasticLoadBalancerAttachment(..), mkElasticLoadBalancerAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticLoadBalancerAttachment
  = ElasticLoadBalancerAttachment {elasticLoadBalancerName :: (Value Prelude.Text),
                                   layerId :: (Value Prelude.Text)}
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