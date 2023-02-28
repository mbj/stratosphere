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
  = PrivateDnsNamespace {description :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Value Prelude.Text),
                         properties :: (Prelude.Maybe PropertiesProperty),
                         tags :: (Prelude.Maybe [Tag]),
                         vpc :: (Value Prelude.Text)}
mkPrivateDnsNamespace ::
  Value Prelude.Text -> Value Prelude.Text -> PrivateDnsNamespace
mkPrivateDnsNamespace name vpc
  = PrivateDnsNamespace
      {name = name, vpc = vpc, description = Prelude.Nothing,
       properties = Prelude.Nothing, tags = Prelude.Nothing}
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