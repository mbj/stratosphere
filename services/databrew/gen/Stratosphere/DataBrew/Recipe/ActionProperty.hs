module Stratosphere.DataBrew.Recipe.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.RecipeParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-action.html#cfn-databrew-recipe-action-operation>
                    operation :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-action.html#cfn-databrew-recipe-action-parameters>
                    parameters :: (Prelude.Maybe RecipeParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: Value Prelude.Text -> ActionProperty
mkActionProperty operation
  = ActionProperty
      {haddock_workaround_ = (), operation = operation,
       parameters = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Operation" JSON..= operation]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Operation" JSON..= operation]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "Operation" ActionProperty where
  type PropertyType "Operation" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {operation = newValue, ..}
instance Property "Parameters" ActionProperty where
  type PropertyType "Parameters" ActionProperty = RecipeParametersProperty
  set newValue ActionProperty {..}
    = ActionProperty {parameters = Prelude.pure newValue, ..}