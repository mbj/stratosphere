module Stratosphere.Backup.RestoreTestingSelection.ProtectedResourceConditionsProperty (
        module Exports, ProtectedResourceConditionsProperty(..),
        mkProtectedResourceConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.RestoreTestingSelection.KeyValueProperty as Exports
import Stratosphere.ResourceProperties
data ProtectedResourceConditionsProperty
  = ProtectedResourceConditionsProperty {stringEquals :: (Prelude.Maybe [KeyValueProperty]),
                                         stringNotEquals :: (Prelude.Maybe [KeyValueProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtectedResourceConditionsProperty ::
  ProtectedResourceConditionsProperty
mkProtectedResourceConditionsProperty
  = ProtectedResourceConditionsProperty
      {stringEquals = Prelude.Nothing, stringNotEquals = Prelude.Nothing}
instance ToResourceProperties ProtectedResourceConditionsProperty where
  toResourceProperties ProtectedResourceConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::RestoreTestingSelection.ProtectedResourceConditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
                            (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals])}
instance JSON.ToJSON ProtectedResourceConditionsProperty where
  toJSON ProtectedResourceConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
               (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals]))
instance Property "StringEquals" ProtectedResourceConditionsProperty where
  type PropertyType "StringEquals" ProtectedResourceConditionsProperty = [KeyValueProperty]
  set newValue ProtectedResourceConditionsProperty {..}
    = ProtectedResourceConditionsProperty
        {stringEquals = Prelude.pure newValue, ..}
instance Property "StringNotEquals" ProtectedResourceConditionsProperty where
  type PropertyType "StringNotEquals" ProtectedResourceConditionsProperty = [KeyValueProperty]
  set newValue ProtectedResourceConditionsProperty {..}
    = ProtectedResourceConditionsProperty
        {stringNotEquals = Prelude.pure newValue, ..}