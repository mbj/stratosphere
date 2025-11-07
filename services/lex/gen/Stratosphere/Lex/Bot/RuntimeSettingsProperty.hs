module Stratosphere.Lex.Bot.RuntimeSettingsProperty (
        module Exports, RuntimeSettingsProperty(..),
        mkRuntimeSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.NluImprovementSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotResolutionImprovementSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data RuntimeSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-runtimesettings.html>
    RuntimeSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-runtimesettings.html#cfn-lex-bot-runtimesettings-nluimprovementspecification>
                             nluImprovementSpecification :: (Prelude.Maybe NluImprovementSpecificationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-runtimesettings.html#cfn-lex-bot-runtimesettings-slotresolutionimprovementspecification>
                             slotResolutionImprovementSpecification :: (Prelude.Maybe SlotResolutionImprovementSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntimeSettingsProperty :: RuntimeSettingsProperty
mkRuntimeSettingsProperty
  = RuntimeSettingsProperty
      {haddock_workaround_ = (),
       nluImprovementSpecification = Prelude.Nothing,
       slotResolutionImprovementSpecification = Prelude.Nothing}
instance ToResourceProperties RuntimeSettingsProperty where
  toResourceProperties RuntimeSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.RuntimeSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NluImprovementSpecification"
                              Prelude.<$> nluImprovementSpecification,
                            (JSON..=) "SlotResolutionImprovementSpecification"
                              Prelude.<$> slotResolutionImprovementSpecification])}
instance JSON.ToJSON RuntimeSettingsProperty where
  toJSON RuntimeSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NluImprovementSpecification"
                 Prelude.<$> nluImprovementSpecification,
               (JSON..=) "SlotResolutionImprovementSpecification"
                 Prelude.<$> slotResolutionImprovementSpecification]))
instance Property "NluImprovementSpecification" RuntimeSettingsProperty where
  type PropertyType "NluImprovementSpecification" RuntimeSettingsProperty = NluImprovementSpecificationProperty
  set newValue RuntimeSettingsProperty {..}
    = RuntimeSettingsProperty
        {nluImprovementSpecification = Prelude.pure newValue, ..}
instance Property "SlotResolutionImprovementSpecification" RuntimeSettingsProperty where
  type PropertyType "SlotResolutionImprovementSpecification" RuntimeSettingsProperty = SlotResolutionImprovementSpecificationProperty
  set newValue RuntimeSettingsProperty {..}
    = RuntimeSettingsProperty
        {slotResolutionImprovementSpecification = Prelude.pure newValue,
         ..}