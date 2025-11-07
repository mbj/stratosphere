module Stratosphere.Lex.Bot.SampleUtteranceGenerationSpecificationProperty (
        module Exports, SampleUtteranceGenerationSpecificationProperty(..),
        mkSampleUtteranceGenerationSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockModelSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleUtteranceGenerationSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sampleutterancegenerationspecification.html>
    SampleUtteranceGenerationSpecificationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sampleutterancegenerationspecification.html#cfn-lex-bot-sampleutterancegenerationspecification-bedrockmodelspecification>
                                                    bedrockModelSpecification :: (Prelude.Maybe BedrockModelSpecificationProperty),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sampleutterancegenerationspecification.html#cfn-lex-bot-sampleutterancegenerationspecification-enabled>
                                                    enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSampleUtteranceGenerationSpecificationProperty ::
  Value Prelude.Bool
  -> SampleUtteranceGenerationSpecificationProperty
mkSampleUtteranceGenerationSpecificationProperty enabled
  = SampleUtteranceGenerationSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled,
       bedrockModelSpecification = Prelude.Nothing}
instance ToResourceProperties SampleUtteranceGenerationSpecificationProperty where
  toResourceProperties
    SampleUtteranceGenerationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SampleUtteranceGenerationSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockModelSpecification"
                                 Prelude.<$> bedrockModelSpecification]))}
instance JSON.ToJSON SampleUtteranceGenerationSpecificationProperty where
  toJSON SampleUtteranceGenerationSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "BedrockModelSpecification"
                    Prelude.<$> bedrockModelSpecification])))
instance Property "BedrockModelSpecification" SampleUtteranceGenerationSpecificationProperty where
  type PropertyType "BedrockModelSpecification" SampleUtteranceGenerationSpecificationProperty = BedrockModelSpecificationProperty
  set newValue SampleUtteranceGenerationSpecificationProperty {..}
    = SampleUtteranceGenerationSpecificationProperty
        {bedrockModelSpecification = Prelude.pure newValue, ..}
instance Property "Enabled" SampleUtteranceGenerationSpecificationProperty where
  type PropertyType "Enabled" SampleUtteranceGenerationSpecificationProperty = Value Prelude.Bool
  set newValue SampleUtteranceGenerationSpecificationProperty {..}
    = SampleUtteranceGenerationSpecificationProperty
        {enabled = newValue, ..}