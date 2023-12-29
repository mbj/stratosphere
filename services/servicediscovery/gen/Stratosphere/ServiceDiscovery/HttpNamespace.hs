module Stratosphere.ServiceDiscovery.HttpNamespace (
        HttpNamespace(..), mkHttpNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data HttpNamespace
  = HttpNamespace {description :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpNamespace :: Value Prelude.Text -> HttpNamespace
mkHttpNamespace name
  = HttpNamespace
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties HttpNamespace where
  toResourceProperties HttpNamespace {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::HttpNamespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON HttpNamespace where
  toJSON HttpNamespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" HttpNamespace where
  type PropertyType "Description" HttpNamespace = Value Prelude.Text
  set newValue HttpNamespace {..}
    = HttpNamespace {description = Prelude.pure newValue, ..}
instance Property "Name" HttpNamespace where
  type PropertyType "Name" HttpNamespace = Value Prelude.Text
  set newValue HttpNamespace {..}
    = HttpNamespace {name = newValue, ..}
instance Property "Tags" HttpNamespace where
  type PropertyType "Tags" HttpNamespace = [Tag]
  set newValue HttpNamespace {..}
    = HttpNamespace {tags = Prelude.pure newValue, ..}