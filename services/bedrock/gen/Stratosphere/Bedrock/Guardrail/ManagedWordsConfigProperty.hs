module Stratosphere.Bedrock.Guardrail.ManagedWordsConfigProperty (
        ManagedWordsConfigProperty(..), mkManagedWordsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedWordsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html>
    ManagedWordsConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html#cfn-bedrock-guardrail-managedwordsconfig-inputaction>
                                inputAction :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html#cfn-bedrock-guardrail-managedwordsconfig-inputenabled>
                                inputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html#cfn-bedrock-guardrail-managedwordsconfig-outputaction>
                                outputAction :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html#cfn-bedrock-guardrail-managedwordsconfig-outputenabled>
                                outputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html#cfn-bedrock-guardrail-managedwordsconfig-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedWordsConfigProperty ::
  Value Prelude.Text -> ManagedWordsConfigProperty
mkManagedWordsConfigProperty type'
  = ManagedWordsConfigProperty
      {haddock_workaround_ = (), type' = type',
       inputAction = Prelude.Nothing, inputEnabled = Prelude.Nothing,
       outputAction = Prelude.Nothing, outputEnabled = Prelude.Nothing}
instance ToResourceProperties ManagedWordsConfigProperty where
  toResourceProperties ManagedWordsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ManagedWordsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "InputAction" Prelude.<$> inputAction,
                               (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                               (JSON..=) "OutputAction" Prelude.<$> outputAction,
                               (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled]))}
instance JSON.ToJSON ManagedWordsConfigProperty where
  toJSON ManagedWordsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "InputAction" Prelude.<$> inputAction,
                  (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                  (JSON..=) "OutputAction" Prelude.<$> outputAction,
                  (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled])))
instance Property "InputAction" ManagedWordsConfigProperty where
  type PropertyType "InputAction" ManagedWordsConfigProperty = Value Prelude.Text
  set newValue ManagedWordsConfigProperty {..}
    = ManagedWordsConfigProperty
        {inputAction = Prelude.pure newValue, ..}
instance Property "InputEnabled" ManagedWordsConfigProperty where
  type PropertyType "InputEnabled" ManagedWordsConfigProperty = Value Prelude.Bool
  set newValue ManagedWordsConfigProperty {..}
    = ManagedWordsConfigProperty
        {inputEnabled = Prelude.pure newValue, ..}
instance Property "OutputAction" ManagedWordsConfigProperty where
  type PropertyType "OutputAction" ManagedWordsConfigProperty = Value Prelude.Text
  set newValue ManagedWordsConfigProperty {..}
    = ManagedWordsConfigProperty
        {outputAction = Prelude.pure newValue, ..}
instance Property "OutputEnabled" ManagedWordsConfigProperty where
  type PropertyType "OutputEnabled" ManagedWordsConfigProperty = Value Prelude.Bool
  set newValue ManagedWordsConfigProperty {..}
    = ManagedWordsConfigProperty
        {outputEnabled = Prelude.pure newValue, ..}
instance Property "Type" ManagedWordsConfigProperty where
  type PropertyType "Type" ManagedWordsConfigProperty = Value Prelude.Text
  set newValue ManagedWordsConfigProperty {..}
    = ManagedWordsConfigProperty {type' = newValue, ..}