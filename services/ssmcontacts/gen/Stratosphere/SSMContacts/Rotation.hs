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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html>
    Rotation {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html#cfn-ssmcontacts-rotation-contactids>
              contactIds :: (ValueList Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html#cfn-ssmcontacts-rotation-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html#cfn-ssmcontacts-rotation-recurrence>
              recurrence :: RecurrenceSettingsProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html#cfn-ssmcontacts-rotation-starttime>
              startTime :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html#cfn-ssmcontacts-rotation-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-rotation.html#cfn-ssmcontacts-rotation-timezoneid>
              timeZoneId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRotation ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> RecurrenceSettingsProperty
        -> Value Prelude.Text -> Value Prelude.Text -> Rotation
mkRotation contactIds name recurrence startTime timeZoneId
  = Rotation
      {haddock_workaround_ = (), contactIds = contactIds, name = name,
       recurrence = recurrence, startTime = startTime,
       timeZoneId = timeZoneId, tags = Prelude.Nothing}
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