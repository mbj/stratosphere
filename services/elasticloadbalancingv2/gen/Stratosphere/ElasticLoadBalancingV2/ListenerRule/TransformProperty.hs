module Stratosphere.ElasticLoadBalancingV2.ListenerRule.TransformProperty (
        module Exports, TransformProperty(..), mkTransformProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.RewriteConfigObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html>
    TransformProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html#cfn-elasticloadbalancingv2-listenerrule-transform-hostheaderrewriteconfig>
                       hostHeaderRewriteConfig :: (Prelude.Maybe RewriteConfigObjectProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html#cfn-elasticloadbalancingv2-listenerrule-transform-type>
                       type' :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html#cfn-elasticloadbalancingv2-listenerrule-transform-urlrewriteconfig>
                       urlRewriteConfig :: (Prelude.Maybe RewriteConfigObjectProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformProperty :: Value Prelude.Text -> TransformProperty
mkTransformProperty type'
  = TransformProperty
      {haddock_workaround_ = (), type' = type',
       hostHeaderRewriteConfig = Prelude.Nothing,
       urlRewriteConfig = Prelude.Nothing}
instance ToResourceProperties TransformProperty where
  toResourceProperties TransformProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.Transform",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "HostHeaderRewriteConfig"
                                 Prelude.<$> hostHeaderRewriteConfig,
                               (JSON..=) "UrlRewriteConfig" Prelude.<$> urlRewriteConfig]))}
instance JSON.ToJSON TransformProperty where
  toJSON TransformProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "HostHeaderRewriteConfig"
                    Prelude.<$> hostHeaderRewriteConfig,
                  (JSON..=) "UrlRewriteConfig" Prelude.<$> urlRewriteConfig])))
instance Property "HostHeaderRewriteConfig" TransformProperty where
  type PropertyType "HostHeaderRewriteConfig" TransformProperty = RewriteConfigObjectProperty
  set newValue TransformProperty {..}
    = TransformProperty
        {hostHeaderRewriteConfig = Prelude.pure newValue, ..}
instance Property "Type" TransformProperty where
  type PropertyType "Type" TransformProperty = Value Prelude.Text
  set newValue TransformProperty {..}
    = TransformProperty {type' = newValue, ..}
instance Property "UrlRewriteConfig" TransformProperty where
  type PropertyType "UrlRewriteConfig" TransformProperty = RewriteConfigObjectProperty
  set newValue TransformProperty {..}
    = TransformProperty {urlRewriteConfig = Prelude.pure newValue, ..}