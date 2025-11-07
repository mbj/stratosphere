module Stratosphere.Lex.Bot.SpecificationsProperty (
        module Exports, SpecificationsProperty(..),
        mkSpecificationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SubSlotValueElicitationSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpecificationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-specifications.html>
    SpecificationsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-specifications.html#cfn-lex-bot-specifications-slottypeid>
                            slotTypeId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-specifications.html#cfn-lex-bot-specifications-valueelicitationsetting>
                            valueElicitationSetting :: SubSlotValueElicitationSettingProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpecificationsProperty ::
  Value Prelude.Text
  -> SubSlotValueElicitationSettingProperty -> SpecificationsProperty
mkSpecificationsProperty slotTypeId valueElicitationSetting
  = SpecificationsProperty
      {haddock_workaround_ = (), slotTypeId = slotTypeId,
       valueElicitationSetting = valueElicitationSetting}
instance ToResourceProperties SpecificationsProperty where
  toResourceProperties SpecificationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Specifications",
         supportsTags = Prelude.False,
         properties = ["SlotTypeId" JSON..= slotTypeId,
                       "ValueElicitationSetting" JSON..= valueElicitationSetting]}
instance JSON.ToJSON SpecificationsProperty where
  toJSON SpecificationsProperty {..}
    = JSON.object
        ["SlotTypeId" JSON..= slotTypeId,
         "ValueElicitationSetting" JSON..= valueElicitationSetting]
instance Property "SlotTypeId" SpecificationsProperty where
  type PropertyType "SlotTypeId" SpecificationsProperty = Value Prelude.Text
  set newValue SpecificationsProperty {..}
    = SpecificationsProperty {slotTypeId = newValue, ..}
instance Property "ValueElicitationSetting" SpecificationsProperty where
  type PropertyType "ValueElicitationSetting" SpecificationsProperty = SubSlotValueElicitationSettingProperty
  set newValue SpecificationsProperty {..}
    = SpecificationsProperty {valueElicitationSetting = newValue, ..}