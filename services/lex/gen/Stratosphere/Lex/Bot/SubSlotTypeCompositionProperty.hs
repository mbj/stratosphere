module Stratosphere.Lex.Bot.SubSlotTypeCompositionProperty (
        SubSlotTypeCompositionProperty(..),
        mkSubSlotTypeCompositionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubSlotTypeCompositionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslottypecomposition.html>
    SubSlotTypeCompositionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslottypecomposition.html#cfn-lex-bot-subslottypecomposition-name>
                                    name :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslottypecomposition.html#cfn-lex-bot-subslottypecomposition-slottypeid>
                                    slotTypeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubSlotTypeCompositionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubSlotTypeCompositionProperty
mkSubSlotTypeCompositionProperty name slotTypeId
  = SubSlotTypeCompositionProperty
      {haddock_workaround_ = (), name = name, slotTypeId = slotTypeId}
instance ToResourceProperties SubSlotTypeCompositionProperty where
  toResourceProperties SubSlotTypeCompositionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SubSlotTypeComposition",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "SlotTypeId" JSON..= slotTypeId]}
instance JSON.ToJSON SubSlotTypeCompositionProperty where
  toJSON SubSlotTypeCompositionProperty {..}
    = JSON.object
        ["Name" JSON..= name, "SlotTypeId" JSON..= slotTypeId]
instance Property "Name" SubSlotTypeCompositionProperty where
  type PropertyType "Name" SubSlotTypeCompositionProperty = Value Prelude.Text
  set newValue SubSlotTypeCompositionProperty {..}
    = SubSlotTypeCompositionProperty {name = newValue, ..}
instance Property "SlotTypeId" SubSlotTypeCompositionProperty where
  type PropertyType "SlotTypeId" SubSlotTypeCompositionProperty = Value Prelude.Text
  set newValue SubSlotTypeCompositionProperty {..}
    = SubSlotTypeCompositionProperty {slotTypeId = newValue, ..}