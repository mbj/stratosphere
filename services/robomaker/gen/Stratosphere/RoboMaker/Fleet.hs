module Stratosphere.RoboMaker.Fleet (
        Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Fleet
  = Fleet {name :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkFleet :: Fleet
mkFleet = Fleet {name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Name" Fleet where
  type PropertyType "Name" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {name = Prelude.pure newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}