module Stratosphere.AppMesh.Route.HttpTimeoutProperty (
        module Exports, HttpTimeoutProperty(..), mkHttpTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.DurationProperty as Exports
import Stratosphere.ResourceProperties
data HttpTimeoutProperty
  = HttpTimeoutProperty {idle :: (Prelude.Maybe DurationProperty),
                         perRequest :: (Prelude.Maybe DurationProperty)}
mkHttpTimeoutProperty :: HttpTimeoutProperty
mkHttpTimeoutProperty
  = HttpTimeoutProperty
      {idle = Prelude.Nothing, perRequest = Prelude.Nothing}
instance ToResourceProperties HttpTimeoutProperty where
  toResourceProperties HttpTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpTimeout",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Idle" Prelude.<$> idle,
                            (JSON..=) "PerRequest" Prelude.<$> perRequest])}
instance JSON.ToJSON HttpTimeoutProperty where
  toJSON HttpTimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Idle" Prelude.<$> idle,
               (JSON..=) "PerRequest" Prelude.<$> perRequest]))
instance Property "Idle" HttpTimeoutProperty where
  type PropertyType "Idle" HttpTimeoutProperty = DurationProperty
  set newValue HttpTimeoutProperty {..}
    = HttpTimeoutProperty {idle = Prelude.pure newValue, ..}
instance Property "PerRequest" HttpTimeoutProperty where
  type PropertyType "PerRequest" HttpTimeoutProperty = DurationProperty
  set newValue HttpTimeoutProperty {..}
    = HttpTimeoutProperty {perRequest = Prelude.pure newValue, ..}