module Stratosphere.ServiceDiscovery.PublicDnsNamespace (
        module Exports, PublicDnsNamespace(..), mkPublicDnsNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PublicDnsNamespace.PropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PublicDnsNamespace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html>
    PublicDnsNamespace {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-properties>
                        properties :: (Prelude.Maybe PropertiesProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicDnsNamespace :: Value Prelude.Text -> PublicDnsNamespace
mkPublicDnsNamespace name
  = PublicDnsNamespace
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, properties = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PublicDnsNamespace where
  toResourceProperties PublicDnsNamespace {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PublicDnsNamespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Properties" Prelude.<$> properties,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PublicDnsNamespace where
  toJSON PublicDnsNamespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Properties" Prelude.<$> properties,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" PublicDnsNamespace where
  type PropertyType "Description" PublicDnsNamespace = Value Prelude.Text
  set newValue PublicDnsNamespace {..}
    = PublicDnsNamespace {description = Prelude.pure newValue, ..}
instance Property "Name" PublicDnsNamespace where
  type PropertyType "Name" PublicDnsNamespace = Value Prelude.Text
  set newValue PublicDnsNamespace {..}
    = PublicDnsNamespace {name = newValue, ..}
instance Property "Properties" PublicDnsNamespace where
  type PropertyType "Properties" PublicDnsNamespace = PropertiesProperty
  set newValue PublicDnsNamespace {..}
    = PublicDnsNamespace {properties = Prelude.pure newValue, ..}
instance Property "Tags" PublicDnsNamespace where
  type PropertyType "Tags" PublicDnsNamespace = [Tag]
  set newValue PublicDnsNamespace {..}
    = PublicDnsNamespace {tags = Prelude.pure newValue, ..}