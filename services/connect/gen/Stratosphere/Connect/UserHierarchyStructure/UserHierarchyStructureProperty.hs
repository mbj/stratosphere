module Stratosphere.Connect.UserHierarchyStructure.UserHierarchyStructureProperty (
        module Exports, UserHierarchyStructureProperty(..),
        mkUserHierarchyStructureProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.UserHierarchyStructure.LevelFiveProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.UserHierarchyStructure.LevelFourProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.UserHierarchyStructure.LevelOneProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.UserHierarchyStructure.LevelThreeProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.UserHierarchyStructure.LevelTwoProperty as Exports
import Stratosphere.ResourceProperties
data UserHierarchyStructureProperty
  = UserHierarchyStructureProperty {levelFive :: (Prelude.Maybe LevelFiveProperty),
                                    levelFour :: (Prelude.Maybe LevelFourProperty),
                                    levelOne :: (Prelude.Maybe LevelOneProperty),
                                    levelThree :: (Prelude.Maybe LevelThreeProperty),
                                    levelTwo :: (Prelude.Maybe LevelTwoProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserHierarchyStructureProperty :: UserHierarchyStructureProperty
mkUserHierarchyStructureProperty
  = UserHierarchyStructureProperty
      {levelFive = Prelude.Nothing, levelFour = Prelude.Nothing,
       levelOne = Prelude.Nothing, levelThree = Prelude.Nothing,
       levelTwo = Prelude.Nothing}
instance ToResourceProperties UserHierarchyStructureProperty where
  toResourceProperties UserHierarchyStructureProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure.UserHierarchyStructure",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LevelFive" Prelude.<$> levelFive,
                            (JSON..=) "LevelFour" Prelude.<$> levelFour,
                            (JSON..=) "LevelOne" Prelude.<$> levelOne,
                            (JSON..=) "LevelThree" Prelude.<$> levelThree,
                            (JSON..=) "LevelTwo" Prelude.<$> levelTwo])}
instance JSON.ToJSON UserHierarchyStructureProperty where
  toJSON UserHierarchyStructureProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LevelFive" Prelude.<$> levelFive,
               (JSON..=) "LevelFour" Prelude.<$> levelFour,
               (JSON..=) "LevelOne" Prelude.<$> levelOne,
               (JSON..=) "LevelThree" Prelude.<$> levelThree,
               (JSON..=) "LevelTwo" Prelude.<$> levelTwo]))
instance Property "LevelFive" UserHierarchyStructureProperty where
  type PropertyType "LevelFive" UserHierarchyStructureProperty = LevelFiveProperty
  set newValue UserHierarchyStructureProperty {..}
    = UserHierarchyStructureProperty
        {levelFive = Prelude.pure newValue, ..}
instance Property "LevelFour" UserHierarchyStructureProperty where
  type PropertyType "LevelFour" UserHierarchyStructureProperty = LevelFourProperty
  set newValue UserHierarchyStructureProperty {..}
    = UserHierarchyStructureProperty
        {levelFour = Prelude.pure newValue, ..}
instance Property "LevelOne" UserHierarchyStructureProperty where
  type PropertyType "LevelOne" UserHierarchyStructureProperty = LevelOneProperty
  set newValue UserHierarchyStructureProperty {..}
    = UserHierarchyStructureProperty
        {levelOne = Prelude.pure newValue, ..}
instance Property "LevelThree" UserHierarchyStructureProperty where
  type PropertyType "LevelThree" UserHierarchyStructureProperty = LevelThreeProperty
  set newValue UserHierarchyStructureProperty {..}
    = UserHierarchyStructureProperty
        {levelThree = Prelude.pure newValue, ..}
instance Property "LevelTwo" UserHierarchyStructureProperty where
  type PropertyType "LevelTwo" UserHierarchyStructureProperty = LevelTwoProperty
  set newValue UserHierarchyStructureProperty {..}
    = UserHierarchyStructureProperty
        {levelTwo = Prelude.pure newValue, ..}