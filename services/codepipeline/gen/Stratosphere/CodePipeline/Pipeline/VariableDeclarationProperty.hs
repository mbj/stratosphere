module Stratosphere.CodePipeline.Pipeline.VariableDeclarationProperty (
        VariableDeclarationProperty(..), mkVariableDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariableDeclarationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-variabledeclaration.html>
    VariableDeclarationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-variabledeclaration.html#cfn-codepipeline-pipeline-variabledeclaration-defaultvalue>
                                 defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-variabledeclaration.html#cfn-codepipeline-pipeline-variabledeclaration-description>
                                 description :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-variabledeclaration.html#cfn-codepipeline-pipeline-variabledeclaration-name>
                                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariableDeclarationProperty ::
  Value Prelude.Text -> VariableDeclarationProperty
mkVariableDeclarationProperty name
  = VariableDeclarationProperty
      {haddock_workaround_ = (), name = name,
       defaultValue = Prelude.Nothing, description = Prelude.Nothing}
instance ToResourceProperties VariableDeclarationProperty where
  toResourceProperties VariableDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.VariableDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON VariableDeclarationProperty where
  toJSON VariableDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "DefaultValue" VariableDeclarationProperty where
  type PropertyType "DefaultValue" VariableDeclarationProperty = Value Prelude.Text
  set newValue VariableDeclarationProperty {..}
    = VariableDeclarationProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Description" VariableDeclarationProperty where
  type PropertyType "Description" VariableDeclarationProperty = Value Prelude.Text
  set newValue VariableDeclarationProperty {..}
    = VariableDeclarationProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" VariableDeclarationProperty where
  type PropertyType "Name" VariableDeclarationProperty = Value Prelude.Text
  set newValue VariableDeclarationProperty {..}
    = VariableDeclarationProperty {name = newValue, ..}