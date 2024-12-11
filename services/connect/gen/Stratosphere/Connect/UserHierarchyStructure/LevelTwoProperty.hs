module Stratosphere.Connect.UserHierarchyStructure.LevelTwoProperty (
        LevelTwoProperty(..), mkLevelTwoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LevelTwoProperty
  = LevelTwoProperty {hierarchyLevelArn :: (Prelude.Maybe (Value Prelude.Text)),
                      hierarchyLevelId :: (Prelude.Maybe (Value Prelude.Text)),
                      name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLevelTwoProperty :: Value Prelude.Text -> LevelTwoProperty
mkLevelTwoProperty name
  = LevelTwoProperty
      {name = name, hierarchyLevelArn = Prelude.Nothing,
       hierarchyLevelId = Prelude.Nothing}
instance ToResourceProperties LevelTwoProperty where
  toResourceProperties LevelTwoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure.LevelTwo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                               (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId]))}
instance JSON.ToJSON LevelTwoProperty where
  toJSON LevelTwoProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                  (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId])))
instance Property "HierarchyLevelArn" LevelTwoProperty where
  type PropertyType "HierarchyLevelArn" LevelTwoProperty = Value Prelude.Text
  set newValue LevelTwoProperty {..}
    = LevelTwoProperty {hierarchyLevelArn = Prelude.pure newValue, ..}
instance Property "HierarchyLevelId" LevelTwoProperty where
  type PropertyType "HierarchyLevelId" LevelTwoProperty = Value Prelude.Text
  set newValue LevelTwoProperty {..}
    = LevelTwoProperty {hierarchyLevelId = Prelude.pure newValue, ..}
instance Property "Name" LevelTwoProperty where
  type PropertyType "Name" LevelTwoProperty = Value Prelude.Text
  set newValue LevelTwoProperty {..}
    = LevelTwoProperty {name = newValue, ..}