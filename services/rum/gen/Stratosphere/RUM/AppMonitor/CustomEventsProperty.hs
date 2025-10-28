module Stratosphere.RUM.AppMonitor.CustomEventsProperty (
        CustomEventsProperty(..), mkCustomEventsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomEventsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-customevents.html>
    CustomEventsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-customevents.html#cfn-rum-appmonitor-customevents-status>
                          status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomEventsProperty :: CustomEventsProperty
mkCustomEventsProperty
  = CustomEventsProperty
      {haddock_workaround_ = (), status = Prelude.Nothing}
instance ToResourceProperties CustomEventsProperty where
  toResourceProperties CustomEventsProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.CustomEvents",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON CustomEventsProperty where
  toJSON CustomEventsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))
instance Property "Status" CustomEventsProperty where
  type PropertyType "Status" CustomEventsProperty = Value Prelude.Text
  set newValue CustomEventsProperty {..}
    = CustomEventsProperty {status = Prelude.pure newValue, ..}