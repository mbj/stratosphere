module Stratosphere.Connect.TaskTemplate.ConstraintsProperty (
        module Exports, ConstraintsProperty(..), mkConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.InvisibleFieldInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.ReadOnlyFieldInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.RequiredFieldInfoProperty as Exports
import Stratosphere.ResourceProperties
data ConstraintsProperty
  = ConstraintsProperty {invisibleFields :: (Prelude.Maybe [InvisibleFieldInfoProperty]),
                         readOnlyFields :: (Prelude.Maybe [ReadOnlyFieldInfoProperty]),
                         requiredFields :: (Prelude.Maybe [RequiredFieldInfoProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConstraintsProperty :: ConstraintsProperty
mkConstraintsProperty
  = ConstraintsProperty
      {invisibleFields = Prelude.Nothing,
       readOnlyFields = Prelude.Nothing, requiredFields = Prelude.Nothing}
instance ToResourceProperties ConstraintsProperty where
  toResourceProperties ConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.Constraints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InvisibleFields" Prelude.<$> invisibleFields,
                            (JSON..=) "ReadOnlyFields" Prelude.<$> readOnlyFields,
                            (JSON..=) "RequiredFields" Prelude.<$> requiredFields])}
instance JSON.ToJSON ConstraintsProperty where
  toJSON ConstraintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InvisibleFields" Prelude.<$> invisibleFields,
               (JSON..=) "ReadOnlyFields" Prelude.<$> readOnlyFields,
               (JSON..=) "RequiredFields" Prelude.<$> requiredFields]))
instance Property "InvisibleFields" ConstraintsProperty where
  type PropertyType "InvisibleFields" ConstraintsProperty = [InvisibleFieldInfoProperty]
  set newValue ConstraintsProperty {..}
    = ConstraintsProperty {invisibleFields = Prelude.pure newValue, ..}
instance Property "ReadOnlyFields" ConstraintsProperty where
  type PropertyType "ReadOnlyFields" ConstraintsProperty = [ReadOnlyFieldInfoProperty]
  set newValue ConstraintsProperty {..}
    = ConstraintsProperty {readOnlyFields = Prelude.pure newValue, ..}
instance Property "RequiredFields" ConstraintsProperty where
  type PropertyType "RequiredFields" ConstraintsProperty = [RequiredFieldInfoProperty]
  set newValue ConstraintsProperty {..}
    = ConstraintsProperty {requiredFields = Prelude.pure newValue, ..}