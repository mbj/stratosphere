module Stratosphere.IoTEvents.DetectorModel.OnEnterProperty (
        module Exports, OnEnterProperty(..), mkOnEnterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.EventProperty as Exports
import Stratosphere.ResourceProperties
data OnEnterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html>
    OnEnterProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html#cfn-iotevents-detectormodel-onenter-events>
                     events :: (Prelude.Maybe [EventProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnEnterProperty :: OnEnterProperty
mkOnEnterProperty
  = OnEnterProperty
      {haddock_workaround_ = (), events = Prelude.Nothing}
instance ToResourceProperties OnEnterProperty where
  toResourceProperties OnEnterProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.OnEnter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events])}
instance JSON.ToJSON OnEnterProperty where
  toJSON OnEnterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events]))
instance Property "Events" OnEnterProperty where
  type PropertyType "Events" OnEnterProperty = [EventProperty]
  set newValue OnEnterProperty {..}
    = OnEnterProperty {events = Prelude.pure newValue, ..}