module Stratosphere.AppMesh.VirtualNode.HttpTimeoutProperty (
        module Exports, HttpTimeoutProperty(..), mkHttpTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.DurationProperty as Exports
import Stratosphere.ResourceProperties
data HttpTimeoutProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-httptimeout.html>
    HttpTimeoutProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-httptimeout.html#cfn-appmesh-virtualnode-httptimeout-idle>
                         idle :: (Prelude.Maybe DurationProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-httptimeout.html#cfn-appmesh-virtualnode-httptimeout-perrequest>
                         perRequest :: (Prelude.Maybe DurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpTimeoutProperty :: HttpTimeoutProperty
mkHttpTimeoutProperty
  = HttpTimeoutProperty
      {haddock_workaround_ = (), idle = Prelude.Nothing,
       perRequest = Prelude.Nothing}
instance ToResourceProperties HttpTimeoutProperty where
  toResourceProperties HttpTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.HttpTimeout",
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