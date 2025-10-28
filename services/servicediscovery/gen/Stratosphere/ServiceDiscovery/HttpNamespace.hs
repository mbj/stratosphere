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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html>
    HttpNamespace {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpNamespace :: Value Prelude.Text -> HttpNamespace
mkHttpNamespace name
  = HttpNamespace
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
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