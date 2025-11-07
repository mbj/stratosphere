module Stratosphere.Wisdom.AIGuardrail.AIGuardrailWordPolicyConfigProperty (
        module Exports, AIGuardrailWordPolicyConfigProperty(..),
        mkAIGuardrailWordPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailManagedWordsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailWordConfigProperty as Exports
import Stratosphere.ResourceProperties
data AIGuardrailWordPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailwordpolicyconfig.html>
    AIGuardrailWordPolicyConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailwordpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailwordpolicyconfig-managedwordlistsconfig>
                                         managedWordListsConfig :: (Prelude.Maybe [GuardrailManagedWordsConfigProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailwordpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailwordpolicyconfig-wordsconfig>
                                         wordsConfig :: (Prelude.Maybe [GuardrailWordConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrailWordPolicyConfigProperty ::
  AIGuardrailWordPolicyConfigProperty
mkAIGuardrailWordPolicyConfigProperty
  = AIGuardrailWordPolicyConfigProperty
      {haddock_workaround_ = (),
       managedWordListsConfig = Prelude.Nothing,
       wordsConfig = Prelude.Nothing}
instance ToResourceProperties AIGuardrailWordPolicyConfigProperty where
  toResourceProperties AIGuardrailWordPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.AIGuardrailWordPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManagedWordListsConfig"
                              Prelude.<$> managedWordListsConfig,
                            (JSON..=) "WordsConfig" Prelude.<$> wordsConfig])}
instance JSON.ToJSON AIGuardrailWordPolicyConfigProperty where
  toJSON AIGuardrailWordPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManagedWordListsConfig"
                 Prelude.<$> managedWordListsConfig,
               (JSON..=) "WordsConfig" Prelude.<$> wordsConfig]))
instance Property "ManagedWordListsConfig" AIGuardrailWordPolicyConfigProperty where
  type PropertyType "ManagedWordListsConfig" AIGuardrailWordPolicyConfigProperty = [GuardrailManagedWordsConfigProperty]
  set newValue AIGuardrailWordPolicyConfigProperty {..}
    = AIGuardrailWordPolicyConfigProperty
        {managedWordListsConfig = Prelude.pure newValue, ..}
instance Property "WordsConfig" AIGuardrailWordPolicyConfigProperty where
  type PropertyType "WordsConfig" AIGuardrailWordPolicyConfigProperty = [GuardrailWordConfigProperty]
  set newValue AIGuardrailWordPolicyConfigProperty {..}
    = AIGuardrailWordPolicyConfigProperty
        {wordsConfig = Prelude.pure newValue, ..}