module Stratosphere.SecurityHub.Hub (
        Hub(..), mkHub
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data Hub = Hub {tags :: (Prelude.Maybe JSON.Object)}
mkHub :: Hub
mkHub = Hub {tags = Prelude.Nothing}
instance ToResourceProperties Hub where
  toResourceProperties Hub {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Hub", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Hub where
  toJSON Hub {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Tags" Hub where
  type PropertyType "Tags" Hub = JSON.Object
  set newValue Hub {} = Hub {tags = Prelude.pure newValue, ..}