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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedeventsource.html>
    SelfManagedEventSourceProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedeventsource.html#cfn-lambda-eventsourcemapping-selfmanagedeventsource-endpoints>
                                    endpoints :: (Prelude.Maybe EndpointsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedEventSourceProperty :: SelfManagedEventSourceProperty
mkSelfManagedEventSourceProperty
  = SelfManagedEventSourceProperty
      {haddock_workaround_ = (), endpoints = Prelude.Nothing}
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
  set newValue SelfManagedEventSourceProperty {..}
    = SelfManagedEventSourceProperty
        {endpoints = Prelude.pure newValue, ..}