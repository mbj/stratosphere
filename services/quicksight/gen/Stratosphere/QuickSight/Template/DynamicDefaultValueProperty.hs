module Stratosphere.QuickSight.Template.DynamicDefaultValueProperty (
        module Exports, DynamicDefaultValueProperty(..),
        mkDynamicDefaultValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
data DynamicDefaultValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html>
    DynamicDefaultValueProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html#cfn-quicksight-template-dynamicdefaultvalue-defaultvaluecolumn>
                                 defaultValueColumn :: ColumnIdentifierProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html#cfn-quicksight-template-dynamicdefaultvalue-groupnamecolumn>
                                 groupNameColumn :: (Prelude.Maybe ColumnIdentifierProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html#cfn-quicksight-template-dynamicdefaultvalue-usernamecolumn>
                                 userNameColumn :: (Prelude.Maybe ColumnIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamicDefaultValueProperty ::
  ColumnIdentifierProperty -> DynamicDefaultValueProperty
mkDynamicDefaultValueProperty defaultValueColumn
  = DynamicDefaultValueProperty
      {haddock_workaround_ = (), defaultValueColumn = defaultValueColumn,
       groupNameColumn = Prelude.Nothing,
       userNameColumn = Prelude.Nothing}
instance ToResourceProperties DynamicDefaultValueProperty where
  toResourceProperties DynamicDefaultValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DynamicDefaultValue",
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