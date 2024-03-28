module Stratosphere.CodePipeline.Pipeline.ActionDeclarationProperty (
        module Exports, ActionDeclarationProperty(..),
        mkActionDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ActionTypeIdProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.InputArtifactProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.OutputArtifactProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionDeclarationProperty
  = ActionDeclarationProperty {actionTypeId :: ActionTypeIdProperty,
                               configuration :: (Prelude.Maybe JSON.Object),
                               inputArtifacts :: (Prelude.Maybe [InputArtifactProperty]),
                               name :: (Value Prelude.Text),
                               namespace :: (Prelude.Maybe (Value Prelude.Text)),
                               outputArtifacts :: (Prelude.Maybe [OutputArtifactProperty]),
                               region :: (Prelude.Maybe (Value Prelude.Text)),
                               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               runOrder :: (Prelude.Maybe (Value Prelude.Integer)),
                               timeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionDeclarationProperty ::
  ActionTypeIdProperty
  -> Value Prelude.Text -> ActionDeclarationProperty
mkActionDeclarationProperty actionTypeId name
  = ActionDeclarationProperty
      {actionTypeId = actionTypeId, name = name,
       configuration = Prelude.Nothing, inputArtifacts = Prelude.Nothing,
       namespace = Prelude.Nothing, outputArtifacts = Prelude.Nothing,
       region = Prelude.Nothing, roleArn = Prelude.Nothing,
       runOrder = Prelude.Nothing, timeoutInMinutes = Prelude.Nothing}
instance ToResourceProperties ActionDeclarationProperty where
  toResourceProperties ActionDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.ActionDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionTypeId" JSON..= actionTypeId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "InputArtifacts" Prelude.<$> inputArtifacts,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "OutputArtifacts" Prelude.<$> outputArtifacts,
                               (JSON..=) "Region" Prelude.<$> region,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "RunOrder" Prelude.<$> runOrder,
                               (JSON..=) "TimeoutInMinutes" Prelude.<$> timeoutInMinutes]))}
instance JSON.ToJSON ActionDeclarationProperty where
  toJSON ActionDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionTypeId" JSON..= actionTypeId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "InputArtifacts" Prelude.<$> inputArtifacts,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "OutputArtifacts" Prelude.<$> outputArtifacts,
                  (JSON..=) "Region" Prelude.<$> region,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "RunOrder" Prelude.<$> runOrder,
                  (JSON..=) "TimeoutInMinutes" Prelude.<$> timeoutInMinutes])))
instance Property "ActionTypeId" ActionDeclarationProperty where
  type PropertyType "ActionTypeId" ActionDeclarationProperty = ActionTypeIdProperty
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty {actionTypeId = newValue, ..}
instance Property "Configuration" ActionDeclarationProperty where
  type PropertyType "Configuration" ActionDeclarationProperty = JSON.Object
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty
        {configuration = Prelude.pure newValue, ..}
instance Property "InputArtifacts" ActionDeclarationProperty where
  type PropertyType "InputArtifacts" ActionDeclarationProperty = [InputArtifactProperty]
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty
        {inputArtifacts = Prelude.pure newValue, ..}
instance Property "Name" ActionDeclarationProperty where
  type PropertyType "Name" ActionDeclarationProperty = Value Prelude.Text
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty {name = newValue, ..}
instance Property "Namespace" ActionDeclarationProperty where
  type PropertyType "Namespace" ActionDeclarationProperty = Value Prelude.Text
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty {namespace = Prelude.pure newValue, ..}
instance Property "OutputArtifacts" ActionDeclarationProperty where
  type PropertyType "OutputArtifacts" ActionDeclarationProperty = [OutputArtifactProperty]
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty
        {outputArtifacts = Prelude.pure newValue, ..}
instance Property "Region" ActionDeclarationProperty where
  type PropertyType "Region" ActionDeclarationProperty = Value Prelude.Text
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty {region = Prelude.pure newValue, ..}
instance Property "RoleArn" ActionDeclarationProperty where
  type PropertyType "RoleArn" ActionDeclarationProperty = Value Prelude.Text
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty {roleArn = Prelude.pure newValue, ..}
instance Property "RunOrder" ActionDeclarationProperty where
  type PropertyType "RunOrder" ActionDeclarationProperty = Value Prelude.Integer
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty {runOrder = Prelude.pure newValue, ..}
instance Property "TimeoutInMinutes" ActionDeclarationProperty where
  type PropertyType "TimeoutInMinutes" ActionDeclarationProperty = Value Prelude.Integer
  set newValue ActionDeclarationProperty {..}
    = ActionDeclarationProperty
        {timeoutInMinutes = Prelude.pure newValue, ..}