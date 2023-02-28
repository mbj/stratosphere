module Stratosphere.LookoutMetrics.Alert (
        module Exports, Alert(..), mkAlert
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.Alert.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alert
  = Alert {action :: ActionProperty,
           alertDescription :: (Prelude.Maybe (Value Prelude.Text)),
           alertName :: (Prelude.Maybe (Value Prelude.Text)),
           alertSensitivityThreshold :: (Value Prelude.Integer),
           anomalyDetectorArn :: (Value Prelude.Text)}
mkAlert ::
  ActionProperty
  -> Value Prelude.Integer -> Value Prelude.Text -> Alert
mkAlert action alertSensitivityThreshold anomalyDetectorArn
  = Alert
      {action = action,
       alertSensitivityThreshold = alertSensitivityThreshold,
       anomalyDetectorArn = anomalyDetectorArn,
       alertDescription = Prelude.Nothing, alertName = Prelude.Nothing}
instance ToResourceProperties Alert where
  toResourceProperties Alert {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::Alert",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action,
                            "AlertSensitivityThreshold" JSON..= alertSensitivityThreshold,
                            "AnomalyDetectorArn" JSON..= anomalyDetectorArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AlertDescription" Prelude.<$> alertDescription,
                               (JSON..=) "AlertName" Prelude.<$> alertName]))}
instance JSON.ToJSON Alert where
  toJSON Alert {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action,
               "AlertSensitivityThreshold" JSON..= alertSensitivityThreshold,
               "AnomalyDetectorArn" JSON..= anomalyDetectorArn]
              (Prelude.catMaybes
                 [(JSON..=) "AlertDescription" Prelude.<$> alertDescription,
                  (JSON..=) "AlertName" Prelude.<$> alertName])))
instance Property "Action" Alert where
  type PropertyType "Action" Alert = ActionProperty
  set newValue Alert {..} = Alert {action = newValue, ..}
instance Property "AlertDescription" Alert where
  type PropertyType "AlertDescription" Alert = Value Prelude.Text
  set newValue Alert {..}
    = Alert {alertDescription = Prelude.pure newValue, ..}
instance Property "AlertName" Alert where
  type PropertyType "AlertName" Alert = Value Prelude.Text
  set newValue Alert {..}
    = Alert {alertName = Prelude.pure newValue, ..}
instance Property "AlertSensitivityThreshold" Alert where
  type PropertyType "AlertSensitivityThreshold" Alert = Value Prelude.Integer
  set newValue Alert {..}
    = Alert {alertSensitivityThreshold = newValue, ..}
instance Property "AnomalyDetectorArn" Alert where
  type PropertyType "AnomalyDetectorArn" Alert = Value Prelude.Text
  set newValue Alert {..} = Alert {anomalyDetectorArn = newValue, ..}