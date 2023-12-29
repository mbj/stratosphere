module Stratosphere.QuickSight.DataSet.JoinInstructionProperty (
        module Exports, JoinInstructionProperty(..),
        mkJoinInstructionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.JoinKeyPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JoinInstructionProperty
  = JoinInstructionProperty {leftJoinKeyProperties :: (Prelude.Maybe JoinKeyPropertiesProperty),
                             leftOperand :: (Value Prelude.Text),
                             onClause :: (Value Prelude.Text),
                             rightJoinKeyProperties :: (Prelude.Maybe JoinKeyPropertiesProperty),
                             rightOperand :: (Value Prelude.Text),
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJoinInstructionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> JoinInstructionProperty
mkJoinInstructionProperty leftOperand onClause rightOperand type'
  = JoinInstructionProperty
      {leftOperand = leftOperand, onClause = onClause,
       rightOperand = rightOperand, type' = type',
       leftJoinKeyProperties = Prelude.Nothing,
       rightJoinKeyProperties = Prelude.Nothing}
instance ToResourceProperties JoinInstructionProperty where
  toResourceProperties JoinInstructionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.JoinInstruction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LeftOperand" JSON..= leftOperand, "OnClause" JSON..= onClause,
                            "RightOperand" JSON..= rightOperand, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "LeftJoinKeyProperties"
                                 Prelude.<$> leftJoinKeyProperties,
                               (JSON..=) "RightJoinKeyProperties"
                                 Prelude.<$> rightJoinKeyProperties]))}
instance JSON.ToJSON JoinInstructionProperty where
  toJSON JoinInstructionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LeftOperand" JSON..= leftOperand, "OnClause" JSON..= onClause,
               "RightOperand" JSON..= rightOperand, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "LeftJoinKeyProperties"
                    Prelude.<$> leftJoinKeyProperties,
                  (JSON..=) "RightJoinKeyProperties"
                    Prelude.<$> rightJoinKeyProperties])))
instance Property "LeftJoinKeyProperties" JoinInstructionProperty where
  type PropertyType "LeftJoinKeyProperties" JoinInstructionProperty = JoinKeyPropertiesProperty
  set newValue JoinInstructionProperty {..}
    = JoinInstructionProperty
        {leftJoinKeyProperties = Prelude.pure newValue, ..}
instance Property "LeftOperand" JoinInstructionProperty where
  type PropertyType "LeftOperand" JoinInstructionProperty = Value Prelude.Text
  set newValue JoinInstructionProperty {..}
    = JoinInstructionProperty {leftOperand = newValue, ..}
instance Property "OnClause" JoinInstructionProperty where
  type PropertyType "OnClause" JoinInstructionProperty = Value Prelude.Text
  set newValue JoinInstructionProperty {..}
    = JoinInstructionProperty {onClause = newValue, ..}
instance Property "RightJoinKeyProperties" JoinInstructionProperty where
  type PropertyType "RightJoinKeyProperties" JoinInstructionProperty = JoinKeyPropertiesProperty
  set newValue JoinInstructionProperty {..}
    = JoinInstructionProperty
        {rightJoinKeyProperties = Prelude.pure newValue, ..}
instance Property "RightOperand" JoinInstructionProperty where
  type PropertyType "RightOperand" JoinInstructionProperty = Value Prelude.Text
  set newValue JoinInstructionProperty {..}
    = JoinInstructionProperty {rightOperand = newValue, ..}
instance Property "Type" JoinInstructionProperty where
  type PropertyType "Type" JoinInstructionProperty = Value Prelude.Text
  set newValue JoinInstructionProperty {..}
    = JoinInstructionProperty {type' = newValue, ..}