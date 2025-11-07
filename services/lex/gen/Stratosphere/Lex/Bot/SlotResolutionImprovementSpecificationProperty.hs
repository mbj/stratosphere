module Stratosphere.Lex.Bot.SlotResolutionImprovementSpecificationProperty (
        module Exports, SlotResolutionImprovementSpecificationProperty(..),
        mkSlotResolutionImprovementSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockModelSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotResolutionImprovementSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotresolutionimprovementspecification.html>
    SlotResolutionImprovementSpecificationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotresolutionimprovementspecification.html#cfn-lex-bot-slotresolutionimprovementspecification-bedrockmodelspecification>
                                                    bedrockModelSpecification :: (Prelude.Maybe BedrockModelSpecificationProperty),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotresolutionimprovementspecification.html#cfn-lex-bot-slotresolutionimprovementspecification-enabled>
                                                    enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotResolutionImprovementSpecificationProperty ::
  Value Prelude.Bool
  -> SlotResolutionImprovementSpecificationProperty
mkSlotResolutionImprovementSpecificationProperty enabled
  = SlotResolutionImprovementSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled,
       bedrockModelSpecification = Prelude.Nothing}
instance ToResourceProperties SlotResolutionImprovementSpecificationProperty where
  toResourceProperties
    SlotResolutionImprovementSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotResolutionImprovementSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockModelSpecification"
                                 Prelude.<$> bedrockModelSpecification]))}
instance JSON.ToJSON SlotResolutionImprovementSpecificationProperty where
  toJSON SlotResolutionImprovementSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "BedrockModelSpecification"
                    Prelude.<$> bedrockModelSpecification])))
instance Property "BedrockModelSpecification" SlotResolutionImprovementSpecificationProperty where
  type PropertyType "BedrockModelSpecification" SlotResolutionImprovementSpecificationProperty = BedrockModelSpecificationProperty
  set newValue SlotResolutionImprovementSpecificationProperty {..}
    = SlotResolutionImprovementSpecificationProperty
        {bedrockModelSpecification = Prelude.pure newValue, ..}
instance Property "Enabled" SlotResolutionImprovementSpecificationProperty where
  type PropertyType "Enabled" SlotResolutionImprovementSpecificationProperty = Value Prelude.Bool
  set newValue SlotResolutionImprovementSpecificationProperty {..}
    = SlotResolutionImprovementSpecificationProperty
        {enabled = newValue, ..}