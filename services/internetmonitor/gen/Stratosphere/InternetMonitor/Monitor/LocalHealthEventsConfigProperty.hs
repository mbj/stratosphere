module Stratosphere.InternetMonitor.Monitor.LocalHealthEventsConfigProperty (
        LocalHealthEventsConfigProperty(..),
        mkLocalHealthEventsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalHealthEventsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-localhealtheventsconfig.html>
    LocalHealthEventsConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-localhealtheventsconfig.html#cfn-internetmonitor-monitor-localhealtheventsconfig-healthscorethreshold>
                                     healthScoreThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-localhealtheventsconfig.html#cfn-internetmonitor-monitor-localhealtheventsconfig-mintrafficimpact>
                                     minTrafficImpact :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-localhealtheventsconfig.html#cfn-internetmonitor-monitor-localhealtheventsconfig-status>
                                     status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalHealthEventsConfigProperty ::
  LocalHealthEventsConfigProperty
mkLocalHealthEventsConfigProperty
  = LocalHealthEventsConfigProperty
      {haddock_workaround_ = (), healthScoreThreshold = Prelude.Nothing,
       minTrafficImpact = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties LocalHealthEventsConfigProperty where
  toResourceProperties LocalHealthEventsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::InternetMonitor::Monitor.LocalHealthEventsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HealthScoreThreshold" Prelude.<$> healthScoreThreshold,
                            (JSON..=) "MinTrafficImpact" Prelude.<$> minTrafficImpact,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON LocalHealthEventsConfigProperty where
  toJSON LocalHealthEventsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HealthScoreThreshold" Prelude.<$> healthScoreThreshold,
               (JSON..=) "MinTrafficImpact" Prelude.<$> minTrafficImpact,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "HealthScoreThreshold" LocalHealthEventsConfigProperty where
  type PropertyType "HealthScoreThreshold" LocalHealthEventsConfigProperty = Value Prelude.Double
  set newValue LocalHealthEventsConfigProperty {..}
    = LocalHealthEventsConfigProperty
        {healthScoreThreshold = Prelude.pure newValue, ..}
instance Property "MinTrafficImpact" LocalHealthEventsConfigProperty where
  type PropertyType "MinTrafficImpact" LocalHealthEventsConfigProperty = Value Prelude.Double
  set newValue LocalHealthEventsConfigProperty {..}
    = LocalHealthEventsConfigProperty
        {minTrafficImpact = Prelude.pure newValue, ..}
instance Property "Status" LocalHealthEventsConfigProperty where
  type PropertyType "Status" LocalHealthEventsConfigProperty = Value Prelude.Text
  set newValue LocalHealthEventsConfigProperty {..}
    = LocalHealthEventsConfigProperty
        {status = Prelude.pure newValue, ..}