module Stratosphere.CE.AnomalyMonitor (
        module Exports, AnomalyMonitor(..), mkAnomalyMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CE.AnomalyMonitor.ResourceTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalyMonitor
  = AnomalyMonitor {monitorDimension :: (Prelude.Maybe (Value Prelude.Text)),
                    monitorName :: (Value Prelude.Text),
                    monitorSpecification :: (Prelude.Maybe (Value Prelude.Text)),
                    monitorType :: (Value Prelude.Text),
                    resourceTags :: (Prelude.Maybe [ResourceTagProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalyMonitor ::
  Value Prelude.Text -> Value Prelude.Text -> AnomalyMonitor
mkAnomalyMonitor monitorName monitorType
  = AnomalyMonitor
      {monitorName = monitorName, monitorType = monitorType,
       monitorDimension = Prelude.Nothing,
       monitorSpecification = Prelude.Nothing,
       resourceTags = Prelude.Nothing}
instance ToResourceProperties AnomalyMonitor where
  toResourceProperties AnomalyMonitor {..}
    = ResourceProperties
        {awsType = "AWS::CE::AnomalyMonitor", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MonitorName" JSON..= monitorName,
                            "MonitorType" JSON..= monitorType]
                           (Prelude.catMaybes
                              [(JSON..=) "MonitorDimension" Prelude.<$> monitorDimension,
                               (JSON..=) "MonitorSpecification" Prelude.<$> monitorSpecification,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags]))}
instance JSON.ToJSON AnomalyMonitor where
  toJSON AnomalyMonitor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MonitorName" JSON..= monitorName,
               "MonitorType" JSON..= monitorType]
              (Prelude.catMaybes
                 [(JSON..=) "MonitorDimension" Prelude.<$> monitorDimension,
                  (JSON..=) "MonitorSpecification" Prelude.<$> monitorSpecification,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags])))
instance Property "MonitorDimension" AnomalyMonitor where
  type PropertyType "MonitorDimension" AnomalyMonitor = Value Prelude.Text
  set newValue AnomalyMonitor {..}
    = AnomalyMonitor {monitorDimension = Prelude.pure newValue, ..}
instance Property "MonitorName" AnomalyMonitor where
  type PropertyType "MonitorName" AnomalyMonitor = Value Prelude.Text
  set newValue AnomalyMonitor {..}
    = AnomalyMonitor {monitorName = newValue, ..}
instance Property "MonitorSpecification" AnomalyMonitor where
  type PropertyType "MonitorSpecification" AnomalyMonitor = Value Prelude.Text
  set newValue AnomalyMonitor {..}
    = AnomalyMonitor {monitorSpecification = Prelude.pure newValue, ..}
instance Property "MonitorType" AnomalyMonitor where
  type PropertyType "MonitorType" AnomalyMonitor = Value Prelude.Text
  set newValue AnomalyMonitor {..}
    = AnomalyMonitor {monitorType = newValue, ..}
instance Property "ResourceTags" AnomalyMonitor where
  type PropertyType "ResourceTags" AnomalyMonitor = [ResourceTagProperty]
  set newValue AnomalyMonitor {..}
    = AnomalyMonitor {resourceTags = Prelude.pure newValue, ..}