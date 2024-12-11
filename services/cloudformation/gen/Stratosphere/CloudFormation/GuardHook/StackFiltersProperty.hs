module Stratosphere.CloudFormation.GuardHook.StackFiltersProperty (
        module Exports, StackFiltersProperty(..), mkStackFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.StackNamesProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.StackRolesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackFiltersProperty
  = StackFiltersProperty {filteringCriteria :: (Value Prelude.Text),
                          stackNames :: (Prelude.Maybe StackNamesProperty),
                          stackRoles :: (Prelude.Maybe StackRolesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackFiltersProperty ::
  Value Prelude.Text -> StackFiltersProperty
mkStackFiltersProperty filteringCriteria
  = StackFiltersProperty
      {filteringCriteria = filteringCriteria,
       stackNames = Prelude.Nothing, stackRoles = Prelude.Nothing}
instance ToResourceProperties StackFiltersProperty where
  toResourceProperties StackFiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.StackFilters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilteringCriteria" JSON..= filteringCriteria]
                           (Prelude.catMaybes
                              [(JSON..=) "StackNames" Prelude.<$> stackNames,
                               (JSON..=) "StackRoles" Prelude.<$> stackRoles]))}
instance JSON.ToJSON StackFiltersProperty where
  toJSON StackFiltersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilteringCriteria" JSON..= filteringCriteria]
              (Prelude.catMaybes
                 [(JSON..=) "StackNames" Prelude.<$> stackNames,
                  (JSON..=) "StackRoles" Prelude.<$> stackRoles])))
instance Property "FilteringCriteria" StackFiltersProperty where
  type PropertyType "FilteringCriteria" StackFiltersProperty = Value Prelude.Text
  set newValue StackFiltersProperty {..}
    = StackFiltersProperty {filteringCriteria = newValue, ..}
instance Property "StackNames" StackFiltersProperty where
  type PropertyType "StackNames" StackFiltersProperty = StackNamesProperty
  set newValue StackFiltersProperty {..}
    = StackFiltersProperty {stackNames = Prelude.pure newValue, ..}
instance Property "StackRoles" StackFiltersProperty where
  type PropertyType "StackRoles" StackFiltersProperty = StackRolesProperty
  set newValue StackFiltersProperty {..}
    = StackFiltersProperty {stackRoles = Prelude.pure newValue, ..}