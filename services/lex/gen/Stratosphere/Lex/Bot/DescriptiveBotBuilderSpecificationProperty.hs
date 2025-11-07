module Stratosphere.Lex.Bot.DescriptiveBotBuilderSpecificationProperty (
        module Exports, DescriptiveBotBuilderSpecificationProperty(..),
        mkDescriptiveBotBuilderSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockModelSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DescriptiveBotBuilderSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-descriptivebotbuilderspecification.html>
    DescriptiveBotBuilderSpecificationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-descriptivebotbuilderspecification.html#cfn-lex-bot-descriptivebotbuilderspecification-bedrockmodelspecification>
                                                bedrockModelSpecification :: (Prelude.Maybe BedrockModelSpecificationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-descriptivebotbuilderspecification.html#cfn-lex-bot-descriptivebotbuilderspecification-enabled>
                                                enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDescriptiveBotBuilderSpecificationProperty ::
  Value Prelude.Bool -> DescriptiveBotBuilderSpecificationProperty
mkDescriptiveBotBuilderSpecificationProperty enabled
  = DescriptiveBotBuilderSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled,
       bedrockModelSpecification = Prelude.Nothing}
instance ToResourceProperties DescriptiveBotBuilderSpecificationProperty where
  toResourceProperties
    DescriptiveBotBuilderSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DescriptiveBotBuilderSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockModelSpecification"
                                 Prelude.<$> bedrockModelSpecification]))}
instance JSON.ToJSON DescriptiveBotBuilderSpecificationProperty where
  toJSON DescriptiveBotBuilderSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "BedrockModelSpecification"
                    Prelude.<$> bedrockModelSpecification])))
instance Property "BedrockModelSpecification" DescriptiveBotBuilderSpecificationProperty where
  type PropertyType "BedrockModelSpecification" DescriptiveBotBuilderSpecificationProperty = BedrockModelSpecificationProperty
  set newValue DescriptiveBotBuilderSpecificationProperty {..}
    = DescriptiveBotBuilderSpecificationProperty
        {bedrockModelSpecification = Prelude.pure newValue, ..}
instance Property "Enabled" DescriptiveBotBuilderSpecificationProperty where
  type PropertyType "Enabled" DescriptiveBotBuilderSpecificationProperty = Value Prelude.Bool
  set newValue DescriptiveBotBuilderSpecificationProperty {..}
    = DescriptiveBotBuilderSpecificationProperty
        {enabled = newValue, ..}