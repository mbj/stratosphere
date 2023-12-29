module Stratosphere.ElasticLoadBalancingV2.ListenerRule.PathPatternConfigProperty (
        PathPatternConfigProperty(..), mkPathPatternConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathPatternConfigProperty
  = PathPatternConfigProperty {values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPathPatternConfigProperty :: PathPatternConfigProperty
mkPathPatternConfigProperty
  = PathPatternConfigProperty {values = Prelude.Nothing}
instance ToResourceProperties PathPatternConfigProperty where
  toResourceProperties PathPatternConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.PathPatternConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON PathPatternConfigProperty where
  toJSON PathPatternConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" PathPatternConfigProperty where
  type PropertyType "Values" PathPatternConfigProperty = ValueList Prelude.Text
  set newValue PathPatternConfigProperty {}
    = PathPatternConfigProperty {values = Prelude.pure newValue, ..}