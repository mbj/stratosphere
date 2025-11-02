module Stratosphere.EMR.Cluster.ScalingConstraintsProperty (
        ScalingConstraintsProperty(..), mkScalingConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConstraintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html>
    ScalingConstraintsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html#cfn-elasticmapreduce-cluster-scalingconstraints-maxcapacity>
                                maxCapacity :: (Value Prelude.Integer),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html#cfn-elasticmapreduce-cluster-scalingconstraints-mincapacity>
                                minCapacity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingConstraintsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ScalingConstraintsProperty
mkScalingConstraintsProperty maxCapacity minCapacity
  = ScalingConstraintsProperty
      {haddock_workaround_ = (), maxCapacity = maxCapacity,
       minCapacity = minCapacity}
instance ToResourceProperties ScalingConstraintsProperty where
  toResourceProperties ScalingConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ScalingConstraints",
         supportsTags = Prelude.False,
         properties = ["MaxCapacity" JSON..= maxCapacity,
                       "MinCapacity" JSON..= minCapacity]}
instance JSON.ToJSON ScalingConstraintsProperty where
  toJSON ScalingConstraintsProperty {..}
    = JSON.object
        ["MaxCapacity" JSON..= maxCapacity,
         "MinCapacity" JSON..= minCapacity]
instance Property "MaxCapacity" ScalingConstraintsProperty where
  type PropertyType "MaxCapacity" ScalingConstraintsProperty = Value Prelude.Integer
  set newValue ScalingConstraintsProperty {..}
    = ScalingConstraintsProperty {maxCapacity = newValue, ..}
instance Property "MinCapacity" ScalingConstraintsProperty where
  type PropertyType "MinCapacity" ScalingConstraintsProperty = Value Prelude.Integer
  set newValue ScalingConstraintsProperty {..}
    = ScalingConstraintsProperty {minCapacity = newValue, ..}