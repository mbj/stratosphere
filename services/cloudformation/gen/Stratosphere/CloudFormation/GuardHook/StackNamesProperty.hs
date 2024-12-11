module Stratosphere.CloudFormation.GuardHook.StackNamesProperty (
        StackNamesProperty(..), mkStackNamesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackNamesProperty
  = StackNamesProperty {exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                        include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackNamesProperty :: StackNamesProperty
mkStackNamesProperty
  = StackNamesProperty
      {exclude = Prelude.Nothing, include = Prelude.Nothing}
instance ToResourceProperties StackNamesProperty where
  toResourceProperties StackNamesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.StackNames",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON StackNamesProperty where
  toJSON StackNamesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" StackNamesProperty where
  type PropertyType "Exclude" StackNamesProperty = ValueList Prelude.Text
  set newValue StackNamesProperty {..}
    = StackNamesProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" StackNamesProperty where
  type PropertyType "Include" StackNamesProperty = ValueList Prelude.Text
  set newValue StackNamesProperty {..}
    = StackNamesProperty {include = Prelude.pure newValue, ..}