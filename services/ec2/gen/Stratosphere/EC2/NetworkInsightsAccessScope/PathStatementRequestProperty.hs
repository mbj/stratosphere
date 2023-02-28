module Stratosphere.EC2.NetworkInsightsAccessScope.PathStatementRequestProperty (
        module Exports, PathStatementRequestProperty(..),
        mkPathStatementRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAccessScope.PacketHeaderStatementRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAccessScope.ResourceStatementRequestProperty as Exports
import Stratosphere.ResourceProperties
data PathStatementRequestProperty
  = PathStatementRequestProperty {packetHeaderStatement :: (Prelude.Maybe PacketHeaderStatementRequestProperty),
                                  resourceStatement :: (Prelude.Maybe ResourceStatementRequestProperty)}
mkPathStatementRequestProperty :: PathStatementRequestProperty
mkPathStatementRequestProperty
  = PathStatementRequestProperty
      {packetHeaderStatement = Prelude.Nothing,
       resourceStatement = Prelude.Nothing}
instance ToResourceProperties PathStatementRequestProperty where
  toResourceProperties PathStatementRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.PathStatementRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PacketHeaderStatement"
                              Prelude.<$> packetHeaderStatement,
                            (JSON..=) "ResourceStatement" Prelude.<$> resourceStatement])}
instance JSON.ToJSON PathStatementRequestProperty where
  toJSON PathStatementRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PacketHeaderStatement"
                 Prelude.<$> packetHeaderStatement,
               (JSON..=) "ResourceStatement" Prelude.<$> resourceStatement]))
instance Property "PacketHeaderStatement" PathStatementRequestProperty where
  type PropertyType "PacketHeaderStatement" PathStatementRequestProperty = PacketHeaderStatementRequestProperty
  set newValue PathStatementRequestProperty {..}
    = PathStatementRequestProperty
        {packetHeaderStatement = Prelude.pure newValue, ..}
instance Property "ResourceStatement" PathStatementRequestProperty where
  type PropertyType "ResourceStatement" PathStatementRequestProperty = ResourceStatementRequestProperty
  set newValue PathStatementRequestProperty {..}
    = PathStatementRequestProperty
        {resourceStatement = Prelude.pure newValue, ..}