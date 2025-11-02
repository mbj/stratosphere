module Stratosphere.Connect.UserHierarchyStructure (
        module Exports, UserHierarchyStructure(..),
        mkUserHierarchyStructure
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.UserHierarchyStructure.UserHierarchyStructureProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserHierarchyStructure
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-userhierarchystructure.html>
    UserHierarchyStructure {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-userhierarchystructure.html#cfn-connect-userhierarchystructure-instancearn>
                            instanceArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-userhierarchystructure.html#cfn-connect-userhierarchystructure-userhierarchystructure>
                            userHierarchyStructure :: (Prelude.Maybe UserHierarchyStructureProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserHierarchyStructure ::
  Value Prelude.Text -> UserHierarchyStructure
mkUserHierarchyStructure instanceArn
  = UserHierarchyStructure
      {haddock_workaround_ = (), instanceArn = instanceArn,
       userHierarchyStructure = Prelude.Nothing}
instance ToResourceProperties UserHierarchyStructure where
  toResourceProperties UserHierarchyStructure {..}
    = ResourceProperties
        {awsType = "AWS::Connect::UserHierarchyStructure",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "UserHierarchyStructure"
                                 Prelude.<$> userHierarchyStructure]))}
instance JSON.ToJSON UserHierarchyStructure where
  toJSON UserHierarchyStructure {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn]
              (Prelude.catMaybes
                 [(JSON..=) "UserHierarchyStructure"
                    Prelude.<$> userHierarchyStructure])))
instance Property "InstanceArn" UserHierarchyStructure where
  type PropertyType "InstanceArn" UserHierarchyStructure = Value Prelude.Text
  set newValue UserHierarchyStructure {..}
    = UserHierarchyStructure {instanceArn = newValue, ..}
instance Property "UserHierarchyStructure" UserHierarchyStructure where
  type PropertyType "UserHierarchyStructure" UserHierarchyStructure = UserHierarchyStructureProperty
  set newValue UserHierarchyStructure {..}
    = UserHierarchyStructure
        {userHierarchyStructure = Prelude.pure newValue, ..}