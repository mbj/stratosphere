module Stratosphere.Bedrock.Guardrail.WordPolicyConfigProperty (
        module Exports, WordPolicyConfigProperty(..),
        mkWordPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.ManagedWordsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.WordConfigProperty as Exports
import Stratosphere.ResourceProperties
data WordPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordpolicyconfig.html>
    WordPolicyConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordpolicyconfig.html#cfn-bedrock-guardrail-wordpolicyconfig-managedwordlistsconfig>
                              managedWordListsConfig :: (Prelude.Maybe [ManagedWordsConfigProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordpolicyconfig.html#cfn-bedrock-guardrail-wordpolicyconfig-wordsconfig>
                              wordsConfig :: (Prelude.Maybe [WordConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordPolicyConfigProperty :: WordPolicyConfigProperty
mkWordPolicyConfigProperty
  = WordPolicyConfigProperty
      {haddock_workaround_ = (),
       managedWordListsConfig = Prelude.Nothing,
       wordsConfig = Prelude.Nothing}
instance ToResourceProperties WordPolicyConfigProperty where
  toResourceProperties WordPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.WordPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManagedWordListsConfig"
                              Prelude.<$> managedWordListsConfig,
                            (JSON..=) "WordsConfig" Prelude.<$> wordsConfig])}
instance JSON.ToJSON WordPolicyConfigProperty where
  toJSON WordPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManagedWordListsConfig"
                 Prelude.<$> managedWordListsConfig,
               (JSON..=) "WordsConfig" Prelude.<$> wordsConfig]))
instance Property "ManagedWordListsConfig" WordPolicyConfigProperty where
  type PropertyType "ManagedWordListsConfig" WordPolicyConfigProperty = [ManagedWordsConfigProperty]
  set newValue WordPolicyConfigProperty {..}
    = WordPolicyConfigProperty
        {managedWordListsConfig = Prelude.pure newValue, ..}
instance Property "WordsConfig" WordPolicyConfigProperty where
  type PropertyType "WordsConfig" WordPolicyConfigProperty = [WordConfigProperty]
  set newValue WordPolicyConfigProperty {..}
    = WordPolicyConfigProperty
        {wordsConfig = Prelude.pure newValue, ..}