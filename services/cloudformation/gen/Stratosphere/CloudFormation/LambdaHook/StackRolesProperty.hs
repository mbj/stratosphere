module Stratosphere.CloudFormation.LambdaHook.StackRolesProperty (
        StackRolesProperty(..), mkStackRolesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackRolesProperty
  = StackRolesProperty {exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                        include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackRolesProperty :: StackRolesProperty
mkStackRolesProperty
  = StackRolesProperty
      {exclude = Prelude.Nothing, include = Prelude.Nothing}
instance ToResourceProperties StackRolesProperty where
  toResourceProperties StackRolesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::LambdaHook.StackRoles",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON StackRolesProperty where
  toJSON StackRolesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" StackRolesProperty where
  type PropertyType "Exclude" StackRolesProperty = ValueList Prelude.Text
  set newValue StackRolesProperty {..}
    = StackRolesProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" StackRolesProperty where
  type PropertyType "Include" StackRolesProperty = ValueList Prelude.Text
  set newValue StackRolesProperty {..}
    = StackRolesProperty {include = Prelude.pure newValue, ..}