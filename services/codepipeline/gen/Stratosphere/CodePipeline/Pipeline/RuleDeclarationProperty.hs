module Stratosphere.CodePipeline.Pipeline.RuleDeclarationProperty (
        module Exports, RuleDeclarationProperty(..),
        mkRuleDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.InputArtifactProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.RuleTypeIdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleDeclarationProperty
  = RuleDeclarationProperty {configuration :: (Prelude.Maybe JSON.Object),
                             inputArtifacts :: (Prelude.Maybe [InputArtifactProperty]),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             region :: (Prelude.Maybe (Value Prelude.Text)),
                             roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             ruleTypeId :: (Prelude.Maybe RuleTypeIdProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleDeclarationProperty :: RuleDeclarationProperty
mkRuleDeclarationProperty
  = RuleDeclarationProperty
      {configuration = Prelude.Nothing, inputArtifacts = Prelude.Nothing,
       name = Prelude.Nothing, region = Prelude.Nothing,
       roleArn = Prelude.Nothing, ruleTypeId = Prelude.Nothing}
instance ToResourceProperties RuleDeclarationProperty where
  toResourceProperties RuleDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.RuleDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "InputArtifacts" Prelude.<$> inputArtifacts,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Region" Prelude.<$> region,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "RuleTypeId" Prelude.<$> ruleTypeId])}
instance JSON.ToJSON RuleDeclarationProperty where
  toJSON RuleDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "InputArtifacts" Prelude.<$> inputArtifacts,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Region" Prelude.<$> region,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "RuleTypeId" Prelude.<$> ruleTypeId]))
instance Property "Configuration" RuleDeclarationProperty where
  type PropertyType "Configuration" RuleDeclarationProperty = JSON.Object
  set newValue RuleDeclarationProperty {..}
    = RuleDeclarationProperty
        {configuration = Prelude.pure newValue, ..}
instance Property "InputArtifacts" RuleDeclarationProperty where
  type PropertyType "InputArtifacts" RuleDeclarationProperty = [InputArtifactProperty]
  set newValue RuleDeclarationProperty {..}
    = RuleDeclarationProperty
        {inputArtifacts = Prelude.pure newValue, ..}
instance Property "Name" RuleDeclarationProperty where
  type PropertyType "Name" RuleDeclarationProperty = Value Prelude.Text
  set newValue RuleDeclarationProperty {..}
    = RuleDeclarationProperty {name = Prelude.pure newValue, ..}
instance Property "Region" RuleDeclarationProperty where
  type PropertyType "Region" RuleDeclarationProperty = Value Prelude.Text
  set newValue RuleDeclarationProperty {..}
    = RuleDeclarationProperty {region = Prelude.pure newValue, ..}
instance Property "RoleArn" RuleDeclarationProperty where
  type PropertyType "RoleArn" RuleDeclarationProperty = Value Prelude.Text
  set newValue RuleDeclarationProperty {..}
    = RuleDeclarationProperty {roleArn = Prelude.pure newValue, ..}
instance Property "RuleTypeId" RuleDeclarationProperty where
  type PropertyType "RuleTypeId" RuleDeclarationProperty = RuleTypeIdProperty
  set newValue RuleDeclarationProperty {..}
    = RuleDeclarationProperty {ruleTypeId = Prelude.pure newValue, ..}