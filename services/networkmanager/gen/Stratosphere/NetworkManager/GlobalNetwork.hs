module Stratosphere.NetworkManager.GlobalNetwork (
        GlobalNetwork(..), mkGlobalNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GlobalNetwork
  = GlobalNetwork {description :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag])}
mkGlobalNetwork :: GlobalNetwork
mkGlobalNetwork
  = GlobalNetwork
      {description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties GlobalNetwork where
  toResourceProperties GlobalNetwork {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::GlobalNetwork",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON GlobalNetwork where
  toJSON GlobalNetwork {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" GlobalNetwork where
  type PropertyType "Description" GlobalNetwork = Value Prelude.Text
  set newValue GlobalNetwork {..}
    = GlobalNetwork {description = Prelude.pure newValue, ..}
instance Property "Tags" GlobalNetwork where
  type PropertyType "Tags" GlobalNetwork = [Tag]
  set newValue GlobalNetwork {..}
    = GlobalNetwork {tags = Prelude.pure newValue, ..}