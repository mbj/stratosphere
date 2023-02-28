module Stratosphere.Lambda.EventSourceMapping.SelfManagedEventSourceProperty (
        module Exports, SelfManagedEventSourceProperty(..),
        mkSelfManagedEventSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.EndpointsProperty as Exports
import Stratosphere.ResourceProperties
data SelfManagedEventSourceProperty
  = SelfManagedEventSourceProperty {endpoints :: (Prelude.Maybe EndpointsProperty)}
mkSelfManagedEventSourceProperty :: SelfManagedEventSourceProperty
mkSelfManagedEventSourceProperty
  = SelfManagedEventSourceProperty {endpoints = Prelude.Nothing}
instance ToResourceProperties SelfManagedEventSourceProperty where
  toResourceProperties SelfManagedEventSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SelfManagedEventSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Endpoints" Prelude.<$> endpoints])}
instance JSON.ToJSON SelfManagedEventSourceProperty where
  toJSON SelfManagedEventSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Endpoints" Prelude.<$> endpoints]))
instance Property "Endpoints" SelfManagedEventSourceProperty where
  type PropertyType "Endpoints" SelfManagedEventSourceProperty = EndpointsProperty
  set newValue SelfManagedEventSourceProperty {}
    = SelfManagedEventSourceProperty
        {endpoints = Prelude.pure newValue, ..}