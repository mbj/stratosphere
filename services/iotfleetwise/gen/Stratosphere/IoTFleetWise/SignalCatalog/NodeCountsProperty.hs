module Stratosphere.IoTFleetWise.SignalCatalog.NodeCountsProperty (
        NodeCountsProperty(..), mkNodeCountsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeCountsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-nodecounts.html>
    NodeCountsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-nodecounts.html#cfn-iotfleetwise-signalcatalog-nodecounts-totalactuators>
                        totalActuators :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-nodecounts.html#cfn-iotfleetwise-signalcatalog-nodecounts-totalattributes>
                        totalAttributes :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-nodecounts.html#cfn-iotfleetwise-signalcatalog-nodecounts-totalbranches>
                        totalBranches :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-nodecounts.html#cfn-iotfleetwise-signalcatalog-nodecounts-totalnodes>
                        totalNodes :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-nodecounts.html#cfn-iotfleetwise-signalcatalog-nodecounts-totalsensors>
                        totalSensors :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeCountsProperty :: NodeCountsProperty
mkNodeCountsProperty
  = NodeCountsProperty
      {haddock_workaround_ = (), totalActuators = Prelude.Nothing,
       totalAttributes = Prelude.Nothing, totalBranches = Prelude.Nothing,
       totalNodes = Prelude.Nothing, totalSensors = Prelude.Nothing}
instance ToResourceProperties NodeCountsProperty where
  toResourceProperties NodeCountsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog.NodeCounts",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TotalActuators" Prelude.<$> totalActuators,
                            (JSON..=) "TotalAttributes" Prelude.<$> totalAttributes,
                            (JSON..=) "TotalBranches" Prelude.<$> totalBranches,
                            (JSON..=) "TotalNodes" Prelude.<$> totalNodes,
                            (JSON..=) "TotalSensors" Prelude.<$> totalSensors])}
instance JSON.ToJSON NodeCountsProperty where
  toJSON NodeCountsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TotalActuators" Prelude.<$> totalActuators,
               (JSON..=) "TotalAttributes" Prelude.<$> totalAttributes,
               (JSON..=) "TotalBranches" Prelude.<$> totalBranches,
               (JSON..=) "TotalNodes" Prelude.<$> totalNodes,
               (JSON..=) "TotalSensors" Prelude.<$> totalSensors]))
instance Property "TotalActuators" NodeCountsProperty where
  type PropertyType "TotalActuators" NodeCountsProperty = Value Prelude.Double
  set newValue NodeCountsProperty {..}
    = NodeCountsProperty {totalActuators = Prelude.pure newValue, ..}
instance Property "TotalAttributes" NodeCountsProperty where
  type PropertyType "TotalAttributes" NodeCountsProperty = Value Prelude.Double
  set newValue NodeCountsProperty {..}
    = NodeCountsProperty {totalAttributes = Prelude.pure newValue, ..}
instance Property "TotalBranches" NodeCountsProperty where
  type PropertyType "TotalBranches" NodeCountsProperty = Value Prelude.Double
  set newValue NodeCountsProperty {..}
    = NodeCountsProperty {totalBranches = Prelude.pure newValue, ..}
instance Property "TotalNodes" NodeCountsProperty where
  type PropertyType "TotalNodes" NodeCountsProperty = Value Prelude.Double
  set newValue NodeCountsProperty {..}
    = NodeCountsProperty {totalNodes = Prelude.pure newValue, ..}
instance Property "TotalSensors" NodeCountsProperty where
  type PropertyType "TotalSensors" NodeCountsProperty = Value Prelude.Double
  set newValue NodeCountsProperty {..}
    = NodeCountsProperty {totalSensors = Prelude.pure newValue, ..}