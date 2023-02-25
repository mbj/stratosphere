module Stratosphere.Backup.BackupSelection.ConditionsProperty (
        module Exports, ConditionsProperty(..), mkConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupSelection.ConditionParameterProperty as Exports
import Stratosphere.ResourceProperties
data ConditionsProperty
  = ConditionsProperty {stringEquals :: (Prelude.Maybe [ConditionParameterProperty]),
                        stringLike :: (Prelude.Maybe [ConditionParameterProperty]),
                        stringNotEquals :: (Prelude.Maybe [ConditionParameterProperty]),
                        stringNotLike :: (Prelude.Maybe [ConditionParameterProperty])}
mkConditionsProperty :: ConditionsProperty
mkConditionsProperty
  = ConditionsProperty
      {stringEquals = Prelude.Nothing, stringLike = Prelude.Nothing,
       stringNotEquals = Prelude.Nothing, stringNotLike = Prelude.Nothing}
instance ToResourceProperties ConditionsProperty where
  toResourceProperties ConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.Conditions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
                            (JSON..=) "StringLike" Prelude.<$> stringLike,
                            (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals,
                            (JSON..=) "StringNotLike" Prelude.<$> stringNotLike])}
instance JSON.ToJSON ConditionsProperty where
  toJSON ConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
               (JSON..=) "StringLike" Prelude.<$> stringLike,
               (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals,
               (JSON..=) "StringNotLike" Prelude.<$> stringNotLike]))
instance Property "StringEquals" ConditionsProperty where
  type PropertyType "StringEquals" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringEquals = Prelude.pure newValue, ..}
instance Property "StringLike" ConditionsProperty where
  type PropertyType "StringLike" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringLike = Prelude.pure newValue, ..}
instance Property "StringNotEquals" ConditionsProperty where
  type PropertyType "StringNotEquals" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringNotEquals = Prelude.pure newValue, ..}
instance Property "StringNotLike" ConditionsProperty where
  type PropertyType "StringNotLike" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringNotLike = Prelude.pure newValue, ..}