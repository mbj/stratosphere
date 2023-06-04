module Stratosphere.SSMContacts.Rotation (
        module Exports, Rotation(..), mkRotation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Rotation.RecurrenceSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Rotation
  = Rotation {contactIds :: (ValueList Prelude.Text),
              name :: (Value Prelude.Text),
              recurrence :: RecurrenceSettingsProperty,
              startTime :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag]),
              timeZoneId :: (Value Prelude.Text)}
mkRotation ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> RecurrenceSettingsProperty
        -> Value Prelude.Text -> Value Prelude.Text -> Rotation
mkRotation contactIds name recurrence startTime timeZoneId
  = Rotation
      {contactIds = contactIds, name = name, recurrence = recurrence,
       startTime = startTime, timeZoneId = timeZoneId,
       tags = Prelude.Nothing}
instance ToResourceProperties Rotation where
  toResourceProperties Rotation {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Rotation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContactIds" JSON..= contactIds, "Name" JSON..= name,
                            "Recurrence" JSON..= recurrence, "StartTime" JSON..= startTime,
                            "TimeZoneId" JSON..= timeZoneId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Rotation where
  toJSON Rotation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContactIds" JSON..= contactIds, "Name" JSON..= name,
               "Recurrence" JSON..= recurrence, "StartTime" JSON..= startTime,
               "TimeZoneId" JSON..= timeZoneId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContactIds" Rotation where
  type PropertyType "ContactIds" Rotation = ValueList Prelude.Text
  set newValue Rotation {..} = Rotation {contactIds = newValue, ..}
instance Property "Name" Rotation where
  type PropertyType "Name" Rotation = Value Prelude.Text
  set newValue Rotation {..} = Rotation {name = newValue, ..}
instance Property "Recurrence" Rotation where
  type PropertyType "Recurrence" Rotation = RecurrenceSettingsProperty
  set newValue Rotation {..} = Rotation {recurrence = newValue, ..}
instance Property "StartTime" Rotation where
  type PropertyType "StartTime" Rotation = Value Prelude.Text
  set newValue Rotation {..} = Rotation {startTime = newValue, ..}
instance Property "Tags" Rotation where
  type PropertyType "Tags" Rotation = [Tag]
  set newValue Rotation {..}
    = Rotation {tags = Prelude.pure newValue, ..}
instance Property "TimeZoneId" Rotation where
  type PropertyType "TimeZoneId" Rotation = Value Prelude.Text
  set newValue Rotation {..} = Rotation {timeZoneId = newValue, ..}