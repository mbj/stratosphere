module Stratosphere.Connect.UserHierarchyStructure.LevelOneProperty (
        LevelOneProperty(..), mkLevelOneProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LevelOneProperty
  = LevelOneProperty {hierarchyLevelArn :: (Prelude.Maybe (Value Prelude.Text)),
                      hierarchyLevelId :: (Prelude.Maybe (Value Prelude.Text)),
                      name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLevelOneProperty :: Value Prelude.Text -> LevelOneProperty
mkLevelOneProperty name
  = LevelOneProperty
      {name = name, hierarchyLevelArn = Prelude.Nothing,
       hierarchyLevelId = Prelude.Nothing}
instance ToResourceProperties LevelOneProperty where
  toResourceProperties LevelOneProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure.LevelOne",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                               (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId]))}
instance JSON.ToJSON LevelOneProperty where
  toJSON LevelOneProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                  (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId])))
instance Property "HierarchyLevelArn" LevelOneProperty where
  type PropertyType "HierarchyLevelArn" LevelOneProperty = Value Prelude.Text
  set newValue LevelOneProperty {..}
    = LevelOneProperty {hierarchyLevelArn = Prelude.pure newValue, ..}
instance Property "HierarchyLevelId" LevelOneProperty where
  type PropertyType "HierarchyLevelId" LevelOneProperty = Value Prelude.Text
  set newValue LevelOneProperty {..}
    = LevelOneProperty {hierarchyLevelId = Prelude.pure newValue, ..}
instance Property "Name" LevelOneProperty where
  type PropertyType "Name" LevelOneProperty = Value Prelude.Text
  set newValue LevelOneProperty {..}
    = LevelOneProperty {name = newValue, ..}