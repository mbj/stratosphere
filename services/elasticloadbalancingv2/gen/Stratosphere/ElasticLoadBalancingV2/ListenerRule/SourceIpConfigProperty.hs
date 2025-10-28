module Stratosphere.ElasticLoadBalancingV2.ListenerRule.SourceIpConfigProperty (
        SourceIpConfigProperty(..), mkSourceIpConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceIpConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html>
    SourceIpConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html#cfn-elasticloadbalancingv2-listenerrule-sourceipconfig-values>
                            values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceIpConfigProperty :: SourceIpConfigProperty
mkSourceIpConfigProperty
  = SourceIpConfigProperty
      {haddock_workaround_ = (), values = Prelude.Nothing}
instance ToResourceProperties SourceIpConfigProperty where
  toResourceProperties SourceIpConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.SourceIpConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON SourceIpConfigProperty where
  toJSON SourceIpConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" SourceIpConfigProperty where
  type PropertyType "Values" SourceIpConfigProperty = ValueList Prelude.Text
  set newValue SourceIpConfigProperty {..}
    = SourceIpConfigProperty {values = Prelude.pure newValue, ..}