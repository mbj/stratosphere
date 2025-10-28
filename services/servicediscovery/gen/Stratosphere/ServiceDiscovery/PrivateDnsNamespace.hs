module Stratosphere.ServiceDiscovery.PrivateDnsNamespace (
        module Exports, PrivateDnsNamespace(..), mkPrivateDnsNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PrivateDnsNamespace.PropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PrivateDnsNamespace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html>
    PrivateDnsNamespace {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-properties>
                         properties :: (Prelude.Maybe PropertiesProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-tags>
                         tags :: (Prelude.Maybe [Tag]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-vpc>
                         vpc :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateDnsNamespace ::
  Value Prelude.Text -> Value Prelude.Text -> PrivateDnsNamespace
mkPrivateDnsNamespace name vpc
  = PrivateDnsNamespace
      {haddock_workaround_ = (), name = name, vpc = vpc,
       description = Prelude.Nothing, properties = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PrivateDnsNamespace where
  toResourceProperties PrivateDnsNamespace {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PrivateDnsNamespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Vpc" JSON..= vpc]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Properties" Prelude.<$> properties,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PrivateDnsNamespace where
  toJSON PrivateDnsNamespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Vpc" JSON..= vpc]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Properties" Prelude.<$> properties,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" PrivateDnsNamespace where
  type PropertyType "Description" PrivateDnsNamespace = Value Prelude.Text
  set newValue PrivateDnsNamespace {..}
    = PrivateDnsNamespace {description = Prelude.pure newValue, ..}
instance Property "Name" PrivateDnsNamespace where
  type PropertyType "Name" PrivateDnsNamespace = Value Prelude.Text
  set newValue PrivateDnsNamespace {..}
    = PrivateDnsNamespace {name = newValue, ..}
instance Property "Properties" PrivateDnsNamespace where
  type PropertyType "Properties" PrivateDnsNamespace = PropertiesProperty
  set newValue PrivateDnsNamespace {..}
    = PrivateDnsNamespace {properties = Prelude.pure newValue, ..}
instance Property "Tags" PrivateDnsNamespace where
  type PropertyType "Tags" PrivateDnsNamespace = [Tag]
  set newValue PrivateDnsNamespace {..}
    = PrivateDnsNamespace {tags = Prelude.pure newValue, ..}
instance Property "Vpc" PrivateDnsNamespace where
  type PropertyType "Vpc" PrivateDnsNamespace = Value Prelude.Text
  set newValue PrivateDnsNamespace {..}
    = PrivateDnsNamespace {vpc = newValue, ..}