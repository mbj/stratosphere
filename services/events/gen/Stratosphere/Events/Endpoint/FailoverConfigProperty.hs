module Stratosphere.Events.Endpoint.FailoverConfigProperty (
        module Exports, FailoverConfigProperty(..),
        mkFailoverConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Endpoint.PrimaryProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Endpoint.SecondaryProperty as Exports
import Stratosphere.ResourceProperties
data FailoverConfigProperty
  = FailoverConfigProperty {primary :: PrimaryProperty,
                            secondary :: SecondaryProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailoverConfigProperty ::
  PrimaryProperty -> SecondaryProperty -> FailoverConfigProperty
mkFailoverConfigProperty primary secondary
  = FailoverConfigProperty {primary = primary, secondary = secondary}
instance ToResourceProperties FailoverConfigProperty where
  toResourceProperties FailoverConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.FailoverConfig",
         supportsTags = Prelude.False,
         properties = ["Primary" JSON..= primary,
                       "Secondary" JSON..= secondary]}
instance JSON.ToJSON FailoverConfigProperty where
  toJSON FailoverConfigProperty {..}
    = JSON.object
        ["Primary" JSON..= primary, "Secondary" JSON..= secondary]
instance Property "Primary" FailoverConfigProperty where
  type PropertyType "Primary" FailoverConfigProperty = PrimaryProperty
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty {primary = newValue, ..}
instance Property "Secondary" FailoverConfigProperty where
  type PropertyType "Secondary" FailoverConfigProperty = SecondaryProperty
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty {secondary = newValue, ..}