module Stratosphere.EMR.Cluster.ComputeLimitsProperty (
        ComputeLimitsProperty(..), mkComputeLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeLimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-computelimits.html>
    ComputeLimitsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-computelimits.html#cfn-elasticmapreduce-cluster-computelimits-maximumcapacityunits>
                           maximumCapacityUnits :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-computelimits.html#cfn-elasticmapreduce-cluster-computelimits-maximumcorecapacityunits>
                           maximumCoreCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-computelimits.html#cfn-elasticmapreduce-cluster-computelimits-maximumondemandcapacityunits>
                           maximumOnDemandCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-computelimits.html#cfn-elasticmapreduce-cluster-computelimits-minimumcapacityunits>
                           minimumCapacityUnits :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-computelimits.html#cfn-elasticmapreduce-cluster-computelimits-unittype>
                           unitType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeLimitsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text -> ComputeLimitsProperty
mkComputeLimitsProperty
  maximumCapacityUnits
  minimumCapacityUnits
  unitType
  = ComputeLimitsProperty
      {haddock_workaround_ = (),
       maximumCapacityUnits = maximumCapacityUnits,
       minimumCapacityUnits = minimumCapacityUnits, unitType = unitType,
       maximumCoreCapacityUnits = Prelude.Nothing,
       maximumOnDemandCapacityUnits = Prelude.Nothing}
instance ToResourceProperties ComputeLimitsProperty where
  toResourceProperties ComputeLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ComputeLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaximumCapacityUnits" JSON..= maximumCapacityUnits,
                            "MinimumCapacityUnits" JSON..= minimumCapacityUnits,
                            "UnitType" JSON..= unitType]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumCoreCapacityUnits"
                                 Prelude.<$> maximumCoreCapacityUnits,
                               (JSON..=) "MaximumOnDemandCapacityUnits"
                                 Prelude.<$> maximumOnDemandCapacityUnits]))}
instance JSON.ToJSON ComputeLimitsProperty where
  toJSON ComputeLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaximumCapacityUnits" JSON..= maximumCapacityUnits,
               "MinimumCapacityUnits" JSON..= minimumCapacityUnits,
               "UnitType" JSON..= unitType]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumCoreCapacityUnits"
                    Prelude.<$> maximumCoreCapacityUnits,
                  (JSON..=) "MaximumOnDemandCapacityUnits"
                    Prelude.<$> maximumOnDemandCapacityUnits])))
instance Property "MaximumCapacityUnits" ComputeLimitsProperty where
  type PropertyType "MaximumCapacityUnits" ComputeLimitsProperty = Value Prelude.Integer
  set newValue ComputeLimitsProperty {..}
    = ComputeLimitsProperty {maximumCapacityUnits = newValue, ..}
instance Property "MaximumCoreCapacityUnits" ComputeLimitsProperty where
  type PropertyType "MaximumCoreCapacityUnits" ComputeLimitsProperty = Value Prelude.Integer
  set newValue ComputeLimitsProperty {..}
    = ComputeLimitsProperty
        {maximumCoreCapacityUnits = Prelude.pure newValue, ..}
instance Property "MaximumOnDemandCapacityUnits" ComputeLimitsProperty where
  type PropertyType "MaximumOnDemandCapacityUnits" ComputeLimitsProperty = Value Prelude.Integer
  set newValue ComputeLimitsProperty {..}
    = ComputeLimitsProperty
        {maximumOnDemandCapacityUnits = Prelude.pure newValue, ..}
instance Property "MinimumCapacityUnits" ComputeLimitsProperty where
  type PropertyType "MinimumCapacityUnits" ComputeLimitsProperty = Value Prelude.Integer
  set newValue ComputeLimitsProperty {..}
    = ComputeLimitsProperty {minimumCapacityUnits = newValue, ..}
instance Property "UnitType" ComputeLimitsProperty where
  type PropertyType "UnitType" ComputeLimitsProperty = Value Prelude.Text
  set newValue ComputeLimitsProperty {..}
    = ComputeLimitsProperty {unitType = newValue, ..}