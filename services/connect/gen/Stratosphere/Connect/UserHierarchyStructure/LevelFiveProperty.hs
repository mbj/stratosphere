module Stratosphere.Connect.UserHierarchyStructure.LevelFiveProperty (
        LevelFiveProperty(..), mkLevelFiveProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LevelFiveProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfive.html>
    LevelFiveProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfive.html#cfn-connect-userhierarchystructure-levelfive-hierarchylevelarn>
                       hierarchyLevelArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfive.html#cfn-connect-userhierarchystructure-levelfive-hierarchylevelid>
                       hierarchyLevelId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfive.html#cfn-connect-userhierarchystructure-levelfive-name>
                       name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLevelFiveProperty :: Value Prelude.Text -> LevelFiveProperty
mkLevelFiveProperty name
  = LevelFiveProperty
      {haddock_workaround_ = (), name = name,
       hierarchyLevelArn = Prelude.Nothing,
       hierarchyLevelId = Prelude.Nothing}
instance ToResourceProperties LevelFiveProperty where
  toResourceProperties LevelFiveProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure.LevelFive",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                               (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId]))}
instance JSON.ToJSON LevelFiveProperty where
  toJSON LevelFiveProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                  (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId])))
instance Property "HierarchyLevelArn" LevelFiveProperty where
  type PropertyType "HierarchyLevelArn" LevelFiveProperty = Value Prelude.Text
  set newValue LevelFiveProperty {..}
    = LevelFiveProperty {hierarchyLevelArn = Prelude.pure newValue, ..}
instance Property "HierarchyLevelId" LevelFiveProperty where
  type PropertyType "HierarchyLevelId" LevelFiveProperty = Value Prelude.Text
  set newValue LevelFiveProperty {..}
    = LevelFiveProperty {hierarchyLevelId = Prelude.pure newValue, ..}
instance Property "Name" LevelFiveProperty where
  type PropertyType "Name" LevelFiveProperty = Value Prelude.Text
  set newValue LevelFiveProperty {..}
    = LevelFiveProperty {name = newValue, ..}