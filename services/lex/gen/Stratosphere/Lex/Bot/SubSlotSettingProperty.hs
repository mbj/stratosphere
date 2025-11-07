module Stratosphere.Lex.Bot.SubSlotSettingProperty (
        module Exports, SubSlotSettingProperty(..),
        mkSubSlotSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SpecificationsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubSlotSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotsetting.html>
    SubSlotSettingProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotsetting.html#cfn-lex-bot-subslotsetting-expression>
                            expression :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotsetting.html#cfn-lex-bot-subslotsetting-slotspecifications>
                            slotSpecifications :: (Prelude.Maybe (Prelude.Map Prelude.Text SpecificationsProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubSlotSettingProperty :: SubSlotSettingProperty
mkSubSlotSettingProperty
  = SubSlotSettingProperty
      {haddock_workaround_ = (), expression = Prelude.Nothing,
       slotSpecifications = Prelude.Nothing}
instance ToResourceProperties SubSlotSettingProperty where
  toResourceProperties SubSlotSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SubSlotSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Expression" Prelude.<$> expression,
                            (JSON..=) "SlotSpecifications" Prelude.<$> slotSpecifications])}
instance JSON.ToJSON SubSlotSettingProperty where
  toJSON SubSlotSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Expression" Prelude.<$> expression,
               (JSON..=) "SlotSpecifications" Prelude.<$> slotSpecifications]))
instance Property "Expression" SubSlotSettingProperty where
  type PropertyType "Expression" SubSlotSettingProperty = Value Prelude.Text
  set newValue SubSlotSettingProperty {..}
    = SubSlotSettingProperty {expression = Prelude.pure newValue, ..}
instance Property "SlotSpecifications" SubSlotSettingProperty where
  type PropertyType "SlotSpecifications" SubSlotSettingProperty = Prelude.Map Prelude.Text SpecificationsProperty
  set newValue SubSlotSettingProperty {..}
    = SubSlotSettingProperty
        {slotSpecifications = Prelude.pure newValue, ..}