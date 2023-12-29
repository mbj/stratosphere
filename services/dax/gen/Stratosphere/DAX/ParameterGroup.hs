module Stratosphere.DAX.ParameterGroup (
        ParameterGroup(..), mkParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterGroup
  = ParameterGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
                    parameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                    parameterNameValues :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterGroup :: ParameterGroup
mkParameterGroup
  = ParameterGroup
      {description = Prelude.Nothing,
       parameterGroupName = Prelude.Nothing,
       parameterNameValues = Prelude.Nothing}
instance ToResourceProperties ParameterGroup where
  toResourceProperties ParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::DAX::ParameterGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                            (JSON..=) "ParameterNameValues" Prelude.<$> parameterNameValues])}
instance JSON.ToJSON ParameterGroup where
  toJSON ParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
               (JSON..=) "ParameterNameValues" Prelude.<$> parameterNameValues]))
instance Property "Description" ParameterGroup where
  type PropertyType "Description" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {description = Prelude.pure newValue, ..}
instance Property "ParameterGroupName" ParameterGroup where
  type PropertyType "ParameterGroupName" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {parameterGroupName = Prelude.pure newValue, ..}
instance Property "ParameterNameValues" ParameterGroup where
  type PropertyType "ParameterNameValues" ParameterGroup = JSON.Object
  set newValue ParameterGroup {..}
    = ParameterGroup {parameterNameValues = Prelude.pure newValue, ..}