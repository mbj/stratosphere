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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-alert.html>
    Alert {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-alert.html#cfn-lookoutmetrics-alert-action>
           action :: ActionProperty,
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-alert.html#cfn-lookoutmetrics-alert-alertdescription>
           alertDescription :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-alert.html#cfn-lookoutmetrics-alert-alertname>
           alertName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-alert.html#cfn-lookoutmetrics-alert-alertsensitivitythreshold>
           alertSensitivityThreshold :: (Value Prelude.Integer),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-alert.html#cfn-lookoutmetrics-alert-anomalydetectorarn>
           anomalyDetectorArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlert ::
  ActionProperty
  -> Value Prelude.Integer -> Value Prelude.Text -> Alert
mkAlert action alertSensitivityThreshold anomalyDetectorArn
  = Alert
      {haddock_workaround_ = (), action = action,
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