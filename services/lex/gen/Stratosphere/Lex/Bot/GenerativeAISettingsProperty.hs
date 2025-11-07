module Stratosphere.Lex.Bot.GenerativeAISettingsProperty (
        module Exports, GenerativeAISettingsProperty(..),
        mkGenerativeAISettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BuildtimeSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.RuntimeSettingsProperty as Exports
import Stratosphere.ResourceProperties
data GenerativeAISettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-generativeaisettings.html>
    GenerativeAISettingsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-generativeaisettings.html#cfn-lex-bot-generativeaisettings-buildtimesettings>
                                  buildtimeSettings :: (Prelude.Maybe BuildtimeSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-generativeaisettings.html#cfn-lex-bot-generativeaisettings-runtimesettings>
                                  runtimeSettings :: (Prelude.Maybe RuntimeSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGenerativeAISettingsProperty :: GenerativeAISettingsProperty
mkGenerativeAISettingsProperty
  = GenerativeAISettingsProperty
      {haddock_workaround_ = (), buildtimeSettings = Prelude.Nothing,
       runtimeSettings = Prelude.Nothing}
instance ToResourceProperties GenerativeAISettingsProperty where
  toResourceProperties GenerativeAISettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.GenerativeAISettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BuildtimeSettings" Prelude.<$> buildtimeSettings,
                            (JSON..=) "RuntimeSettings" Prelude.<$> runtimeSettings])}
instance JSON.ToJSON GenerativeAISettingsProperty where
  toJSON GenerativeAISettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BuildtimeSettings" Prelude.<$> buildtimeSettings,
               (JSON..=) "RuntimeSettings" Prelude.<$> runtimeSettings]))
instance Property "BuildtimeSettings" GenerativeAISettingsProperty where
  type PropertyType "BuildtimeSettings" GenerativeAISettingsProperty = BuildtimeSettingsProperty
  set newValue GenerativeAISettingsProperty {..}
    = GenerativeAISettingsProperty
        {buildtimeSettings = Prelude.pure newValue, ..}
instance Property "RuntimeSettings" GenerativeAISettingsProperty where
  type PropertyType "RuntimeSettings" GenerativeAISettingsProperty = RuntimeSettingsProperty
  set newValue GenerativeAISettingsProperty {..}
    = GenerativeAISettingsProperty
        {runtimeSettings = Prelude.pure newValue, ..}