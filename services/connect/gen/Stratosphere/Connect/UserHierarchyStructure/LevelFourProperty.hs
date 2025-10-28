module Stratosphere.Connect.UserHierarchyStructure.LevelFourProperty (
        LevelFourProperty(..), mkLevelFourProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LevelFourProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfour.html>
    LevelFourProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfour.html#cfn-connect-userhierarchystructure-levelfour-hierarchylevelarn>
                       hierarchyLevelArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfour.html#cfn-connect-userhierarchystructure-levelfour-hierarchylevelid>
                       hierarchyLevelId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-levelfour.html#cfn-connect-userhierarchystructure-levelfour-name>
                       name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLevelFourProperty :: Value Prelude.Text -> LevelFourProperty
mkLevelFourProperty name
  = LevelFourProperty
      {haddock_workaround_ = (), name = name,
       hierarchyLevelArn = Prelude.Nothing,
       hierarchyLevelId = Prelude.Nothing}
instance ToResourceProperties LevelFourProperty where
  toResourceProperties LevelFourProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure.LevelFour",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                               (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId]))}
instance JSON.ToJSON LevelFourProperty where
  toJSON LevelFourProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "HierarchyLevelArn" Prelude.<$> hierarchyLevelArn,
                  (JSON..=) "HierarchyLevelId" Prelude.<$> hierarchyLevelId])))
instance Property "HierarchyLevelArn" LevelFourProperty where
  type PropertyType "HierarchyLevelArn" LevelFourProperty = Value Prelude.Text
  set newValue LevelFourProperty {..}
    = LevelFourProperty {hierarchyLevelArn = Prelude.pure newValue, ..}
instance Property "HierarchyLevelId" LevelFourProperty where
  type PropertyType "HierarchyLevelId" LevelFourProperty = Value Prelude.Text
  set newValue LevelFourProperty {..}
    = LevelFourProperty {hierarchyLevelId = Prelude.pure newValue, ..}
instance Property "Name" LevelFourProperty where
  type PropertyType "Name" LevelFourProperty = Value Prelude.Text
  set newValue LevelFourProperty {..}
    = LevelFourProperty {name = newValue, ..}