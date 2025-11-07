module Stratosphere.ODB.CloudVmCluster.DataCollectionOptionsProperty (
        DataCollectionOptionsProperty(..), mkDataCollectionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCollectionOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-datacollectionoptions.html>
    DataCollectionOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-datacollectionoptions.html#cfn-odb-cloudvmcluster-datacollectionoptions-isdiagnosticseventsenabled>
                                   isDiagnosticsEventsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-datacollectionoptions.html#cfn-odb-cloudvmcluster-datacollectionoptions-ishealthmonitoringenabled>
                                   isHealthMonitoringEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-datacollectionoptions.html#cfn-odb-cloudvmcluster-datacollectionoptions-isincidentlogsenabled>
                                   isIncidentLogsEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCollectionOptionsProperty :: DataCollectionOptionsProperty
mkDataCollectionOptionsProperty
  = DataCollectionOptionsProperty
      {haddock_workaround_ = (),
       isDiagnosticsEventsEnabled = Prelude.Nothing,
       isHealthMonitoringEnabled = Prelude.Nothing,
       isIncidentLogsEnabled = Prelude.Nothing}
instance ToResourceProperties DataCollectionOptionsProperty where
  toResourceProperties DataCollectionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudVmCluster.DataCollectionOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsDiagnosticsEventsEnabled"
                              Prelude.<$> isDiagnosticsEventsEnabled,
                            (JSON..=) "IsHealthMonitoringEnabled"
                              Prelude.<$> isHealthMonitoringEnabled,
                            (JSON..=) "IsIncidentLogsEnabled"
                              Prelude.<$> isIncidentLogsEnabled])}
instance JSON.ToJSON DataCollectionOptionsProperty where
  toJSON DataCollectionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsDiagnosticsEventsEnabled"
                 Prelude.<$> isDiagnosticsEventsEnabled,
               (JSON..=) "IsHealthMonitoringEnabled"
                 Prelude.<$> isHealthMonitoringEnabled,
               (JSON..=) "IsIncidentLogsEnabled"
                 Prelude.<$> isIncidentLogsEnabled]))
instance Property "IsDiagnosticsEventsEnabled" DataCollectionOptionsProperty where
  type PropertyType "IsDiagnosticsEventsEnabled" DataCollectionOptionsProperty = Value Prelude.Bool
  set newValue DataCollectionOptionsProperty {..}
    = DataCollectionOptionsProperty
        {isDiagnosticsEventsEnabled = Prelude.pure newValue, ..}
instance Property "IsHealthMonitoringEnabled" DataCollectionOptionsProperty where
  type PropertyType "IsHealthMonitoringEnabled" DataCollectionOptionsProperty = Value Prelude.Bool
  set newValue DataCollectionOptionsProperty {..}
    = DataCollectionOptionsProperty
        {isHealthMonitoringEnabled = Prelude.pure newValue, ..}
instance Property "IsIncidentLogsEnabled" DataCollectionOptionsProperty where
  type PropertyType "IsIncidentLogsEnabled" DataCollectionOptionsProperty = Value Prelude.Bool
  set newValue DataCollectionOptionsProperty {..}
    = DataCollectionOptionsProperty
        {isIncidentLogsEnabled = Prelude.pure newValue, ..}