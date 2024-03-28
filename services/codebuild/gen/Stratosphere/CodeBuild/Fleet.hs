module Stratosphere.CodeBuild.Fleet (
        Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = Fleet {baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
           computeType :: (Prelude.Maybe (Value Prelude.Text)),
           environmentType :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet :: Fleet
mkFleet
  = Fleet
      {baseCapacity = Prelude.Nothing, computeType = Prelude.Nothing,
       environmentType = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                            (JSON..=) "ComputeType" Prelude.<$> computeType,
                            (JSON..=) "EnvironmentType" Prelude.<$> environmentType,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
               (JSON..=) "ComputeType" Prelude.<$> computeType,
               (JSON..=) "EnvironmentType" Prelude.<$> environmentType,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "BaseCapacity" Fleet where
  type PropertyType "BaseCapacity" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {baseCapacity = Prelude.pure newValue, ..}
instance Property "ComputeType" Fleet where
  type PropertyType "ComputeType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {computeType = Prelude.pure newValue, ..}
instance Property "EnvironmentType" Fleet where
  type PropertyType "EnvironmentType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {environmentType = Prelude.pure newValue, ..}
instance Property "Name" Fleet where
  type PropertyType "Name" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {name = Prelude.pure newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = [Tag]
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}