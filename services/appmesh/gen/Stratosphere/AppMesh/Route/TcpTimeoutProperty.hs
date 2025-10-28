module Stratosphere.AppMesh.Route.TcpTimeoutProperty (
        module Exports, TcpTimeoutProperty(..), mkTcpTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.DurationProperty as Exports
import Stratosphere.ResourceProperties
data TcpTimeoutProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcptimeout.html>
    TcpTimeoutProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcptimeout.html#cfn-appmesh-route-tcptimeout-idle>
                        idle :: (Prelude.Maybe DurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTcpTimeoutProperty :: TcpTimeoutProperty
mkTcpTimeoutProperty
  = TcpTimeoutProperty
      {haddock_workaround_ = (), idle = Prelude.Nothing}
instance ToResourceProperties TcpTimeoutProperty where
  toResourceProperties TcpTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.TcpTimeout",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Idle" Prelude.<$> idle])}
instance JSON.ToJSON TcpTimeoutProperty where
  toJSON TcpTimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Idle" Prelude.<$> idle]))
instance Property "Idle" TcpTimeoutProperty where
  type PropertyType "Idle" TcpTimeoutProperty = DurationProperty
  set newValue TcpTimeoutProperty {..}
    = TcpTimeoutProperty {idle = Prelude.pure newValue, ..}