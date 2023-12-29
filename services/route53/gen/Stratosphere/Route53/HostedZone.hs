module Stratosphere.Route53.HostedZone (
        module Exports, HostedZone(..), mkHostedZone
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.HostedZone.HostedZoneConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.HostedZone.HostedZoneTagProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.HostedZone.QueryLoggingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.HostedZone.VPCProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostedZone
  = HostedZone {hostedZoneConfig :: (Prelude.Maybe HostedZoneConfigProperty),
                hostedZoneTags :: (Prelude.Maybe [HostedZoneTagProperty]),
                name :: (Prelude.Maybe (Value Prelude.Text)),
                queryLoggingConfig :: (Prelude.Maybe QueryLoggingConfigProperty),
                vPCs :: (Prelude.Maybe [VPCProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostedZone :: HostedZone
mkHostedZone
  = HostedZone
      {hostedZoneConfig = Prelude.Nothing,
       hostedZoneTags = Prelude.Nothing, name = Prelude.Nothing,
       queryLoggingConfig = Prelude.Nothing, vPCs = Prelude.Nothing}
instance ToResourceProperties HostedZone where
  toResourceProperties HostedZone {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HostedZoneConfig" Prelude.<$> hostedZoneConfig,
                            (JSON..=) "HostedZoneTags" Prelude.<$> hostedZoneTags,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "QueryLoggingConfig" Prelude.<$> queryLoggingConfig,
                            (JSON..=) "VPCs" Prelude.<$> vPCs])}
instance JSON.ToJSON HostedZone where
  toJSON HostedZone {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HostedZoneConfig" Prelude.<$> hostedZoneConfig,
               (JSON..=) "HostedZoneTags" Prelude.<$> hostedZoneTags,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "QueryLoggingConfig" Prelude.<$> queryLoggingConfig,
               (JSON..=) "VPCs" Prelude.<$> vPCs]))
instance Property "HostedZoneConfig" HostedZone where
  type PropertyType "HostedZoneConfig" HostedZone = HostedZoneConfigProperty
  set newValue HostedZone {..}
    = HostedZone {hostedZoneConfig = Prelude.pure newValue, ..}
instance Property "HostedZoneTags" HostedZone where
  type PropertyType "HostedZoneTags" HostedZone = [HostedZoneTagProperty]
  set newValue HostedZone {..}
    = HostedZone {hostedZoneTags = Prelude.pure newValue, ..}
instance Property "Name" HostedZone where
  type PropertyType "Name" HostedZone = Value Prelude.Text
  set newValue HostedZone {..}
    = HostedZone {name = Prelude.pure newValue, ..}
instance Property "QueryLoggingConfig" HostedZone where
  type PropertyType "QueryLoggingConfig" HostedZone = QueryLoggingConfigProperty
  set newValue HostedZone {..}
    = HostedZone {queryLoggingConfig = Prelude.pure newValue, ..}
instance Property "VPCs" HostedZone where
  type PropertyType "VPCs" HostedZone = [VPCProperty]
  set newValue HostedZone {..}
    = HostedZone {vPCs = Prelude.pure newValue, ..}