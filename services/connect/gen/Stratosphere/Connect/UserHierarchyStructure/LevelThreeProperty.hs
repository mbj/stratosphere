module Stratosphere.Connect.UserHierarchyStructure.LevelThreeProperty (
        LevelThreeProperty(..), mkLevelThreeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LevelThreeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelthree.html>
    LevelThreeProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelthree.html#cfn-connect-userhierarchystructure-levelthree-hierarchylevelarn>
                        hierarchyLevelArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelthree.html#cfn-connect-userhierarchystructure-levelthree-hierarchylevelid>
                        hierarchyLevelId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelthree.html#cfn-connect-userhierarchystructure-levelthree-name>
                        name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLevelThreeProperty :: Value Prelude.Text -> LevelThreeProperty
mkLevelThreeProperty name
  = LevelThreeProperty
      {haddock_workaround_ = (), name = name,
       hierarchyLevelArn = Prelude.Nothing,
       hierarchyLevelId = Prelude.Nothing}
instance ToResourceProperties LevelThreeProperty where
  toResourceProperties LevelThreeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure.LevelThree",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                               (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId]))}
instance JSON.ToJSON LevelThreeProperty where
  toJSON LevelThreeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                  (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId])))
instance Property "HierarchyLevelArn" LevelThreeProperty where
  type PropertyType "HierarchyLevelArn" LevelThreeProperty = Value Prelude.Text
  set newValue LevelThreeProperty {..}
    = LevelThreeProperty
        {hierarchyLevelArn = Prelude.pure newValue, ..}
instance Property "HierarchyLevelId" LevelThreeProperty where
  type PropertyType "HierarchyLevelId" LevelThreeProperty = Value Prelude.Text
  set newValue LevelThreeProperty {..}
    = LevelThreeProperty {hierarchyLevelId = Prelude.pure newValue, ..}
instance Property "Name" LevelThreeProperty where
  type PropertyType "Name" LevelThreeProperty = Value Prelude.Text
  set newValue LevelThreeProperty {..}
    = LevelThreeProperty {name = newValue, ..}