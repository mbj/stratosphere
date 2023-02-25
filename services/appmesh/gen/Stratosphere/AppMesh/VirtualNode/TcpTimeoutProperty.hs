module Stratosphere.AppMesh.VirtualNode.TcpTimeoutProperty (
        module Exports, TcpTimeoutProperty(..), mkTcpTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.DurationProperty as Exports
import Stratosphere.ResourceProperties
data TcpTimeoutProperty
  = TcpTimeoutProperty {idle :: (Prelude.Maybe DurationProperty)}
mkTcpTimeoutProperty :: TcpTimeoutProperty
mkTcpTimeoutProperty = TcpTimeoutProperty {idle = Prelude.Nothing}
instance ToResourceProperties TcpTimeoutProperty where
  toResourceProperties TcpTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TcpTimeout",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Idle" Prelude.<$> idle])}
instance JSON.ToJSON TcpTimeoutProperty where
  toJSON TcpTimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Idle" Prelude.<$> idle]))
instance Property "Idle" TcpTimeoutProperty where
  type PropertyType "Idle" TcpTimeoutProperty = DurationProperty
  set newValue TcpTimeoutProperty {}
    = TcpTimeoutProperty {idle = Prelude.pure newValue, ..}