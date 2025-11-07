module Stratosphere.Lex.Bot.BuildtimeSettingsProperty (
        module Exports, BuildtimeSettingsProperty(..),
        mkBuildtimeSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.DescriptiveBotBuilderSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SampleUtteranceGenerationSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data BuildtimeSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-buildtimesettings.html>
    BuildtimeSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-buildtimesettings.html#cfn-lex-bot-buildtimesettings-descriptivebotbuilderspecification>
                               descriptiveBotBuilderSpecification :: (Prelude.Maybe DescriptiveBotBuilderSpecificationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-buildtimesettings.html#cfn-lex-bot-buildtimesettings-sampleutterancegenerationspecification>
                               sampleUtteranceGenerationSpecification :: (Prelude.Maybe SampleUtteranceGenerationSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBuildtimeSettingsProperty :: BuildtimeSettingsProperty
mkBuildtimeSettingsProperty
  = BuildtimeSettingsProperty
      {haddock_workaround_ = (),
       descriptiveBotBuilderSpecification = Prelude.Nothing,
       sampleUtteranceGenerationSpecification = Prelude.Nothing}
instance ToResourceProperties BuildtimeSettingsProperty where
  toResourceProperties BuildtimeSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BuildtimeSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DescriptiveBotBuilderSpecification"
                              Prelude.<$> descriptiveBotBuilderSpecification,
                            (JSON..=) "SampleUtteranceGenerationSpecification"
                              Prelude.<$> sampleUtteranceGenerationSpecification])}
instance JSON.ToJSON BuildtimeSettingsProperty where
  toJSON BuildtimeSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DescriptiveBotBuilderSpecification"
                 Prelude.<$> descriptiveBotBuilderSpecification,
               (JSON..=) "SampleUtteranceGenerationSpecification"
                 Prelude.<$> sampleUtteranceGenerationSpecification]))
instance Property "DescriptiveBotBuilderSpecification" BuildtimeSettingsProperty where
  type PropertyType "DescriptiveBotBuilderSpecification" BuildtimeSettingsProperty = DescriptiveBotBuilderSpecificationProperty
  set newValue BuildtimeSettingsProperty {..}
    = BuildtimeSettingsProperty
        {descriptiveBotBuilderSpecification = Prelude.pure newValue, ..}
instance Property "SampleUtteranceGenerationSpecification" BuildtimeSettingsProperty where
  type PropertyType "SampleUtteranceGenerationSpecification" BuildtimeSettingsProperty = SampleUtteranceGenerationSpecificationProperty
  set newValue BuildtimeSettingsProperty {..}
    = BuildtimeSettingsProperty
        {sampleUtteranceGenerationSpecification = Prelude.pure newValue,
         ..}