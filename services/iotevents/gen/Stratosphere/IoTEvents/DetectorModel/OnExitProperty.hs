module Stratosphere.IoTEvents.DetectorModel.OnExitProperty (
        module Exports, OnExitProperty(..), mkOnExitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.EventProperty as Exports
import Stratosphere.ResourceProperties
data OnExitProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html>
    OnExitProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html#cfn-iotevents-detectormodel-onexit-events>
                    events :: (Prelude.Maybe [EventProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnExitProperty :: OnExitProperty
mkOnExitProperty
  = OnExitProperty
      {haddock_workaround_ = (), events = Prelude.Nothing}
instance ToResourceProperties OnExitProperty where
  toResourceProperties OnExitProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.OnExit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events])}
instance JSON.ToJSON OnExitProperty where
  toJSON OnExitProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events]))
instance Property "Events" OnExitProperty where
  type PropertyType "Events" OnExitProperty = [EventProperty]
  set newValue OnExitProperty {..}
    = OnExitProperty {events = Prelude.pure newValue, ..}