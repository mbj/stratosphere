module Stratosphere.DLM.LifecyclePolicy.EventParametersProperty (
        EventParametersProperty(..), mkEventParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventParametersProperty
  = EventParametersProperty {descriptionRegex :: (Prelude.Maybe (Value Prelude.Text)),
                             eventType :: (Value Prelude.Text),
                             snapshotOwner :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventParametersProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> EventParametersProperty
mkEventParametersProperty eventType snapshotOwner
  = EventParametersProperty
      {eventType = eventType, snapshotOwner = snapshotOwner,
       descriptionRegex = Prelude.Nothing}
instance ToResourceProperties EventParametersProperty where
  toResourceProperties EventParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.EventParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventType" JSON..= eventType,
                            "SnapshotOwner" JSON..= snapshotOwner]
                           (Prelude.catMaybes
                              [(JSON..=) "DescriptionRegex" Prelude.<$> descriptionRegex]))}
instance JSON.ToJSON EventParametersProperty where
  toJSON EventParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventType" JSON..= eventType,
               "SnapshotOwner" JSON..= snapshotOwner]
              (Prelude.catMaybes
                 [(JSON..=) "DescriptionRegex" Prelude.<$> descriptionRegex])))
instance Property "DescriptionRegex" EventParametersProperty where
  type PropertyType "DescriptionRegex" EventParametersProperty = Value Prelude.Text
  set newValue EventParametersProperty {..}
    = EventParametersProperty
        {descriptionRegex = Prelude.pure newValue, ..}
instance Property "EventType" EventParametersProperty where
  type PropertyType "EventType" EventParametersProperty = Value Prelude.Text
  set newValue EventParametersProperty {..}
    = EventParametersProperty {eventType = newValue, ..}
instance Property "SnapshotOwner" EventParametersProperty where
  type PropertyType "SnapshotOwner" EventParametersProperty = ValueList Prelude.Text
  set newValue EventParametersProperty {..}
    = EventParametersProperty {snapshotOwner = newValue, ..}