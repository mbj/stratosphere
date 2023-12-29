module Stratosphere.QuickSight.Analysis.DynamicDefaultValueProperty (
        module Exports, DynamicDefaultValueProperty(..),
        mkDynamicDefaultValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
data DynamicDefaultValueProperty
  = DynamicDefaultValueProperty {defaultValueColumn :: ColumnIdentifierProperty,
                                 groupNameColumn :: (Prelude.Maybe ColumnIdentifierProperty),
                                 userNameColumn :: (Prelude.Maybe ColumnIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamicDefaultValueProperty ::
  ColumnIdentifierProperty -> DynamicDefaultValueProperty
mkDynamicDefaultValueProperty defaultValueColumn
  = DynamicDefaultValueProperty
      {defaultValueColumn = defaultValueColumn,
       groupNameColumn = Prelude.Nothing,
       userNameColumn = Prelude.Nothing}
instance ToResourceProperties DynamicDefaultValueProperty where
  toResourceProperties DynamicDefaultValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DynamicDefaultValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultValueColumn" JSON..= defaultValueColumn]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupNameColumn" Prelude.<$> groupNameColumn,
                               (JSON..=) "UserNameColumn" Prelude.<$> userNameColumn]))}
instance JSON.ToJSON DynamicDefaultValueProperty where
  toJSON DynamicDefaultValueProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultValueColumn" JSON..= defaultValueColumn]
              (Prelude.catMaybes
                 [(JSON..=) "GroupNameColumn" Prelude.<$> groupNameColumn,
                  (JSON..=) "UserNameColumn" Prelude.<$> userNameColumn])))
instance Property "DefaultValueColumn" DynamicDefaultValueProperty where
  type PropertyType "DefaultValueColumn" DynamicDefaultValueProperty = ColumnIdentifierProperty
  set newValue DynamicDefaultValueProperty {..}
    = DynamicDefaultValueProperty {defaultValueColumn = newValue, ..}
instance Property "GroupNameColumn" DynamicDefaultValueProperty where
  type PropertyType "GroupNameColumn" DynamicDefaultValueProperty = ColumnIdentifierProperty
  set newValue DynamicDefaultValueProperty {..}
    = DynamicDefaultValueProperty
        {groupNameColumn = Prelude.pure newValue, ..}
instance Property "UserNameColumn" DynamicDefaultValueProperty where
  type PropertyType "UserNameColumn" DynamicDefaultValueProperty = ColumnIdentifierProperty
  set newValue DynamicDefaultValueProperty {..}
    = DynamicDefaultValueProperty
        {userNameColumn = Prelude.pure newValue, ..}